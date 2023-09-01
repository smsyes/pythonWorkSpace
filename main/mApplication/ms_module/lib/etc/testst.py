import os
import sys
import subprocess


def mayapy_exe(script ):
    mayapy = os.path.join(os.path.split(sys.executable)[0], 'mayapy.exe')
    print(mayapy)
    subprocess.call([ mayapy , "-i" , "-c",  "import maya.standalone; maya.standalone.initialize(); " + script ])
    #os.system(mayapy)
    return mayapy