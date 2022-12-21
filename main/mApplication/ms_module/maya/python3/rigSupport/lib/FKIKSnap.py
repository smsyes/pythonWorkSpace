import maya.cmds as cmds
import maya.OpenMaya as om

#select the joints we need
sel = cmds.ls(sl=True)

#assign selection

fkshldr = sel[0]
fkelbow = sel[1]
fkwrist = sel[2]
ikwrist = sel[3]
ikPv = sel[4]

#get positions from fk
fkwRaw = cmds.xform(fkwrist, ws=True, q=True, t=True)
fkwPos = om.MVector(fkwRaw[0], fkwRaw[1], fkwRaw[2])

fkeRaw = cmds.xform(fkelbow, ws=True, q=True, t=True)
fkePos = om.MVector(fkeRaw[0], fkeRaw[1], fkeRaw[2])

fksRaw = cmds.xform(fkshldr, ws=True, q=True, t=True)
fksPos = om.MVector(fksRaw[0], fksRaw[1], fksRaw[2])

#set position of IK wrist ctrl
cmds.move(fkwPos.x, fkwPos.y, fkwPos.z, ikwrist)

#start figuring out pole vector pos

#find avg (midpoint) of shoulder and wrist
midpoint = (fkwPos + fksPos) / 2

#find pv direction
pvOrigin = fkePos - midpoint

#extend that length
pvRaw = pvOrigin * 2


#position pvRaw at midpoint
pvPos = pvRaw + midpoint

#stick pole vector at pvPos
cmds.move(pvPos.x, pvPos.y, pvPos.z, ikPv)