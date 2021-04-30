
def parent_(item_, target_):
    for i,object in enumerate(item_):
        '''Function || method descriptions.
        list parent func
        '''
        if len(target_) > 1:
            child = target_[i]
        if len(target_) == 1:
            child = target_[0]
        if len(item_) != len(target_):
            print "The number is not correct."
        cmds.parent(object, child)
        print "{} to {} parent".format(object, child)

item_ = cmds.ls(sl =1, fl =1)
target_ = cmds.ls(sl =1, fl =1)
    
parent_(item_, target_)