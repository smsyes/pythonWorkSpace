import pymel.core as pm

sel = pm.ls(sl=1)
num_ = len(sel[:-1])

lerp_ = pm.createNode('remapValue', n='{}_lerp_rmv'.format(sel[0].name()))
lerp_.inputMax.set(num_)
sel[-1].curlStartPostion >> lerp_.value[0].value_Position
sel[-1].curlEndPosition >> lerp_.value[1].value_Position
sel[-1].curlInterpolation >> lerp_.value[0].value_Interp

for i,item in enumerate(sel[:-1]):
    profile_ = pm.createNode('remapValue', n='{0}_lerp_profile_{1}_rmv'.format(sel[-1].name(),i))
    rvs_ = pm.createNode('reverse', n='{0}_lerp_{1}_rvs'.format(sel[-1].name(),i))
    mult_ = pm.createNode('multiplyDivide', n='{0}_lerp_{1}_md'.format(sel[-1].name(),i))
    ad_ = pm.createNode('addDoubleLinear', n='{0}_lerp_{1}_al'.format(sel[-1].name(),i))
    ml_ = pm.createNode('multDoubleLinear', n='{0}_lerp_{1}_ml'.format(sel[-1].name(),i))
    
    profile_.inputMax.set(num_)
    profile_.inputValue.set(i)
    lerp_.value[0].value_Position >> profile_.value[0].value_Position
    lerp_.value[1].value_Position >> profile_.value[1].value_Position
    lerp_.value[0].value_Interp >> profile_.value[0].value_Interp
    profile_.outValue >> rvs_.input.inputX
    sel[-1].curlStart >> mult_.input1.input1X
    sel[-1].curlEnd >> mult_.input1.input1Y
    rvs_.outputX >> mult_.input2.input2X
    profile_.outValue >> mult_.input2.input2Y
    mult_.outputX >> ad_.input1
    mult_.outputY >> ad_.input2
    ml_.input2.set(2)
    ad_.output >> ml_.input1
    ad_.output >> item.ty
    ml_.output >> item.rz
    
    