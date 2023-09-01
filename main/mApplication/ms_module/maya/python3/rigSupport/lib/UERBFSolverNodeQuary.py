import pymel.core as pm

def print_rbf_settings(rbf_node):
    line_ = '#'
    split_line = line_.rjust(80, '#')
    print(split_line)
    
    print('Node : ',rbf_node.name())
    
    mode_dict = {0:'Additive', 1:'Interpolative'}
    print('Mode : ',mode_dict[rbf_node.mode.get()])
    
    print('Radius : ',rbf_node.radius.get())
    
    print('Automatic Radius: ',rbf_node.automaticRadius.get())
    
    print('Weight Threshold: ',rbf_node.weightThreshold.get())
    
    distanceMethod_dict = {0:'Euclidean', 1:'Quaternion', 2:'SwingAngle', 3:'TwistAngle'}
    print('Distance Method : ',distanceMethod_dict[rbf_node.distanceMethod.get()])
    
    normalizeMethod_dict = {0:'OnlyNormalizeAboveOne', 1:'AlwaysNomalize', 2:'NoNomalize'}
    print('Function Type : ',normalizeMethod_dict[rbf_node.normalizeMethod.get()])
    
    functionType_dict = {0:'Gaussian', 1:'Exponential', 2:'Linear', 3:'Cubic', 4:'Quintic'}
    print('Function Type : ',functionType_dict[rbf_node.functionType.get()])
    
    twistAxis_dict = {0:'X-Axis', 1:'Y-Axis', 2:'Z-Axis'}
    print('Twist Axis : ',twistAxis_dict[rbf_node.twistAxis.get()])
    
    inputMode_dict = {0:'Translation', 1:'Rotation'}
    print('Input Mode : ',inputMode_dict[rbf_node.inputMode.get()])


rbf_nodes = pm.ls(type='UERBFSolverNode')
for rbf_node in rbf_nodes:
    print_rbf_settings(rbf_node)
