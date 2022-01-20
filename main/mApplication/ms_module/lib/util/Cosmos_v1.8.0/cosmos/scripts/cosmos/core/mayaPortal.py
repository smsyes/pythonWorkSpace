# coding=utf-8
from __future__ import print_function, unicode_literals

#There should also be some changes here
__author__ = "Martin Gunnarsson (hello@deerstranger.com)"
__version__ = "1.8.0"
#Maya modules
from maya import cmds, OpenMayaUI
import sys

#Shiboken
try:
    from shiboken import wrapInstance
    import shiboken
except:
    from shiboken2 import wrapInstance
    import shiboken2 as shiboken

#Import QT port
from .extensions.Qt import QtWidgets,QtCore,QtGui

############### Set global variables #######################
global showMessages
showMessages = True
#Overwride with user if exists
from .variables import *

if sys.version_info >= (3,):
    # Python 3 compatibility
    long = int

# Search all menues for items
def search_menu_items(menu):
    '''
    Search a specific menu of the interface and return its items
    :param menu: Input menu [Qt.QMenu]
    :return: List of dicts
    '''
    filterlist = ["Attributes", "Hotbox", "What's New", "Help", "Tutorials", "Maya Scripting Reference",
                  "Recent Commands", "Recent Projects", "Recent Files", "Saved Layouts", "Maya Communities",
                  "Maya Services and Support", "Maya Resources and Tools", "Speak Back", "Try Other Autodesk Products"]
    for item in menu.children():
        # Filter by parents
        # Get parent
        try:
            parent = item.parentWidget()
            value = True
            for content in filterlist:
                if content in parent.title(): value = False
        except:
            pass

        if value is True:
            ########## IF MENU ##########
            if type(item) == QtWidgets.QMenu:
                parent = item.parentWidget()
                if type(parent) == QtWidgets.QMenuBar:
                    parent = "TOPMENU"
                else:
                    parent = parent.title()
                # Open menu
                try: item.aboutToShow.emit()
                except: print("Failed to open menu?")
                # Search sub
                search_menu_items(item)
            ########## IF Actions ##########
            elif type(item) == QtWidgets.QWidgetAction:
                name = item.text()

                # Check that its not a separator or a menu
                if name and not item.isSeparator() and not item.menu():
                    try:
                        # Get parent
                        parent = item.parentWidget()

                        itemName = item.text()

                        # Check if options. If so add to the last item
                        if any([x in itemName for x in
                                ("Option Box", "Options", "DialogItem", "Dialog", "ItemDialog", "Item")]):
                            commandList[-1]["altCommand"] = item
                        else:

                            # Set the last name to be used in next loop
                            lastName = itemName
                            # Get info
                            itemInfo = item.toolTip()
                            # Get category
                            category = parent.title()
                            # Convert to maya item
                            menuItem = OpenMayaUI.MQtUtil.fullName(long(shiboken.getCppPointer(item)[0]))
                            # Get info from Maya command (mel)
                            itemCommand = item
                            # Get icon
                            itemIconPath = ":" + cmds.menuItem(menuItem, query=True, i=True).split('.')[0]

                            ########## Add tags based on keywords ##########
                            # Set default-tag
                            tags = category.lower() + ",MAYA"

                            if (itemIconPath == ":"): itemIconPath = "mayaDefault@2x"

                            # Check if duplicate
                            exist = False
                            for command in commandList:
                                if command["name"] == itemName:
                                    if command["info"] == itemInfo:
                                        exist = True


                            # Add commands to list if not already found
                            if exist is False:
                                if (itemCommand != "None"):
                                    command = {'name': itemName, 'command': itemCommand, 'info': itemInfo, 'tags': tags,
                                               'icon': itemIconPath, 'category': "Maya/" + category}
                                    commandList.append(command)
                    except:
                        pass
            else:
                pass


    # Return list
    return commandList

