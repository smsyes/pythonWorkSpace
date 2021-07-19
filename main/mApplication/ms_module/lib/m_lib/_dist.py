import maya.cmds as cmds
import math
import random

def dist_(A_,B_):
    sp = cmds.xform(A_, q=1, ws=1, rp=1 )
    ep = cmds.xform(B_, q=1, ws=1, rp=1 )
    distance = math.sqrt(  math.pow(sp[0]-ep[0],2) + math.pow(sp[1]-ep[1],2) + math.pow(sp[2]-ep[2],2)  )
    return distance