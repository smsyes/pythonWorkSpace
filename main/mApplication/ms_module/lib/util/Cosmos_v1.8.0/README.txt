   ___ ___  ___ __  __  ___  ___ 
  / __/ _ \/ __|  \/  |/ _ \/ __|
 | (_| (_) \__ \ |\/| | (_) \__ \
  \___\___/|___/_|  |_|\___/|___/
                                 
########## Information ########## 
Name: Cosmos
Version: 1.8.0

Author: 
Martin Gunnarsson

Contact:
hello@deerstranger.com

Tested version Support:
Maya 2017 - 2022

##########  About ########## 
Cosmos is a launcher that helps you to work faster in Maya.
It comes with a bunch of build-in script to speed up your day, but can also search all the avalible tools and menus in Maya.
You can also add your own scripts and build up your library of tools.



##########  Installation ########## 

A) AUTOMATIC INSTALL
1. Extract the zip of the Cosmos installer
2. Open Maya (If its not already open)
3. Drag the file "drag_me_into_maya_viewport.py" into the Maya window and follow the instructions

B) MANUAL INSTALL
1. Close Maya
2. Navigate to your Maya Modules directory. More information can be found here where its located:
https://help.autodesk.com/view/MAYAUL/2016/ENU/?guid=__files_GUID_130A3F57_2A5D_4E56_B066_6B86F68EEA22_htm
3. Place the "cosmos" and "cosmos.mod" files in the "maya/modules" directory.
4. Open Maya and Cosmos should show on startup.
If not shown, try typing the following as a Python command:
cosmos.start()


PS. # If a previous Cosmos setup exists in maya/scripts, The installer will ask to remove it and its advised to do so, to not run into conflicts.
You will need to remove the "import" cosmos line from your userSetup file if it exists.

##########  Usage ########## 
Cosmos would start automaticaly the first time after install.
You can otherwise activate it with the shortcut:
Windows/Linux: CTRL + TAB
Mac: SHIFT + TAB

Ps. You can of course add Cosmos to whatever shortcut you want with the following code in the hotkey editor:
cosmos.start()

Enjoy Cosmos!


For more info and change-log, visit:
http://cosmos.toolsfrom.space