def mayaWindow():
    '''
    Get the main Maya Window Instance
    :return: Maya window instance
    '''
    window = OpenMayaUI.MQtUtil.mainWindow()
    mayaWindow = shiboken.wrapInstance( long( window ), QtWidgets.QMainWindow)
    return mayaWindow

def gather_maya_commands():
    '''
    Takes the current Maya instance and scan its menues for Maya Actions
    :return: List of commands, if no window instance found, return None
    '''
    #Get menu
    global commandList
    commandList = []
    window = OpenMayaUI.MQtUtil.mainWindow()
    mayaWindow = shiboken.wrapInstance( long( window ), QtWidgets.QMainWindow)
    #Get menubar
    mainMenuBar = None
    for object in mayaWindow.children():
        if type(object) == QtWidgets.QMenuBar:
            mainMenuBar = object
    #Continue only if menu are found
    if (mainMenuBar != None):
        #Get all children
        commandList = search_menu_items(mainMenuBar)
        return commandList
    else:
        return None


#Install the main hotkey to launch cosmos
def install_hotkey():
    '''
    Install the main Maya hotkey for launching Cosmos. If existing hotkeys exist, remove them
    :return: Hotkey
    '''
    system = sys.platform
    mayaversion = cmds.about(version=True)
    hotkey = ""
    if "2014" in mayaversion:
        cmds.nameCommand( 'cosmosStartCommand', annotation='Launch Cosmos', command='python("cosmos.start()")')
        cmds.hotkey( k='Tab', ctl=True, name='cosmosStartCommand')
        displayViewMessage("Loaded successfully.\n 2014 Hotkey installed on: {}   ".format(hotkey),"good")
    else:
        #Get a instance of the window
        mainWin = wrapInstance(long(OpenMayaUI.MQtUtil.mainWindow()), QtWidgets.QWidget)
        #Create the action
        cosmos_action = QtWidgets.QAction(mainWin)
        # Set specified
        cosmos_action.setText("cosmos_shortcut")
        #Set the content of the shortcut

        # Disable previous window actions found if updated without restart
        for action in mainWin.actions():
            action.setEnabled(False)
            #if action.text() == "cosmos_shortcut":
            #    # print action.trigger()
            #    action.setEnabled(False)

        def cosmosTab():
            cmds.evalDeferred("cosmos.start()")

        if (system== "darwin"):
            hotkey = "SHIFT + TAB"
            cosmos_action.setShortcut(QtGui.QKeySequence(QtCore.Qt.SHIFT + QtCore.Qt.Key_Tab))
        else:
            hotkey = "CTRL + TAB"
            cosmos_action.setShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_Tab))
        cosmos_action.setShortcutContext(QtCore.Qt.ApplicationShortcut)
        #Add action
        cosmos_action.triggered.connect(cosmosTab)
        mainWin.addAction(cosmos_action)
        #Display sucess message
        displayViewMessage("Loaded successfully.\n Hotkey installed on: {}   ".format(hotkey),"good")
    return hotkey

def displayViewMessage(text="No 'text' prodived ", mode="good",header=u"COSMOS"):
    '''
    Display a popup window with relevant info
    :param text: The text to display
    :param mode: Mode to define color ["good" = Green, "error" = Red]
    :param header: Prefix before the message to build context [Str]
    :return: None
    '''
    #Define fadetime based on length of the text
    fadeTime = len(text) * 110
    if (fadeTime >= 10000): fadeTime = 10000
    elif (fadeTime <= 2000): fadesetTime = 4000
    if showMessages is True:
        if (mode == "good"):
            cmds.inViewMessage(assistMessage=(u"<span style=\"color:#21C4F5;\">{}:</span> {}").format(header,text), pos='topRight',fade=True,fadeStayTime=fadeTime)
        elif (mode == "error"):
            cmds.inViewMessage(assistMessage=(u"<span style=\"color:#f52121;\">{}:</span> {}").format(header,text), pos='topRight',fade=True ,fadeStayTime=fadeTime)