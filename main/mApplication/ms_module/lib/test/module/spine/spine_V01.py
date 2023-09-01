import maya.cmds as cmds
from collections import OrderedDict
import string
import os
import sys

global module_path
module_path = os.path.split(os.path.realpath('D:\maya\script\ms_module\lib\m_lib'))[0]
if not module_path in sys.path:
    sys.path.append(module_path)

from m_lib import _ctl
from m_lib import _pole
from m_lib import _dist

reload(_ctl)
reload(_pole)
reload(_dist)

'''Class Descriptions.
Fit mode with rear rigging and position correction.
IK and FK mixing system and joint tree structure attached to the curve,
A partial twist adjustment is added by setting the twist Uvalue.
'''

# instance method
#__________________________________________________________________________________________
# create base curve
def spine_crv(num_, cvInteval, target):
    #base info
    curveDG = 3
    curveSpan = num_ - curveDG
    curvePoints = num_ + curveSpan
    curveCV = curveDG + curveSpan -1
    curveDist = curveCV * cvInteval
    jnt_num = num_ + 1
    space_pos = [0,5,0]
    if target:
        space_pos = cmds.xform(target, q=1, ws=1, rp=1 )
        space_rot = cmds.xform(target, q=1, ws=1, ro=1 )
    # create bezier curve
    pos_list = []
    for subt_ in range(num_):
        intY = subt_ * 4
        pos_ = (space_pos[0],int(intY)+space_pos[1],space_pos[2])
        pos_list.append(pos_)
    spine_curve = cmds.curve(bez = 1, n = 'spine_crv', p = pos_list, d = curveDG)
    print 'Create Base Crv =', spine_curve
    return spine_curve, curvePoints

# connect Attr 
def cntAttr_(item, out_, in_):
    item_ = item[0]
    target_ = item[1]
    attrs_ = [out_, in_]
    num_ = 0
    for i in attrs_:
        if str(type(i)) == "<type 'tuple'>":
            listing_ = []
            for j in i:
                listing_.append(j)
            attrs_[num_] = listing_
            print '{} >> {}'.format('tuple','list')
        elif str(type(i)) == "<type 'list'>":
            print 'list'
            pass
        else:
            print 'single'
            attrs_ = [[out_],[in_]]
        num_ += 1
    for i in range(len(attrs_[0])):
        out_ = '{}.{}'.format(item_, attrs_[0][i])
        in_ = '{}.{}'.format(target_, attrs_[1][i])
        print '{} >> {}'.format(out_,in_)
        cmds.connectAttr(out_, in_)

# matrix connect
def matrix_(name_, item, target, t = None, r = None, s = None):
    inAttr = []
    outAttr = []
    dmtx_ = cmds.shadingNode('decomposeMatrix', au = 1, 
            n = '{}_DMTX'.format(name_))
    if len(item) >1:
        mat_ = cmds.shadingNode('multMatrix', au = 1,
                n = '{}_MAT'.format(name_))
        plurality = OrderedDict()
        plurality = {'item':[mat_,item[0],item[1]], 'target':[dmtx_,mat_,mat_], 
            'out':['o','wm','wim'], 'in':['imat','i[0]','i[1]']}
        for i in range(len(plurality['item'])):
            cntAttr_([plurality['item'][i],plurality['target'][i]],
                        plurality['out'][i],plurality['in'][i])
            print '{} >> {}'.format(plurality['item'][i],plurality['target'][i])
    if len(item) == 1:
        cntAttr_([item[0], dmtx_], 'wm', 'imat')
        print '{} >> {}'.format(item[0], dmtx_)
    if t:
        cntAttr_([dmtx_, target], 'ot',t)
        print '{}.{} >> {}.{}'.format(dmtx_,'ot', target, t)
    if r:
        cntAttr_([dmtx_, target], 'or',r)
        print '{}.{} >> {}.{}'.format(dmtx_,'or', target, r)
    if s:
        cntAttr_([dmtx_, target], 'os',s)
        print '{}.{} >> {}.{}'.format(dmtx_,'os', target, s)
    return dmtx_
    

# create control            
def ctl_(name, type, offset, radius):
    ctl_list = []
    shape_ = _ctl.crvShape_(_name = name,_type = type,_offset = offset,_radius=radius)
    ctl_, ctl_os = shape_.create_shape()
    ctl_list.append(ctl_)
    ctl_list.append(ctl_os)
    cmds.select(cl = 1)
    print 'control and offset =', ctl_list
    return ctl_list

