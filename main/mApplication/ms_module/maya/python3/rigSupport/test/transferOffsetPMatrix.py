import pymel.core as pm

def freezeOffset(list_):
    for i in list_:
        if i.type() == 'joint':
            jo_ = i.jointOrient.get()
            r_ = i.r.get()
            orient_ = jo_+r_
            i.r.set(orient_)
            i.jointOrient.set(0,0,0)
        matrix_ = i.getMatrix()
        i.offsetParentMatrix.set(matrix_)
        i.t.set((0,0,0))
        i.r.set((0,0,0))
        i.s.set((1,1,1))
        
sel = pm.ls(sl=1)
freezeOffset(sel)

