#-*- coding: utf-8 -*-
"""
FBX SDK wrapper.
    - fbx python sdk = 2020.1

__AUTHOR__ = 'junghoon_kang'
__UPDATE__ = 20230325

Example:
     from apps.maya.util import FbxReader
     reload(FbxReader)
     path = 
     fbxReader = FbxReader.FbxReader(path)
     fbxReader.loadScene()
     if fbxReader.status:
         print('FPS    : {}'.format(fbxReader.getFPS()))
         print('range  : {}'.format(fbxReader.getAnimRange()))
         print('frames : {}'.format(fbxReader.getAnimFrames()))
"""

import fbx


class FbxReader(object):
    '''FBX SDK wrapper.
    '''
    def __init__(self, path):
        self.path = path
        self.manager = None
        self.importer = None
        self.status = False
        self.scene = None

    def checkPath(self):
        self.manager = fbx.FbxManager.Create()
        self.importer = fbx.FbxImporter.Create(self.manager, 'ctxImporter')
        self.status = self.importer.Initialize(self.path)
        return self.status

    def loadScene(self):
        if self.checkPath():
            self.scene = fbx.FbxScene.Create(self.manager, 'ctxScene')
            self.importer.Import(self.scene)
            self.importer.Destroy()

    def __enter__(self):
        if self.checkPath():
            self.loadScene()
        return self

    def __exit__(self, type, val, traceback):
        pass

    def getFPS(self):
        if not self.status:
            return
        gs = self.scene.GetGlobalSettings()
        fileTimeMode = gs.GetTimeMode()
        return fbx.FbxTime.GetFrameRate(fileTimeMode)

    def getAnimRange(self):
        if not self.status:
            return
        gs = self.scene.GetGlobalSettings()
        fileTimeMode = gs.GetTimeMode()
        timeInterval = fbx.FbxTimeSpan()
        lAnimStack = self.scene.GetSrcObject(fbx.FbxCriteria.ObjectType(fbx.FbxAnimStack.ClassId), 0)
        if self.scene.GetRootNode().GetAnimationInterval(timeInterval, lAnimStack, 0):
            timeStart = timeInterval.GetStart()
            timeEnd = timeInterval.GetStop()
            return [int(timeStart.GetFrameCount(fileTimeMode)),
                    int(timeEnd.GetFrameCount(fileTimeMode))]

    def getAnimFrames(self):
        if not self.status:
            return
        gs = self.scene.GetGlobalSettings()
        fileTimeMode = gs.GetTimeMode()
        timeInterval = fbx.FbxTimeSpan()
        lAnimStack = self.scene.GetSrcObject(fbx.FbxCriteria.ObjectType(fbx.FbxAnimStack.ClassId), 0)
        if self.scene.GetRootNode().GetAnimationInterval(timeInterval, lAnimStack, 0):
            timeStart = timeInterval.GetStart()
            timeEnd = timeInterval.GetStop()
            totalAnimation = timeEnd - timeStart
            return (totalAnimation.GetFrameCount(fileTimeMode))