# get xform, set xform    
def get_set(item, target, frzz = None):
    pos_ = cmds.xform(item, q=1, ws=1, rp=1 )
    rot_ = cmds.xform(item, q=1, ws=1, ro=1 )
    cmds.xform(target, r = 1, t = pos_)
    cmds.xform(target, r = 1, ro = rot_)
    if frzz:
        cmds.makeIdentity(target, a = True, t=1, r=1, s=1, n=0)
    else:
        pass
    print '{} Trnas >> {} Trans'.format(item,target)
    
# object offset grouping
def offset(object_, num_ = None):
    check = cmds.ls(object_)   
    offsets_ = []
    if not num_:
        num_ == 1
    if num_ > 0:
        for i in range(num_):
            if num_ >1:
                os_name = '{}_{}_{}'.format(string.ascii_uppercase[i],
                                'space')
            if num_ ==1:
                os_name = 'space'
            name_ = '{}_{}'.format(object_, os_name)
            offset_ = cmds.createNode('transform', n = name_)
            offsets_.append(offset_)
            if not check:
                pass
            else:
                get_set(object_, offset_)
            if i > 0:
                cmds.parent(offset_, offsets_[i-1])
        if not check:
            pass
        else:
            if cmds.listRelatives(object_, p = 1):
                parent_ = cmds.listRelatives(object_, p = 1)
                cmds.parent(offsets_[0], parent_)
            cmds.parent(object_, offsets_[-1])
    return offsets_[0]

# padding string
def padding_(type_, num_):
    if type_ == 'a':
        pad_ = string.ascii_uppercase[num_]
    if type_ == '0':
        pad_ = str(num_).zfill(3)
    return pad_
    
# method
#__________________________________________________________________________________________
# create space
def space_set(crv_):
    space_dict = OrderedDict()
    space_name = ['component', 'input', 'fit', 'ik_ctl', 'ik_spine', 'on_curve', 'fk', 
                'fk_scale_init', 'fk_joint', 'fk_ctl', 'output', 'end_plug']
    for i,object in enumerate(space_name):
        space_ = offset(object, num_ = 1)
        space_dict[space_] = space_
    space_loc = cmds.spaceLocator(n = 'parent_space_LOC')
    cmds.parent(space_loc, space_dict.values()[1])
    cmds.parent(crv_, space_dict.values()[4])
    parent_dict = {'target':[11,2,3,5,7,8,9,1,4,6,10], 'item':[10,1,4,6,6,6,6,0,0,0,0]}
    for i,number_ in enumerate(parent_dict['target']):
        cmds.parent(space_dict.values()[number_], 
                space_dict.values()[parent_dict['item'][i]])
    
    matrix_('fit', space_loc, space_dict.values()[2], t='t',r='r',s='s')
    ik_ctl_mat = matrix_('ctl', space_loc, space_dict.values()[3], t='t',r='r',s='s')
    matrix_('fk_joint', space_loc, space_dict.values()[8], t='t',r='r',s='s')
    matrix_('fk_control', space_loc, space_dict.values()[9], t='t',r='r',s='s')
    
    return space_dict, space_loc, ik_ctl_mat
    
#__________________________________________________________________________________________
# part naming
def part_(num_):
    part_dict = OrderedDict()
    num_range = range(num_)
    part_name = ['spine', 'chest']
    half_ = int(num_/2)
    number = 0
    for i in num_range:
        if i == num_range[0]:
            part_ = part_name[0]
        if i in num_range[1:half_]:
            part_ = '{}_sub_{}'.format(part_name[0], padding_('0', number))
            number +=1
        if i in num_range[half_:-1]:
            part_ = '{}_sub_{}'.format(part_name[1], padding_('0', number))
            number +=1
        if i == num_range[-1]:
            part_ = part_name[1]
        part_dict[part_] = part_
    return part_dict, half_
    
