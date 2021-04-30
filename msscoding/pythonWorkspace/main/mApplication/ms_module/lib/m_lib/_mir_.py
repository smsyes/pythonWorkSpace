import maya.OpenMaya as om
import pymel.core as pm
import re

class set_(object):
    side_left=['l', 'L','left', 'Left']
    side_right=['r', 'R', 'right', 'Right']    
    axis_x='X'
    axis_y='Y'
    axis_z='Z'

    def __init__(self, list_, mrx=1, mry=0, mrz=0, fpx=0, fpy=0, fpz=0, 
                              frx=1, fry=0, frz=1, sl=None, sr=None, sel=None):
        if sl:
            self.side_left = sl
        if sr:
            self.side_left = sr

        if not isinstance(list_, list):
            list_=[list_]

        if isinstance(list_, list):
            transform_ = pm.nt.Transform
            constraint_ = pm.nt.Constraint

            list_=[pm.PyNode(item_) for item_ in list_]
            list_=filter(lambda o: isinstance(o, transform_) and not 
                                   isinstance(o, constraint_), list_)
        
        temp_dict={}
        count_ = 0
        if not sel:
            for i, object_ in enumerate(list_):
                opposite_ = self.get_opposite_object(object_)

                next_ = i + 1

                if next_ >= len(list_):
                    next_ = i


                if opposite_ and opposite_ != list_[next_]:
                    count_ +=1
                    temp_dict = self.set_mirror(object_, opposite_, temp_dict,
                                                mrx=mrx, mry=mry, mrz=mrz, 
                                                fpx=fpx, fpy=fpy, fpz=fpz, 
                                                frx=frx, fry=fry, frz=frz)
                
                elif opposite_ and opposite_ == list_[next_]:
                    count_ +=1              
                    opposite_ = list_.pop(next_)
                    temp_dict = self.set_mirror(object_, opposite_, temp_dict,
                                                mrx=mrx, mry=mry, mrz=mrz, 
                                                fpx=fpx, fpy=fpy, fpz=fpz, 
                                                frx=frx, fry=fry, frz=frz)

        if count_ == 0 or sel:
            opposite_ = list_[prev_]
            temp_dict = self.set_mirror(object_, opposite_, temp_dict,
                                        mrx=mrx, mry=mry, mrz=mrz, 
                                        fpx=fpx, fpy=fpy, fpz=fpz, 
                                        frx=frx, fry=fry, frz=frz)

        for object_, value_ in temp_dict.items():
            matrix_=self.set_matrix_list(value_.asMatrix())
            pm.xform(object_.__melobject__(), m=matrix_, ws=1)

    def set_mirror(self, object_, opposite_, dict_, mrx=1, mry=0, mrz=0, 
                                                    fpx=0, fpy=0, fpz=0, 
                                                    frx=1, fry=0, frz=1):

        matrix_ = object_.__apimfn__().transformation().asMatrix()
        matrix_ = object_.getMatrix(ws=1)
        matrix_ = self.get_mirror_matrix(matrix_, mrx=mrx, mry=mry, mrz=mrz, 
                                                  fpx=fpx, fpy=fpy, fpz=fpz, 
                                                  frx=frx, fry=fry, frz=frz)

        dict_[opposite_] = om.MTransformationMatrix(matrix_)
        self.get_user_attirbute(object_, opposite_)
        print 'Mirror : %s -> %s' % (object_, opposite_)

        return dict_

    def set_matrix_list(self, matrix_):
        matrix_=[matrix_(0, 0), matrix_(0, 1), matrix_(0, 2), matrix_(0, 3),
                 matrix_(1, 0), matrix_(1, 1), matrix_(1, 2), matrix_(1, 3),
                 matrix_(2, 0), matrix_(2, 1), matrix_(2, 2), matrix_(2, 3),
                 matrix_(3, 0), matrix_(3, 1), matrix_(3, 2), matrix_(3, 3)]

        return matrix_

    def set_matrix_axis(self, matrix_, axis_):
        flip_=om.MMatrix()
        matrix_value=None

        if axis_ == self.axis_x:
            matrix_value=[-1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]

        elif axis_ == self.axis_y:
            matrix_value=[1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1]

        elif axis_ == self.axis_z:
            matrix_value=[1, 0, 0, 0, 0, 1, 0, 0, 0, 0, -1, 0, 0, 0, 0, 1]

        if matrix_value:
            om.MScriptUtil.createMatrixFromList(matrix_value, flip_)

        matrix_=matrix_ * flip_

        return matrix_

    def set_matrix_pos(self, matrix_, axis_): 
        data_=self.set_matrix_list(matrix_)

        if axis_ == self.axis_x:
            data_[12] *= -1.0

        elif axis_ == self.axis_y:
            data_[13] *= -1.0

        elif axis == self.axis_z:
            data_[14] *= -1.0

        om.MScriptUtil.createMatrixFromList(data_, matrix_)

        return matrix_

    def set_matrix_rot(self, matrix_, axis_):
        data_=self.set_matrix_list(matrix_)

        if axis_ == self.axis_x:
            data_[0] *= -1.0
            data_[1] *= -1.0
            data_[2] *= -1.0

        elif axis_ == self.axis_y:
            data_[4] *= -1.0
            data_[5] *= -1.0
            data_[6] *= -1.0

        elif axis_ == self.axis_z:
            data_[8] *= -1.0
            data_[9] *= -1.0
            data_[10] *= -1.0

        om.MScriptUtil.createMatrixFromList(data_, matrix_)

        return matrix_

    def get_opposite_name(self, object_, s='_'):
        word_list=str(object_).split(s)
        temp_list=[]

        for i, word_ in enumerate(word_list):
            side_zip=zip(self.side_left, self.side_right)
            for side_left, side_right in side_zip:
                if word_ == side_left:
                    word_=side_right

                elif word_ == side_right:
                    word_=side_left

            temp_list.append(word_)


        object_mirror_name=s.join(temp_list)
        print object_mirror_name

        return object_mirror_name

    def get_opposite_object(self, object_):
        object_=pm.PyNode(str(object_))
        object_name=object_.name()

        object_mirror_name=self.get_opposite_name(object_name)


        if object_mirror_name is None:
            print 'No mrirror object : %s' % object_name
            return None


        if not pm.objExists(object_mirror_name):
            print 'No exist : %s' % object_mirror_name        
            return None

        return pm.PyNode(object_mirror_name)

    def get_mirror_matrix(self, matrix_, mrx=0, mry=0, mrz=0, 
                                         fpx=0, fpy=0, fpz=0,
                                         frx=0, fry=0, frz=0):
        if mrx:
            matrix_=self.set_matrix_axis(matrix_, self.axis_x)
        if mry:
            matrix_=self.set_matrix_axis(matrix_, self.axis_y)
        if mrz:
            matrix_=self.set_matrix_axis(matrix_, self.axis_z)

        if frx:
            matrix_=self.set_matrix_rot(matrix_, self.axis_x)
        if fry:
            matrix_=self.set_matrix_rot(matrix_, self.axis_y)
        if frz:
            matrix_=self.set_matrix_rot(matrix_, self.axis_z)

        if fpx:
            matrix_=self.set_matrix_pos(matrix_, self.axis_x)
        if fpy:
            matrix_=self.set_matrix_pos(matrix_, self.axis_y)
        if fpz:
            matrix_=self.set_matrix_pos(matrix_, self.axis_z)

        return matrix_

    def get_user_attirbute(self, object_, opposite_):
        object_name = str(object_)
        if pm.objExists(object_name):
            object_ = pm.PyNode(object_name)
            
            for attribute_ in object_.listAttr(ud=1):
                attribute_ = attribute_.split('.')[-1]

                if pm.attributeQuery(attribute_, n=opposite_, ex=1):
                    try:
                        value_ = object_.getAttr(attribute_)
                        opposite_.setAttr(attribute_, value_)
                    except:
                        pass