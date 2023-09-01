import pymel.core as pm

def refDelete(unload=None):
    if unload == True:
        # scene 내의 전체 레퍼런스를 찾아준다.
        refs_ = pm.ls(type='reference')

        # 레퍼런스중 'sharedReferenceNode'만 빼내준다.
        refsName_ = [r.name() for r in refs_]
        if 'sharedReferenceNode' in refsName_:
            sfn_ = refsName_.index('sharedReferenceNode')
            refs_.remove(refs_[sfn_])

        # 레퍼런스들중 로드 된건 프린트 되고 언로드는 삭제한다.
        for r in refs_:
            if pm.referenceQuery(r, isLoaded=True):
                print("{}load".format(r))
            else:
                file_ = pm.referenceQuery(r, filename=True)
                cmds.file(file_, removeReference=True)
    else:
        for i in sel:
            if pm.referenceQuery(i, isNodeReferenced=True):
                # 레퍼런스 파일 네임 찾기
                file_ = pm.referenceQuery(i, filename=True)

                # 해당 레퍼런스 파일 삭제
                cmds.file(file_, removeReference=True)

sel = pm.ls(sl=1,fl=1,r=1)    
refDelete(unload=False)