#__________________________________________________________________________________________
# part fit locator, ik control
def fit_set(num_, half_, part_dict, space_dict, crv_, radius = None):
    ik_ctl_dict = OrderedDict()
    fit_loc_dict = OrderedDict()
    for i,object in enumerate(part_dict.keys()):
        point_pos = cmds.getAttr('{}.cp[{}]'.format(crv_,i))[0]
        fit_loc = cmds.spaceLocator(n = 'fit_{}'.format(object))
        fit_loc_dict[fit_loc[0]] = fit_loc
        cmds.move(point_pos[0], point_pos[1], point_pos[2], fit_loc[0])
        ik_ctl = ctl_(object, 'octah', 1,1*radius)
        ik_ctl_dict[object] = ik_ctl[0],ik_ctl[1]
        matrix_('fit_{}_control'.format(ik_ctl[0]), [ik_ctl[0]], crv_, t='cp[{}]'.format(i))
        if i > 0 and i < range(num_)[-1]:
            cntAttr_([fit_loc[0], ik_ctl[1]], 't', 't')
    for i,object in enumerate(fit_loc_dict.keys()):
        if i == 0:
            cmds.parent(object, space_dict.values()[2])
        if i > 0 and i < half_:
            cmds.parent(object, fit_loc_dict.keys()[0])
        if i >= half_ and i < range(num_)[-1]:
            cmds.parent(object, fit_loc_dict.keys()[-1])
        if i == range(num_)[-1]:
            cmds.parent(object, space_dict.values()[2])
    return ik_ctl_dict, fit_loc_dict
    
#__________________________________________________________________________________________
# base naming
def base_name(points):
    base_name_dict = OrderedDict()
    points_range = range(points)
    for i in points_range:
        if i != range(points)[-1]:
            _name = '{}{}'.format('spine', padding_('a', i))
        else:
            _name = 'chest'
        base_name_dict[_name] = _name
    return base_name_dict
    
#__________________________________________________________________________________________
# spine param, init, fk_local, twist_space, fk joint, ctl set
def spine_base(num_, crv_, points, base_name_dict, space_dict, space_loc, radius = None):
    # main param multiplyDivide node setting
    add_ = 0
    if num_ > 4:
        add_ = num_ - 4
    M_param_set = {'op':2, 'i1x':1, 'i2x':num_ + add_}
    M_param_ = cmds.createNode('multiplyDivide', n = 'spine_param_MULT')
    for i in M_param_set.keys():
        cmds.setAttr('{}.{}'.format(M_param_, i), M_param_set[i])
    
    # param create and connect setting
    param_dict = OrderedDict()
    init_list = []
    fk_local_dict = OrderedDict()
    combine_dict = OrderedDict()
    vec_dic = OrderedDict()
    number = 0
    for i,object in enumerate(base_name_dict.keys()):
        spine_param_ = cmds.createNode('multiplyDivide', 
                        n = '{}_param_MULT'.format(object))
        param_dict[object] = spine_param_
        poci_ = cmds.createNode('pointOnCurveInfo', n = '{}_poci'.format(object))
        init_space = offset('init_{}'.format(object), num_=1)
        twist_space = offset('twist_{}'.format(object), num_=1)
        twist_combine = cmds.createNode('plusMinusAverage', 
                        n = '{}_twist_PLS'.format(object))
        combine_dict[object] = twist_combine
        fk_ctl = ctl_('FK_{}_CTL'.format(object),'circle',1,1.5*radius)
        JNT_os = offset('FK_{}_JNT'.format(object), num_ = 1)
        if i >0:
            cmds.parent(JNT_os, JNT_)
            cmds.parent(fk_ctl[1], fk_control)
            number +=1
        cmds.select(JNT_os)
        JNT_ = cmds.joint(n = 'FK_{}_JNT'.format(object))
        fk_control = fk_ctl[0]
        fk_local_init_ = offset('FK_{}_local_init'.format(object), num_ = 1)
        fk_local_dict[object] = fk_local_init_
        init_list.append(init_space)
        cmds.parent(twist_space, init_space)
        cmds.parent(init_space, space_dict.values()[5])
        cmds.parent(fk_local_init_, space_dict.values()[7])
        cmds.setAttr('{}.{}'.format(spine_param_, 'i2x'), i)
        cmds.setAttr('{}.{}'.format(poci_, 'turnOnPercentage'), 1)
        cntAttr_([poci_,init_space] , 'p', 't')
        cntAttr_([M_param_,spine_param_] , 'ox', 'i1x')
        cntAttr_([crv_,poci_] , 'ws', 'ic')
        cntAttr_([spine_param_,poci_] , 'ox', 'parameter')
        cntAttr_([fk_ctl[0],JNT_], 'r', 'r')
        cntAttr_([twist_combine,twist_space], 'o1', 'ry')
        if object == base_name_dict.keys()[-1]:
            output_end_space = offset('output_{}_end'.format(object), num_=1)
            cntAttr_([poci_,output_end_space] , 'p', 't')
            cmds.parent(output_end_space, space_dict.values()[5])
            init_list.append(output_end_space)
        initDMTX = matrix_('fk_{}_scaleSpaceMat'.format(object),[twist_space, 
                    space_loc[0]],fk_local_init_, t = 't', r = 'r')
        if i == 0:
            vec_dic['st'] = init_space
            cntAttr_([initDMTX, JNT_os], ['ot', 'or'], ['t','r'])
            cntAttr_([initDMTX, fk_ctl[1]], ['ot', 'or'], ['t','r'])
            cmds.parent(JNT_os, space_dict.values()[8])
            cmds.parent(fk_ctl[1], space_dict.values()[9])
        if i == points/2:
            vec_dic['md'] = init_space
            matrix_(JNT_, [JNT_], space_dict.values()[11], t = 't', r = 'r')
        if i >0:
            fk_local_mat = matrix_('fk_{}_localMat'.format(object), [fk_local_init_, 
                            fk_local_dict.values()[i-1]], JNT_os, t = 't', r = 'r')
            cntAttr_([fk_local_mat, fk_ctl[1]], ['ot','or'], ['t','r'])
        if object == base_name_dict.keys()[-1]:
            vec_dic['en'] = init_space        
    return param_dict, combine_dict, vec_dic, init_list
            
