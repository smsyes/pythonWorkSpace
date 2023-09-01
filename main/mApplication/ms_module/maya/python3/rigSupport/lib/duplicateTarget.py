import pymel.core as pm

def getBlendshape(object_):
    return [i for i in object_.listHistory() if i.type() == 'blendShape']
        
def duplicateTarget(object, blendshape_):
    for bs in blendshape_:
        bs_ = pm.aliasAttr(bs, q=1)
        bs_ = list(set(bs_))
        bs_.sort()
        half = int(len(bs_)/2)
        bs_ = bs_[:half]
            
        for i,target in enumerate(bs_):
            bsAttr = bs.attr(target)
            value_ = []
            name_ = []
            inBValue_ = None
            try:
                inBName_ = []
                inBValue_ = bs.targetItemIndexList(bsAttr.index(),object.getShape())
                
                if inBValue_:
                    for v in inBValue_:
                        eval_ = 'bs'
                        eval_ += '.inbetweenInfoGroup[{0}]'.format(bsAttr.index())
                        eval_ += '.inbetweenInfo[{0}]'.format(v)
                        eval_ += '.inbetweenTargetName.get()'
                        inBName = eval(eval_)
                        if inBName != 'IB':
                            inBName_ += [inBName]
                            
                inBValue_ = [float(str(o)[1:])/1000 for o in inBValue_[:-1]]
            except Exception:
                pass
                
            if inBValue_ and len(inBValue_) > 0:
                value_ += inBValue_
                name_ += inBName_
            
            value_ += [1]
            name_ += [target]
            
            target_ = zip(name_, value_)
            print(name_, value_)
            
            for name, value in target_:
                try:
                    bsAttr.set(0)
                    bsAttr.set(value)
                    
                    if not pm.objExists(name):
                        target_ = pm.duplicate(object, n='{0}'.format(name), rr=1)
                        '''
                        # Write data in export target
                        if not pm.attributeQuery('weight', n=target_[0], ex=1):
                            target_[0].addAttr('weight', at='float', k=0, dv=value_)
                            target_[0].weight.set(cb=1)
                            
                        # Write parent info in export target
                        if 1 > value:
                            target_[0].addAttr('parent', dt='string', k=0)
                            target_[0].parent.set(str(name_[-1]), type='string', l=1)
                        '''
                        pm.select(cl=1)
                    else:
                        target_ = pm.duplicate(object, n='{0}Dup'.format(name), rr=1)
                    bsAttr.set(0)
    
                except Exception:
                    pass
    

sel = pm.ls(sl=1,fl=1,r=1)
object = sel[0]

blendshape_ = getBlendshape(object)
duplicateTarget(object, blendshape_)

