import maya.cmds as cmds

hierarchy = {
    'Sets':{
        'AllSet':[], 
        'AniControlSet':[], 
        'AniFBXSet':{
            'AniOutSet':[]
            },
        'AssetFBX_Set':{
            'acc_SK':[], 
            'hair_SK':[], 
            'body_SK':[], 
            'cloth_SK':[], 
            'face_SK':[], 
            'glass_SK':[]
        }, 
        'ControlSet':[], 
        'DeformSet':[], 
        'ExportSet':[]
    }
}

if not cmds.objExists('root'):
    print(f"⚠️ 'root' 존재하지 않음")
else:
    sets = 'Sets'
    if not hierarchy.keys():
        print(f"⚠️ {sets}가 존재하지 않음")
        sets = cmds.sets(n=f'{sets}')
    else:
        print(f"✅ {sets}가 존재함")

    for k,v in hierarchy[sets].items():
        if not k in cmds.ls(set=True):
            print(f"⚠️ {k}가 존재하지 않음")
            setk = cmds.sets(n=f'{k}')
            cmds.sets(setk, e=True, fe=sets)
        else:
            setk = k
            print(f"✅ {k}가 존재함")
        if v:
            if isinstance(v,dict):
                for k1,v1 in hierarchy[sets][k].items():
                    if not k1 in cmds.ls(set=True):
                        print(f"⚠️ {k1}가 존재하지 않음")
                        setk1 = cmds.sets(n=f'{k1}')
                        cmds.sets(setk1, e=True, fe=setk)
                    else:
                        setk1 = k1
                        print(f"✅ {k1}가 존재함")
                    cmds.sets('root', e=True, fe=setk1)
            
            