#__________________________________________________________________________________________
# main IK control and twist contorl
def twist_set(half_, crv_, part_dict, fit_loc_dict, ik_ctl_dict, space_dict, ik_ctl_mat, 
                base_name_dict, param_dict, combine_dict, radius = None):
    m_ik_ctl_dict = OrderedDict()
    part_st_en = [part_dict.keys()[0], part_dict.keys()[-1]]
    for i,object in enumerate(part_st_en):
        ik_m_ctl = ctl_('M_{}'.format(object),'circlet01',1,1*radius)
        m_ik_ctl_dict[object] = ik_m_ctl[0], ik_m_ctl[1]
        cmds.select(fit_loc_dict.keys()[i])
        twist_ctl = ctl_('twist_{}'.format(object),'circlet02',1,0.8*radius)
        poci_ = cmds.createNode('pointOnCurveInfo', n = 'twist_{}_poci'.format(object))
        cmds.setAttr('{}.{}'.format(poci_, 'turnOnPercentage'), 1)
        cmds.addAttr(twist_ctl[0],ln='end_uvalue',at='float',k=1,max=1,min=0,dv=i)
        cntAttr_([crv_,poci_] , 'ws', 'ic')
        cntAttr_([poci_,twist_ctl[1]] , 'p', 't')
        cntAttr_([twist_ctl[0],poci_] , 'end_uvalue', 'parameter')
        for k,object_ in enumerate(ik_ctl_dict.values()):
            if i ==0:
                if k < half_:
                    cmds.parent(object_[1], ik_m_ctl[0])
            if i ==1:
                if k >= half_:
                    cmds.parent(object_[1], ik_m_ctl[0])
        cmds.parent(ik_m_ctl[1], space_dict.values()[3])
        cmds.parent(twist_ctl[1], space_dict.values()[4])
        if i == 0:
            number_ = 0
        if i == 1:
            number_ = -1
        matrix_('{}_localMat'.format(ik_m_ctl[0]), [fit_loc_dict.keys()[number_], 
                space_dict.values()[2]], ik_m_ctl[1], t='t')
        matrix_('{}_rotMat'.format(ik_m_ctl[0]), [ik_m_ctl[0]], twist_ctl[1], r='r')
        cntAttr_([ik_ctl_mat, twist_ctl[1]], 'os', 's')  
        for j,name in enumerate(base_name_dict.keys()):
            twist_remap_ = cmds.createNode('remapValue', 
                    n = '{}_{}_twist_RMAP'.format(object, name))
            twist_mult_ = cmds.createNode('multiplyDivide', 
                    n = '{}_{}_twist_MULT'.format(object, name))
            cntAttr_([param_dict.values()[j],twist_remap_] , 'ox', 'i')
            cntAttr_([twist_remap_,twist_mult_] , 'ov', 'i2x')
            cntAttr_([ik_m_ctl[0], twist_mult_], 'ry', 'i1x')
            if i == 0:
                remap_in_ = 'imn'
                combine_in_ = 'i1[0]'
                cmds.setAttr('{}.{}'.format(twist_remap_,'omn'), 1)
                cmds.setAttr('{}.{}'.format(twist_remap_,'omx'), 0)
            if i == 1:
                remap_in_ = 'imx'
                combine_in_ = 'i1[1]'
                cmds.setAttr('{}.{}'.format(twist_remap_,'omn'), 0)
                cmds.setAttr('{}.{}'.format(twist_remap_,'omx'), 1)
            cntAttr_([twist_ctl[0],twist_remap_] , 'end_uvalue', remap_in_)
            cntAttr_([twist_mult_,combine_dict.values()[j]] , 'ox', combine_in_)
    
    return m_ik_ctl_dict

