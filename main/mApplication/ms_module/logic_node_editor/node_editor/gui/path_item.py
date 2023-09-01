import sys
import os

class PathItem(object):
    def __init__(self):
        super(PathItem, self).__init__()
        
        self.parentDir = os.path.dirname(os.path.dirname(__file__))
        
        self.dic = {'base':'node_editor',
                      'rig':'rig',
                      'set':['fits','sets'],
                      'type':['Parts','Template']
                      }
        
        self.rig_ = self.joinPath(self.parentDir, self.dic['rig'])
        self.set_ = [self.joinPath(self.rig_, i) for i in self.dic['set']]
        self.type_ = [self.joinPath(self.set_[0], i) for i in self.dic['type']]
        self.parts = self.fileList(self.type_[0])
        self.temps = self.fileList(self.type_[1])
        self.partsName = self.fileName(self.parts)
        self.tempsName = self.fileName(self.temps)

    def joinPath(self, *args):
        joinpath = os.path.join(args[0],args[1])
        return os.path.abspath(joinpath)
        
    def fileList(self, dirName):
        fileLists = os.listdir(dirName)
        return fileLists
        
    def fileName(self, list):
        fileNames = [i.split('.')[0] for i in list]
        return fileNames
