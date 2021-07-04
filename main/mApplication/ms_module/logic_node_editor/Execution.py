import sys
import os

parent_path = "D:\script\main\mApplication\ms_module\lib\logic_node_editor"

path_list = [parent_path]
for i in path_list:
    if not i in sys.path:
        sys.path.append(i)

from main import NodeEditor
from path_item import PathItem

PI = PathItem()
print (PI.parts)

print ("hello")
run = runWin()

