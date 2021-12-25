import pymel.core as pm, pymel.core.datatypes as dt, maya.mel as mel


def CurveLoft(crv, geom, size, norDir, nm):
    try:
        crvSh = crv.listRelatives(s=1, type='nurbsCurve')[0]
    except:
        pm.warning('%s is not nurbsCurve')
        return
    tmpOC = pm.createNode('nearestPointOnCurve', n='TmpOC')
    crv.ws >> tmpOC.inputCurve
    copyCrvA = crv.duplicate(n='%sCopyACrv' % crv.name().replace('Crv', ''))[0]
    copyCrvB = crv.duplicate(n='%sCopyBCrv' % crv.name().replace('Crv', ''))[0]
    cvSz = int(crv.spans.get())
    if crv.d.get() == 3: cvSz = cvSz + 3
    upvec = dt.Vector(int(norDir[0]), int(norDir[1]), int(norDir[2]))
    for i in xrange(cvSz):
        tmpOC.inPosition.set(crv.cv[i].getPosition(space='world'))
        tVec = pm.pointOnCurve(crv, pr=tmpOC.parameter.get(), nt=1)
        cVecA = dt.cross(upvec, dt.Vector(tVec))
        cVecB = dt.cross(dt.Vector(tVec), upvec)
        pm.move(copyCrvA.cv[i], cVecA * size, r=1)
        pm.move(copyCrvB.cv[i], cVecB * size, r=1)
    geo = pm.loft(copyCrvB, copyCrvA, ch=1, u=1, c=0, ar=1, d=3, ss=1, rn=0, po=int(geom), rsn=1)
    mel.eval('DeleteHistory %s' % geo[0].name())
    pm.delete(tmpOC, copyCrvA, copyCrvB)
    return geo[0]


def progressLoading(ev=None):
    crvs = pm.ls(sl=1)
    geom = pm.checkBoxGrp('geomCb', q=1, v1=1)
    size = pm.floatFieldGrp('sizeIntFd', q=1, v1=1)
    norDir = [pm.checkBoxGrp('norDirCbGrp', q=1, v1=1), pm.checkBoxGrp('norDirCbGrp', q=1, v2=1),
              pm.checkBoxGrp('norDirCbGrp', q=1, v3=1)]
    nm = pm.textField('NmTxtFid', q=1, tx=1)

    pm.progressWindow(pr=0, min=0, max=100)
    geols = []
    for i, crv in enumerate(crvs):
        pm.progressWindow(e=1, pr=(100.0 / len(crvs)) * i, st=crv.name())
        geo = CurveLoft(crv, geom, size, norDir, nm)
        if geom == 1:
            geo.rename('%s%s_geo' % (nm, (i + 1)))
        elif geom == 0:
            geo.rename('%s%s_sfc' % (nm, (i + 1)))
        geols.append(geo)
    if len(geols) >= 2: pm.group(geols)
    pm.progressWindow(endProgress=1)


def loftCurveToolUi():
    winName = 'Loft_Curve_Tool_UI'
    winTitle = 'Loft Curve Tool'
    winWH = [500, 230]
    if pm.window(winName, q=1, ex=1): pm.deleteUI(winName)
    pm.window(winName, t=winTitle, tlb=1, s=0)

    mainCmn = pm.columnLayout('mainCmn')

    explaiCmn = pm.columnLayout('explaiCmn', cat=['left', 145], rs=10)
    explainTxt = pm.text(l=u'\nSelection Curves', h=30, fn='boldLabelFont')
    pm.separator(st='none', w=winWH[0], h=10)
    pm.setParent('..')

    optRowCmn = pm.rowColumnLayout('optRowCmn', nc=2, cw=[(1, winWH[0] * .5 - 10), (2, winWH[0] * .5 - 10)])
    geomCb = pm.checkBoxGrp('geomCb', ncb=1, l='Geometry                ', v1=1)
    sizeIntFd = pm.floatFieldGrp('sizeIntFd', nf=1, l='Size                ', v1=2)
    pm.setParent('..')

    norDirCmn = pm.columnLayout('norDirCmn')
    pm.separator(st='none', w=winWH[0], h=10)
    norDirCbGrp = pm.checkBoxGrp('norDirCbGrp', ncb=3, l='NormalDirection    ', labelArray3=['X', 'Y', 'Z'], v2=1)
    pm.separator(st='none', w=winWH[0], h=10)
    pm.setParent('..')

    textLabelWh = winWH[0] - (winWH[0] * .718)
    nameRowCmn = pm.rowColumnLayout('nameRowCmn', nc=2, cw=[(1, textLabelWh), (2, winWH[0] * .65)])
    pm.text(l='Name       ', h=30)
    NmTxtFid = pm.textField('NmTxtFid', tx='', h=30)
    pm.setParent('..')

    applyCmn = pm.columnLayout('applyCmn', cat=['left', 40], rs=10)
    pm.separator(st='none', w=winWH[0], h=10)
    applyBtn = pm.button('applyBtn', l='Create', w=winWH[0] - 75, h=30, c=progressLoading)
    pm.setParent('..')

    pm.setParent('..')

    pm.window(winName, e=1, wh=winWH)
    pm.showWindow(winName)


loftCurveToolUi()