#__________________________________________________________________________________________
# up vector setting
def twist_upVec_set(vec_dic, m_ik_ctl_dict, init_list, radius = None):
    distance_ = _dist.dist_(vec_dic['st'], vec_dic['en'])              
    upVec_ctl = ctl_('fk_init_upVec','trianglet',1,1.5*radius)
    cmds.setAttr('{}.{}'.format(upVec_ctl[1],'ry'),-90)
    cmds.select(upVec_ctl[1])
    cmds.move(distance_*-1, z = True)
    get_set(vec_dic['md'], upVec_ctl[1])
    cmds.parent(upVec_ctl[1], m_ik_ctl_dict.values()[0][1])
    
    init_list.reverse()
    for i, name in enumerate(init_list[:-1]):
        target_ = init_list[i+1]
        aim_ = (0,1,0)
        if i == 0:
            target_ = init_list[i+2]
            aim_ = (0,-1,0)
        if i == 2:
            cmds.aimConstraint(name, target_, aim = aim_, u = (0,0,-1), wut = 'object', 
                    wuo = upVec_ctl[0], mo = 1)
            target_ = init_list[i-1]
        if i == 1:
            pass
        else:
            cmds.aimConstraint(name, target_, aim = aim_, u = (0,0,-1), wut = 'object', 
                    wuo = upVec_ctl[0], mo = 1)
    return upVec_ctl
    
#__________________________________________________________________________________________
# user attr set
def user_attr_set(space_dict, ik_ctl_dict, m_ik_ctl_dict):
    attr_dic = OrderedDict()
    attr_dic['fit_vis'] = space_dict.values()[1]
    attr_dic['fk_vis'] = space_dict.values()[9]
    attr_dic['sub_ctl_vis'] = ik_ctl_dict.values()
    #______________________________________________________________________________________
    # user add attr
    user_set = m_ik_ctl_dict.values()[0][0]
    for i, name in enumerate(attr_dic.keys()):
        dv_ = 1
        if i != 0:
            dv_ = 0
        cmds.select(user_set)
        cmds.addAttr(ln = name, at = 'bool', dv = dv_, k = 1)
        if name == attr_dic.keys()[-1]:
            for j in ik_ctl_dict.values():
                cntAttr_([user_set,j[1]], name, 'v')
        else:
            cntAttr_([user_set,attr_dic[name]], name, 'v')

#__________________________________________________________________________________________
# spine rig create
def create_spine(num_, radius = None):
    if not radius:
        radius = 3
    sel = cmds.ls(sl = 1)
    crv_, points = spine_crv(num_, 4, sel)
    space_dict, space_loc, ik_ctl_mat = space_set(crv_)
    part_dict, half_ = part_(num_)
    ik_ctl_dict, fit_loc_dict = fit_set(num_, half_, part_dict, space_dict, crv_, radius)
    base_name_dict = base_name(points)
    param_dict, combine_dict, vec_dic, init_list = spine_base(num_, crv_, points, 
                                                    base_name_dict, space_dict, space_loc, 
                                                    radius)
    m_ik_ctl_dict = twist_set(half_, crv_, part_dict, fit_loc_dict, ik_ctl_dict, 
                    space_dict, ik_ctl_mat, base_name_dict, param_dict, combine_dict, 
                    radius)
    upVec_ctl = twist_upVec_set(vec_dic, m_ik_ctl_dict, init_list, radius)
    user_attr_set(space_dict, ik_ctl_dict, m_ik_ctl_dict)


# create_spine(num_,radius_), min number : 4, max number : 15
create_spine(15,3)






    
    