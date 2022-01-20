# coding=utf-8
from __future__ import print_function, unicode_literals

__author__ = "Martin Gunnarsson (hello@deerstranger.com)"
__version__ = "1.8.0"

############### Import ###############
from maya import mel, cmds
from maya.app.general.mayaMixin import MayaQWidgetDockableMixin, MayaQDockWidget
import maya.utils
batch_mode = cmds.about(batch=True)

import threading
from .extensions.Qt import QtWidgets, QtCompat, QtCore, QtGui
from .extensions import qtCore
from .extensions.flowLayout import FlowLayout
from .extensions import syntax_pars

import tempfile, webbrowser, os, shutil, sys, time, re
from . import prefs, functions, library,scoring_engine
from .library import compare_engine, get_favorite_actions, get_blacklisted_actions, get_content, clean_category_name
from .mayaPortal import mayaWindow, gather_maya_commands, install_hotkey, displayViewMessage


if sys.version_info[0] >= 3:
    # in python 3, unicode got renamed to str
    unicode = str

# Set preferred binding
os.environ['QT_PREFERRED_BINDING'] = os.pathsep.join(['PySide2', 'PySide2'])

############### DEFINE LOGGING SYSTEM #######################
logger = functions.installLogger("Cosmos logger", file=(prefs.get_prefs_folder() + os.sep + "cosmos_logger.log"))

############### Set global variables #######################
relativePath = os.path.dirname(os.path.realpath(__file__)) + os.sep
parentPath = os.path.abspath(os.path.join(relativePath, os.pardir))
uiPath = os.path.dirname(os.path.realpath(__file__)) + os.sep + "ui" + os.sep
menuLogo = "{}icons{}mainLogo.png".format(relativePath, os.sep)
iconFolder = "{}icons{}".format(relativePath, os.sep)


searchMayaMenus = True
maxResultCount = 100
maxCardInWindow = 8
startupHotkey = True
showTutorial = True
windowAnim = True
menubar = True
global windowPosition
windowPosition = None

# Overwride with user if exists if it exists
from .variables import *

# Define global
global favoriteActionsList
global latestActionsList
global lastIconPath
global dockedWindows
qtCore.windowAnim = windowAnim
favoriteActionsList = prefs.get_list("Favorites")
latestActionsList = prefs.get_list("Latest")

dockedWindows = []


def set_interface_colors(input_color = None):
    '''
    Set the color of the interface, stored in Global for the session. If no input is specified, use preferences. You need to relaunch the interface after running.
    :param input_color: Rgb + Alpha [Dict] Example: input_color = {"R": 68, "G": 68, "B": 68, "A": 255}
    :return: None
    '''
    # Set interface color preference
    grayMode = prefs.get_generic_settings("noColorMode")
    global uicolor
    if input_color is None:
        if grayMode == True:
            uicolor = {"R": 68, "G": 68, "B": 68, "A": 255}
        else:
            uicolor = {"R": 64, "G": 97, "B": 127, "A": 250}
    else:
        uicolor = input_color



# Read the script folder
class scan(object):
    def __init__(self):
        thread = threading.Thread(target=self.run)
        thread.start()

    def run(self):
        maya.utils.executeDeferred(scan_base)


def scan_base():
    result = get_content()
    load_maya_commands()
    update_score()

    # Load cosmos the first time if no preferences found
    if result is False and batch_mode is False:
        start()


def rescan():
    '''
    Scan the cosmos library and show the search dialog.
    :return: None
    '''
    scan()
    update_score()
    display_window("search")
    # Display message
    displayViewMessage(text="Library Reloaded")


# The main module to start Cosmos
def start():
    '''
    Show the cosmos window, if no preferences found, create some and show the tutorial.
    :return: None
    '''
    # Check preference status
    if prefs.prefs_exists():
        if prefs.load_settings() != False:
            set_interface_colors()
            # Check if tutorial
            try:
                if cosmosTutorialWindow.ui.hotkeyValueText.isVisible():
                    cosmosTutorialWindow.ui.hotkeyValueText.setText("Well done :)")
                    cosmosTutorialWindow.ui.handIcon.setIcon(QtGui.QPixmap("{}".format(relativePath.replace("\\", "/") + 'icons/hand.png')))

                    qtCore.propertyAnimation(start=[10, 10], end=[30, 30], duration=300,
                                             object=cosmosTutorialWindow.ui.handIcon, property="iconSize",
                                             mode="OutBounce")
                else:
                    display_window("search")
            except:
                # Otherwise show search
                display_window("search")
        else:
            displayViewMessage(text="Problem loading Cosmos preferences\nCheck the script-editor for more info.",
                               mode="error")
            print("\n--- Error reading Cosmos Preferences ---")
            print("Not very normal, but your settings look to be corrupted:")
            print("'" + prefs.get_prefs_folder() + os.sep + "cosmos_settings.json" + "'")
            print("Most likely badly formated, delete file to generate a new one.")
            print("-----------------------------------------")

    else:
        # Crate preference if they dont exist, or convert existing ones
        existing_user = False
        if prefs.past_settings_exists():
            prefs.convert_xml_to_json()
            existing_user = True
        else:
            prefs.create_settings_file()
        # Scan for actions and update actionpath
        get_content()
        update_score()

        set_interface_colors()
        # Show tutorial
        if showTutorial:
            display_window("tutorial")

            # Update text if existing user
            if existing_user:
                cosmosTutorialWindow.ui.introText.setText("Welcome Back!")
        else:
            logger.info("Skipped showing of the tutorial as requested by variables.py")
            display_window("search")


def close():
    '''
    Close the cosmos search window
    :return: None
    '''
    for window in mayaWindow().children():
        if isinstance(window, searchWindow):
            window.close()


def search(input):
    for window in mayaWindow().children():
        if isinstance(window, searchWindow):
            window.ui.inputField.setText(input)


def browser(url):
    webbrowser.open(url, new=2)


def load_maya_commands():
    '''
    Traverse Maya menues and load all actions
    :return: List of Maya commands
    '''
    global mayaCommandList
    if batch_mode is True:
        mayaCommandList = []
    else:
        if searchMayaMenus is True:
            mayaCommandList = gather_maya_commands()

            if mayaCommandList != None:
                pass
            else:
                logger.error("Cant find a proper maya menu")
        else:
            mayaCommandList = []

    return len(mayaCommandList)


def filter_blacklisted(command_list):
    '''
    Remove blacklisted item from list
    :param command_list: List of action dicts
    :return: Filtered list
    '''
    if (len(library.blacklistedCommands) >= 1):
        # If it is, compare to all the existing items
        for item in command_list[:]:
            for number, blacklisted in enumerate(library.blacklistedCommands):
                if item["name"] == blacklisted["name"]:
                    if item["category"] == blacklisted["category"]:
                        if item["info"] == blacklisted["info"]:
                            command_list.remove(item)

    return command_list


def filter_actions(search=False, gate=0.1, paths=[], categories=[], tags=[], favorites=False, blacklisted=False,description=False, icon=None, mayaCommands=True, cosmosCommands=True):
    '''
    Filter out actions based on a list of factors
    :param search: Search query [Str]
    :param gate: Threshold for what [Float] Smaller value giving more results
    :param paths: Filter based on path [List of Str]
    :param categories: Filter based on categories [List of Str]
    :param tags: Filter based on tags [List of Str]
    :param favorites: Filter if favorited [Bool]
    :param blacklisted: Filter if blacklisted [Bool]
    :param description: Filter based on description [Str]
    :param icon: Filter if icon path [Bool]
    :param mayaCommands: Include Maya commands [Bool]
    :param cosmosCommands: Include Cosmos commands [Bool]
    :return: List of actions [List of Dict]
    '''
    # Capture favorites and latest to use later in filter
    favoriteActionsList = prefs.get_list("Favorites")

    #### Combind everything in one list ####
    commandList = []
    if cosmosCommands == True: commandList += library.cosmosCommandList

    if mayaCommands == True:
        try:
            commandList += mayaCommandList
        except:
            load_maya_commands()
            commandList += mayaCommandList

    # Filter Categories
    if len(categories) >= 1:
        list = []
        for category in categories:
            list += [dictionary for dictionary in commandList if category in dictionary["category"]]
        commandList = list

    # Filter Tags
    if len(tags) >= 1:
        list = []
        for tag in tags:
            list += [dictionary for dictionary in commandList if tag in dictionary["tags"]]
        commandList = list
    # Filter paths
    if len(paths) >= 1:
        list = []
        for path in paths:
            list += [dictionary for dictionary in commandList if path in dictionary["category"]]
        commandList = list

    # Filter description
    if description != False:
        commandList = [dictionary for dictionary in commandList if description in dictionary["info"]]

    # Filter description
    if description != False:
        commandList = [dictionary for dictionary in commandList if description in dictionary["info"]]

    # Filter icons
    if icon != None:
        if icon is True:
            # Resurn only items with a iconpath
            commandList = [dictionary for dictionary in commandList if dictionary["icon"] != ""]
        elif icon is False:
            # Resurn only items with no iconpath
            commandList = [dictionary for dictionary in commandList if dictionary["icon"] == ""]

    # Filter by favorite
    if favorites != False:
        if (len(favoriteActionsList) >= 1):
            # If it is, compare to all the existing items in the UI
            list = []
            for favorite in favoriteActionsList:
                list += [item for item in commandList if item["name"] == favorite["name"]]
            commandList = list
        else:
            commandList = []

    # Filter by blacklisted only
    if blacklisted != False:
        if (len(library.blacklistedCommands) >= 1):
            # If it is, compare to all the existing items in the UI
            list = []
            for item in commandList[:]:
                for number, blacklisted in enumerate(library.blacklistedCommands):
                    if item["name"] == blacklisted["name"]:
                        if item["category"] == blacklisted["category"]:
                            if item["info"] == blacklisted["info"]:
                                # Add blacklisted item
                                list.append(item)
            commandList = list
        else:
            commandList = []

    #### Search if asked for ####
    if search != False:
        ########## COMPARE RESULTS ##########
        itemsToRemove = []
        for item in commandList:
            # Extract information back out again
            scoreValue = compare_engine(search, item["name"], item["category"], item["tags"], item["info"])
            # scoreValue = compareEngine(search, name)

            # scoreValue = compareEngine(search, (name + " " + category), (category + " " + name), info)
            # Create the value if true
            if (scoreValue >= gate):
                # Add scorevalue to item
                item["score"] = scoreValue

            else:
                itemsToRemove.append(item)

        # Remove all items not passed the search-text
        for item in itemsToRemove:
            commandList.remove(item)
    else:
        # If no search, assign a score-value to the remaining actions for sorting
        for item in commandList:
            item["score"] = 1

        search = ""
    return commandList


def sort_actions_list(actions=[], sortingMethod="score"):
    '''
    Takes a list of actions and sort them based on different methods
    :param actions: List of actions [List of dicts]
    :param sortingMethod: Method of sorting [Options: 'score', 'alphabetical', 'category', 'path', 'tags'] [Str]
    :return:
    '''
    # Sort results by relevance if asked for it
    if sortingMethod == "score":
        ########## FAVORITE SCORE ##########
        if (len(favoriteActionsList) >= 1):
            # If it is, compare to all the existing items in the UI
            for item in actions:
                for favorite in favoriteActionsList:
                    if item["name"] in favorite["name"]:
                        # Get current Score
                        item["score"] *= 10

        # ######### LATEST SCORE ##########
        baseScore = 10
        if (len(latestActionsList) >= 1):
            # If it is, compare to all the existing items in the UI
            latest_names = [x["name"] for x in latestActionsList]
            for item in actions:
                if item["name"] in latest_names:
                    item["score"] += baseScore
                    baseScore *= 0.9

    # Sort the list by its method
    if sortingMethod == "score":
        actionsOutput = sorted(actions, key=lambda input: input["score"])[::-1]
    elif sortingMethod == "alphabetical":
        actionsOutput = sorted(actions, key=lambda input: input["name"])
    elif sortingMethod == "category":
        actionsOutput = sorted(actions, key=lambda input: input["category"])
    elif sortingMethod == "path":
        actionsOutput = sorted(actions, key=lambda input: input["category"])
    elif sortingMethod == "tags":
        actionsOutput = sorted(actions, key=lambda input: input["tags"])
    else:
        actionsOutput = actions
        print("INVALID SORTING: '{}'".format(sortingMethod))
        print("No valid sorting method specified, returning original list")

    return actionsOutput



def filterSearch(filterCategory=None, filterSearch=None, search=None, mayaCommands=True, cosmosCommands=True):
    # Create list to return
    results = []
    cosmosCommandList = library.cosmosCommandList

    # If asked for, filter out things that is irelevant
    if filterCategory != None:
        cosmosList = [item for item in library.cosmosCommandList if
                      filterSearch.lower() in item[filterCategory].lower()]
        if (mayaCommands == True): mayaFilteredList = [dictionary for dictionary in mayaCommandList if
                                                       filterSearch.lower() in dictionary[filterCategory].lower()]

    if search == None:
        if filterCategory != None:
            if mayaCommands == True:
                results = cosmosList + mayaFilteredList
            else:
                results = cosmosList
        else:
            if mayaCommands == False:
                results = cosmosCommandList
            else:
                results = cosmosCommandList + mayaCommandList

    else:
        ########## COMPARE RESULTS ##########
        for item in cosmosCommandList:
            # Extract information back out again
            info = item["info"]
            tags = item["tags"]
            command = item["command"]
            name = item["name"]
            icon = item["icon"]
            category = item["category"]

            # Compare the items and see witch one to add, only if there is a search
            scoreValue = compare_engine(search, name, tags, info, category)

            # Create the value if true
            if (scoreValue >= 0.2):
                # Add scorevalue to item
                item["score"] = scoreValue
                # Create element
                results.append(item)

        # For every maya command, if asked for:
        if (mayaCommands == True):
            for item in mayaCommandList:
                info = item["info"]
                name = item["name"]
                category = item["category"]

                # Compare the items and see witch one to add, only if there is a search
                scoreValue = compare_engine(search, (name + " " + category), (category + " " + name), info)

                # Create the value if true
                if (scoreValue >= 0.1):
                    # Get some more info

                    # Add scorevalue to item
                    item["score"] = scoreValue

                    # Append item
                    results.append(item)

        ########## PREFERRED SCORE ##########
        # Check preferred search
        preferedList = prefs.get_recommended_search(search)
        # Continue only if you get a value
        if (preferedList != None):
            if (len(preferedList) >= 1):
                # If it is, compare to all the existing items in the UI
                for item in results:
                    for prefered in preferedList:
                        if item["name"] in prefered["name"]:
                            # Category check
                            if "@" in prefered["name"]:
                                if prefered["name"].split("@")[-1] == item["category"]:
                                    item["score"] += (50 * int(prefered["count"]))
                            else:
                                # Get current Score
                                item["score"] += (50 * int(prefered["count"]))

        ########## FAVORITE SCORE ##########
        if (len(favoriteActionsList) >= 1):
            # If it is, compare to all the existing items in the UI
            for item in results:
                for favorite in favoriteActionsList:
                    if item["name"] == favorite["name"]:
                        # Get current Score
                        item["score"] += 100

        ########## LATEST SCORE ##########
        baseScore = 10
        if (len(latestActionsList) >= 1):
            # If it is, compare to all the existing items in the UI
            for item in results:
                for number, latest in enumerate(latestActionsList):
                    if item["name"] in latest["name"]:
                        # Get current Score
                        item["score"] += baseScore
                        baseScore *= 0.9

        ########## BLACKLIST SCORE ##########

        if (len(library.blacklistedCommands) >= 1):
            # If it is, compare to all the existing items in the UI
            for item in results[:]:
                for number, blacklisted in enumerate(library.blacklistedCommands):
                    if item["name"] == blacklisted["name"]:
                        if item["category"] == blacklisted["category"]:
                            if item["info"] == blacklisted["info"]:
                                # Remove blacklisted item
                                results.remove(item)

        # Sort the list by Score
        results = sorted(results, key=lambda input: input["score"])[::-1]

    return results


###################################################################################################
# Specific UI elements
###################################################################################################

def createHeader(name="My Amazing header", layout=None, icon=None):
    # Create instance
    headerWidget = headerUI()

    # Set name
    headerWidget.setTitle(name)

    if icon != None: headerWidget.setIcon(icon, absolute=True)

    # Add widget and set card size
    headerWidgetHolder = QtWidgets.QListWidgetItem(layout)

    # Set a name of the widget to the WidgetItem
    headerWidgetHolder.setData(109, headerWidget)
    # headerWidgetHolder.setData(100, name)
    headerWidgetHolder.setSizeHint(QtCore.QSize(100, 35))

    # Add instance to list
    layout.setItemWidget(headerWidgetHolder, headerWidget)


def createCard(name="", command="", altCommand=False, id=None, parent="", tags="", icon="", info="", favorite=0,
               layout=None, setIcon=False, absoluteIcon=False, score=None):
    cardWidget = cardUI()

    # Set ID if true
    if id == "COSMOS":
        cardWidget.simpleMode(True)
    elif id != None:
        cardWidget.setId(id)

    if score != None:
        cardWidget.score = score

    # Add details to card
    cardWidget.setTitle(name)
    cardWidget.setCommand(command)
    cardWidget.setCategory(parent)
    cardWidget.setTags(tags)
    cardWidget.setIconPath(icon)
    cardWidget.setDescription(info)
    cardWidget.setAltCommand(altCommand)

    # Icon
    if setIcon is True:
        if absoluteIcon == True:
            cardWidget.setIcon(icon, absolute=True)
        elif absoluteIcon == False:
            cardWidget.setIcon(icon)

    # Favorite marking
    for favorite in library.favoriteListCommands:
        if favorite["name"] == name:
            if favorite["category"] in parent:
                if favorite["info"] in info:
                    cardWidget.setFavorite(True)

    # Handle Layout
    if layout is None:
        return None
    else:
        if type(layout) == QtWidgets.QVBoxLayout:
            layout.addWidget(cardWidget)
            return cardWidget
        else:
            # Add widget and set card size
            cardWidgetHolder = QtWidgets.QListWidgetItem(layout)
            # cardWidgetHolder = QtWidgets.QListWidgetItem(cardWidget)

            # Set a name of the widget to the WidgetItem
            cardWidgetHolder.setData(109, cardWidget)
            cardWidgetHolder.setData(100, name)
            cardWidgetHolder.setSizeHint(QtCore.QSize(50, 45))

            # Add instance to list
            layout.setItemWidget(cardWidgetHolder, cardWidget)
            return cardWidgetHolder


########## CREATE THE Header UI ##########
class headerUI(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(headerUI, self).__init__(parent)
        self.built = True

        ##### CREATE UI #####
        self.gridLayout = QtWidgets.QGridLayout(self)
        self.gridLayout.setContentsMargins(0, 0, 0, 0)
        self.gridLayout.setSpacing(0)
        self.mainFrame = QtWidgets.QFrame(self)

        # Create discription label
        self.descriptionLabel = QtWidgets.QLabel(self.mainFrame)
        self.descriptionLabel.setStyleSheet(
            "color: rgb(250,250,250,150);\nbackground-color: qlineargradient(x1: 0, y1: 0, x2: 0, y2: 1, stop: 0 rgb(0, 0, 0, 40), stop: 0.5 rgb(0, 0, 0, 20));color: rgb(250, 250, 250, 150);border-radius:0px;padding-bottom:2px;")

        self.descriptionLabel.setAlignment(QtCore.Qt.AlignLeading | QtCore.Qt.AlignLeft | QtCore.Qt.AlignBottom)
        # Description bold
        font = QtGui.QFont()
        font.setBold(True)
        font.setPointSize(11)
        self.descriptionLabel.setFont(font)

        self.gridLayout.addWidget(self.descriptionLabel)

    def setTitle(self, title):
        self.descriptionLabel.setText(title)


########## CREATE THE CARD UI ##########
class cardUI(QtWidgets.QWidget):
    def __init__(self, parent=None):
        super(cardUI, self).__init__(parent)
        self.last = None
        self.built = False

        # Add variables
        self.build = False
        self.name = ""
        self.id = None
        self.tags = ""
        self.description = ""
        self.category = ""
        self.iconOnly = ""
        self.special = False
        self.blacklisted = False
        self.iconPath = None
        self.absoluteIcon = False
        self.starred = False
        self.altCommand = False
        self.score = None

        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.MinimumExpanding)

        self.setStatusTip("Click to run this Action")
        self.setToolTip("Click to run this Action")

        self.installEventFilter(self)

        # Crate main layout
        self.gridLayout = QtWidgets.QGridLayout(self)
        self.gridLayout.setContentsMargins(0, 0, 0, 0)
        self.gridLayout.setSpacing(0)
        self.mainFrame = QtWidgets.QFrame(self)
        self.mainFrame.setObjectName("cardBackground")

        self.gridLayout_2 = QtWidgets.QGridLayout(self.mainFrame)
        self.gridLayout_2.setContentsMargins(7, 0, 3, 0)
        self.gridLayout_2.setSpacing(0)

    def delayedBuild(self):
        buttonSize = 16
        ##### CREATE UI #####
        self.mainFrame.setStyleSheet("QFrame#cardBackground{border:solid;border-radius:0px;border-top-width:1px;border-color: rgb(0, 0, 0,30)}")
        self.mainLayout = QtWidgets.QVBoxLayout()
        self.mainLayout.setSpacing(0)
        self.mainLayout.setContentsMargins(8, 0, 0, 0)
        self.topLayout = QtWidgets.QHBoxLayout()
        self.topLayout.setAlignment(QtCore.Qt.AlignLeft | QtCore.Qt.AlignHCenter)
        self.topLayout.setSpacing(5)

        # Create Name
        self.nameLabel = QtWidgets.QLabel(self.mainFrame)
        self.nameLabel.setAlignment(QtCore.Qt.AlignVCenter)
        self.topLayout.addWidget(self.nameLabel)
        self.mainLayout.addLayout(self.topLayout)
        # Name bold
        font = QtGui.QFont()
        font.setPointSize(10)
        font.setBold(True)
        self.nameLabel.setFont(font)

        # Create Category
        self.categoryLabel = QtWidgets.QLabel(self.mainFrame)
        self.categoryLabel.setWordWrap(False)
        self.categoryLabel.setStyleSheet("color: rgb(250,250,250,100);\nbackground-color: rgb(250, 250, 250,0);")
        self.topLayout.addWidget(self.categoryLabel)

        # Create bottom-layout
        self.bottomLayout = QtWidgets.QHBoxLayout()

        # Create discription label
        self.descriptionLabel = QtWidgets.QLabel(self.mainFrame)
        self.descriptionLabel.setStyleSheet("color: rgb(250,250,250,100);\nbackground-color: rgb(250, 250, 250,0);")
        self.descriptionLabel.setWordWrap(True)
        self.descriptionLabel.setAlignment(QtCore.Qt.AlignLeading | QtCore.Qt.AlignLeft | QtCore.Qt.AlignTop)
        self.descriptionLabel.setMinimumHeight(20)
        self.bottomLayout.addWidget(self.descriptionLabel)

        self.mainLayout.addLayout(self.bottomLayout)
        self.gridLayout_2.addLayout(self.mainLayout, 0, 2, 1, 1)
        # Create icon
        self.icon = QtWidgets.QToolButton(self.mainFrame)
        iconSize = 32
        self.icon.setMinimumSize(QtCore.QSize(iconSize, iconSize))
        self.icon.setMaximumSize(QtCore.QSize(iconSize, iconSize))
        self.icon.setIconSize(QtCore.QSize(iconSize, iconSize))
        self.icon.setStyleSheet("border: none; background-color: rgb(0, 250, 0,0);")
        self.gridLayout_2.addWidget(self.icon, 0, 1)

        # Create alternative-icon
        self.altButton = qtCore.fadeButton(self.mainFrame)
        self.altButton.setSize(buttonSize, buttonSize)
        self.altButton.hide()
        self.gridLayout_2.addWidget(self.altButton, 0, 3)

        # Create star-icon
        self.starButton = qtCore.fadeButton(self.mainFrame)
        self.starButton.setSize(buttonSize, buttonSize)
        self.starButton.setStatusTip("Favorite this item")
        self.starUncheckedOpacity = 0.1
        self.starCheckedOpacity = 0.8
        self.starButton.setOpacity(self.starUncheckedOpacity)
        self.gridLayout_2.addWidget(self.starButton, 0, 4)

        self.starButton.clicked.connect(self.saveFavorite)
        self.altButton.clicked.connect(lambda: self.execute(alt=True))

        # Create menu icon
        self.menuButton = qtCore.fadeButton(self.mainFrame)
        self.menuButton.setStatusTip("Open the Menu for this Action")
        self.menuButton.setToolButtonStyle(QtCore.Qt.ToolButtonIconOnly)
        self.menuButton.setSize(7, (buttonSize + 2))
        self.gridLayout_2.addWidget(self.menuButton, 0, 5)

        # Set button context menu policy
        self.menuButton.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        self.menuButton.clicked.connect(self.leftClickMenu)

        # Create context menu
        self.popMenu = QtWidgets.QMenu(self)
        menuBarString = "QMenu{{background-color: rgba({R},{G},{B},{A});color: rgb(255,255,250,150);}}QMenu::item:selected{{color: rgba(255, 255, 255, 250);}}".format(
            R=uicolor["R"], G=uicolor["G"], B=uicolor["B"], A=uicolor["A"])
        self.popMenu.setStyleSheet(menuBarString)

        self.menuButton.setMenu(self.popMenu)

        self.gridLayout.addWidget(self.mainFrame, 0, 1)

        try:
            self.starButton.setIcon(self.starbuttonImage)
        except:
            self.starbuttonImage = QtGui.QPixmap("{}".format(relativePath.replace("\\", "/") + 'icons/starred.png'))
            self.starButton.setIcon(self.starbuttonImage)

        # Set alt icon
        try:
            self.altButton.setIcon(self.altbuttonImage)
        except:
            self.altbuttonImage = QtGui.QPixmap("{}".format(relativePath.replace("\\", "/") + 'icons/altCommand.png'))
            self.altButton.setIcon(self.altbuttonImage)

        # Set menu icon
        try:
            self.menuButton.setIcon(self.menuButtonImage)
        except:
            self.menuButtonImage = QtGui.QPixmap("{}".format(relativePath.replace("\\", "/") + 'icons/actionMenu.png'))
            self.menuButton.setIcon(self.menuButtonImage)

        self.updateInfo()

    def buildMethod(self):
        self.timer = QtCore.QTimer(singleShot=True)
        self.timer.timeout.connect(self.delayedBuild)
        self.timer.start(1)

    def updateInfo(self):
        ### Title
        self.nameLabel.setText(self.name)
        ### Category
        displayCategory = clean_category_name(self.category)
        self.categoryLabel.setText(displayCategory)
        qtCore.autoFieldWidth(self.categoryLabel)

        ### Info
        self.descriptionLabel.setText(self.description)

        ### Set alt command
        if self.altCommand != False:
            self.altButton.show()
        else:
            self.altButton.hide()

        ### Set favorite
        if self.starred is True:
            self.starButton.setOpacity(self.starCheckedOpacity)
            qtCore.fadeAnimation(start=self.starUncheckedOpacity, end=self.starCheckedOpacity, duration=100,
                                 object=self.starButton.opacityEffect)
        elif self.starred is False:
            qtCore.fadeAnimation(start="current", end=self.starUncheckedOpacity, duration=400,
                                 object=self.starButton.opacityEffect)
            self.starButton.setOpacity(self.starUncheckedOpacity)

        # Set icon from string
        setIconFromString(self.icon, self.iconPath, absolute=self.absoluteIcon, name=self.name + " " + self.description)

        # Hide elements if special is true
        if self.special is True:
            # Hide category
            self.categoryLabel.hide()
            # Hide star
            self.starButton.hide()
            self.menuButton.hide()
        else:
            # Hide category
            self.categoryLabel.show()
            # Hide star
            self.starButton.show()

    def leftClickMenu(self):
        # Clear menu
        self.popMenu.clear()

        # Edit Action
        if str(self.id) != "None":
            editAction = QtWidgets.QAction('Edit', self)
            editAction.triggered.connect(self.editAction)
            self.popMenu.addAction(editAction)

        # Favorite Action
        if self.starred is False:
            favoriteAction = QtWidgets.QAction('Star', self)
            favoriteAction.triggered.connect(lambda: self.setFavorite(True))
        else:
            favoriteAction = QtWidgets.QAction('Unstar', self)
            favoriteAction.triggered.connect(lambda: self.setFavorite(False))

        # If blacklist items exist, check from that
        if (len(library.blacklistedCommands) >= 1):
            # If it is, compare to all the existing items in the UI
            for number, blacklisted in enumerate(library.blacklistedCommands):
                if self.name in blacklisted["name"]:
                    if self.category in blacklisted["category"]:
                        if self.description in blacklisted["info"]:
                            self.blacklisted = True

        # Blacklist Action
        if self.blacklisted is False:
            blacklistAction = QtWidgets.QAction('Blacklist', self)
            # Get current search
            blacklistAction.triggered.connect(lambda: self.appendBlacklist(mode="add"))
        else:
            blacklistAction = QtWidgets.QAction('Remove from Blacklist', self)
            blacklistAction.triggered.connect(lambda: self.appendBlacklist(mode="remove"))

        # Shortcut Action
        shortcutAction = QtWidgets.QAction('Print Shortcut', self)
        shortcutAction.triggered.connect(self.createshortcut)

        # Delete Action
        deleteAction = QtWidgets.QAction('Delete', self)
        deleteAction.triggered.connect(self.remove_action)

        # Add actions to menu
        self.popMenu.addAction(favoriteAction)
        self.popMenu.addAction(blacklistAction)

        # if str(self.id) != "None":
        self.popMenu.addSeparator()
        self.popMenu.addAction(shortcutAction)
        self.popMenu.addAction(deleteAction)

        # Execute menu from current position of the cursor
        self.popMenu.exec_(QtGui.QCursor.pos())

    def createshortcut(self):
        print("# {} hotkey command".format(self.name))
        if self.id is None:
            print("cosmos.execute_maya_action('{}', '{}', '{}')".format(self.name, self.category, self.description))
        else:
            print("cosmos.execute_action('{}')".format(self.id))

    def remove_action(self):
        action = library.get_action_by_id(self.id)
        library.ask_delete_action(action)

    def execute(self, alt=False):
        self.setNormal()


        # Check if modifier clicked
        execute_card(self, forceAlt=alt)

        # Save to recent if not a special card
        if self.special is False:
            prefs.add_list_item(self, "Latest")
            # Try to close the main window
            for window in mayaWindow().children():
                if isinstance(window, searchWindow):
                    window.tryClose()

    def editAction(self):

        cosmosTransferId = self.id

        # Check if the script is "legit"
        status = True

        # Check if Maya command
        if "MAYA" in self.tags: status = False

        # Check if special card or not
        if self.special is True: status = False

        # Check for proper ID
        if cosmosTransferId is None: status = False

        # Display edit window if check was done
        if status is True:
            # Check that the action exists

            # Check if the action exists
            self.actionFile = library.get_action_path_by_id(cosmosTransferId)

            if self.actionFile != None:
                # Show the new window
                display_window("actionInfo")
                cosmosActionInfoWindow.attachAction(cosmosTransferId)
            else:
                displayViewMessage(text=u"The Action '{}' cant be found".format(self.nameLabel.text()), mode="error")
        else:
            displayViewMessage(text=u"The Action '{}' cant be edited".format(self.nameLabel.text()), mode="error")
            logger.info(u'The action "{}" in "{}" cant be edited'.format(self.nameLabel.text(), self.category))
        self.setNormal()

    def appendBlacklist(self, mode="add"):
        if mode == "add":
            prefs.add_list_item(self, "Blacklist")
        elif mode == "remove":
            prefs.remove_list_item("Blacklist", self.name, self.category, self.description)
        get_blacklisted_actions()

        # Try update the search if open
        searchInstances = returnInstances(searchWindow)
        for window in searchInstances:
            if window.activeButton == "Blacklist":
                window.displayBlackListed()
            else:
                window.search(window.ui.inputField.text())

        # Update all windows
        windowInstances = returnInstances(genericDockingWindow)

        for window in windowInstances:
            if window.ui.checkbox_blacklisted.isChecked() == True:
                window.filter()

    def mousePressEvent(self, event):
        if event.button() == QtCore.Qt.LeftButton:
            self.setActive()
            self.last = "Click"

    def mouseReleaseEvent(self, event):
        if event.button() == QtCore.Qt.LeftButton:
            if self.last == "Click":
                self.performSingleClickAction()

            else:
                # Perform double click action.
                self.message = "Double Click"
                self.update()
                self.setNormal()

    # Edit command function
    def mouseDoubleClickEvent(self, event):
        if event.button() == QtCore.Qt.LeftButton:
            self.last = "Double Click"
            self.editAction()

    # Run command function
    def performSingleClickAction(self):
        if self.last == "Click":
            self.message = "Click"
            self.update()
            # Execute a single-click
            self.execute()

    def simpleMode(self, mode):
        self.special = True

    ########## Tags ##########
    def setId(self, inputId):
        self.id = inputId

    def getId(self):
        return self.id

    def setTags(self, tags):
        self.tags = tags

    def get_tags(self):
        return self.tags

    ########## Command ##########
    def setCommand(self, command):
        self.command = command

    def getCommand(self):
        return self.command

    ########## Command ##########
    def setAltCommand(self, command):
        self.altCommand = command

    def getAltCommand(self):
        return self.altCommand

    ########## Title ##########
    def setTitle(self, title):
        # self.nameLabel.setText(title)
        self.name = title

    def getTitle(self):
        return self.name

    ########## Category ##########
    def setCategory(self, category):
        self.category = category

    def altCommandExist(self):
        if self.altCommand is False:
            return False
        else:
            return True

    def getCategory(self):
        return self.category

    ########## Description ##########
    def setDescription(self, description):
        self.description = description

    def getDescription(self):
        return self.description

    ########## Icon ##########
    def setIconPath(self, iconPath, absolute=False):
        self.iconPath = iconPath
        self.absoluteIcon = absolute
        self.name, "self.iconPath:", iconPath

    def getIconPath(self):
        return self.iconPath

    def setIcon(self, iconInput, absolute=False):
        self.iconOnly = iconInput
        self.absoluteIcon = absolute

    ########## Favorite ##########
    def setFavorite(self, state):
        try:
            self.starred = state
            if state is True:
                self.starButton.setOpacity(self.starCheckedOpacity)
                qtCore.fadeAnimation(start=self.starUncheckedOpacity, end=self.starCheckedOpacity, duration=100,
                                     object=self.starButton.opacityEffect)
            elif state is False:
                qtCore.fadeAnimation(start="current", end=self.starUncheckedOpacity, duration=400,
                                     object=self.starButton.opacityEffect)
                self.starButton.setOpacity(self.starUncheckedOpacity)
        except:
            pass

    def saveFavorite(self):
        # Get card name
        name = self.name
        # If not, set as starred
        if self.starred is False:
            # Set starred on file
            if self.id is None:
                idOutput = "MAYA"
            else:
                idOutput = self.id

            status = prefs.add_list_item(self, "Favorites")
            if status is True:
                # Get favorite-list
                get_favorite_actions()
                self.starButton.setOpacity(self.starCheckedOpacity)
                self.starred = True
                logger.info(u"Unstarred item: '{}'".format(name))
        # If starred, unstar it
        else:
            # Remove favorite from file
            prefs.remove_list_item("Favorites", self.name, self.category, self.description)
            # Remove favorite from list
            # getFavorites()
            qtCore.fadeAnimation(start="current", end=self.starUncheckedOpacity, duration=400,
                                 object=self.starButton.opacityEffect)
            self.starButton.setOpacity(self.starUncheckedOpacity)
            self.starred = False

            logger.info(u"Unstarred item: '{}'".format(name))

        # Try to update the actionlist if its open
        # Update all windows
        windowInstances = returnInstances(genericDockingWindow)
        for window in windowInstances:
            if window.ui.checkbox_favorite.isChecked() == True:
                window.filter()
            else:
                window.updateCard(name=name, setFavorite=self.starred)

        # If the view is Favorites, refresh
        for window in mayaWindow().children():
            if isinstance(window, searchWindow):
                if window.activeButton == "favorites":
                    window.statusButtonClicked("Favorites")

        # Update favorite list
        global favoriteActionsList
        favoriteActionsList = prefs.get_list("Favorites")

    def getFavorite(self):
        return self.starred

    def setActive(self):
        self.mainFrame.setStyleSheet("background-color: rgb(250, 250, 250,50);")

    def setNormal(self):
        try:
            self.mainFrame.setStyleSheet("background-color: rgb(0,0,0,0);")
            self.setCategory(self.category)
        except:
            pass

    # Events for changing focus and stuff
    def eventFilter(self, object, event):
        if event.type() == QtCore.QEvent.GrabMouse:
            return QtWidgets.QMainWindow.eventFilter(self, object, event)
        elif event.type() == QtCore.QEvent.WindowActivate or event.type() == QtCore.QEvent.Enter:
            # Set focus on the textfield
            self.activateWindow()
            return QtWidgets.QMainWindow.eventFilter(self, object, event)
            # Set window opacity
        elif event.type() == QtCore.QEvent.WindowDeactivate:
            return QtWidgets.QMainWindow.eventFilter(self, object, event)
        elif event.type() == QtCore.QEvent.DragLeave:
            print("You dragged a file from here")
        elif event.type() == QtCore.QEvent.DragMove:
            print("You dragged a file from here")
        elif event.type() == QtCore.QEvent.Drop:
            print("You dropped a file on me")
        elif event.type() == QtCore.QEvent.FocusIn:
            return QtWidgets.QMainWindow.eventFilter(self, object, event)
        elif event.type() == QtCore.QEvent.FocusOut:
            # Delete window
            self.fadeCloseWindow()
        else:
            return QtWidgets.QMainWindow.eventFilter(self, object, event)


def returnInstances(name):
    instances = []
    for window in mayaWindow().children():
        if isinstance(window, name):
            # Add current instance
            instances.append(window)

    # Return docked if asked for
    if "genericDockingWindow" in str(name):
        # A sanity check here to see that the window still exists would be handy
        instances += dockedWindows
    return instances


def display_window(window):
    '''
    Display a Cosmos window. Check below for options what to show
    :param window: Window name to show:
    "setup" = Settings window
    "tutorial" = Tutorial window
    "actions" = Action list
    "actionInfo" = Add new action window [Or edit if a action is attached]
    "search" = Search window
    :return: None
    '''
    # Create the Qt Application
    app = QtWidgets.QApplication.instance()
    if app is None: app = QtWidgets.QApplication(sys.argv)

    app.setAttribute(QtCore.Qt.AA_EnableHighDpiScaling, False)

    if window == "setup":
        global cosmosSetupWindow
        cosmosSetupWindow = SetupWindow(parent=mayaWindow())
        cosmosSetupWindow.activateWindow()
    elif window == "tutorial":
        global cosmosTutorialWindow
        cosmosTutorialWindow = tutorialWindow(parent=mayaWindow())
        cosmosTutorialWindow.activateWindow()
    elif window == "actionslots":
        global cosmosSlotEditorWindow
        cosmosSlotEditorWindow = actionSlotsWindow(parent=mayaWindow())
        cosmosSlotEditorWindow.activateWindow()
    elif window == "actions":
        global cosmosActionsWindow
        cosmosActionsWindow = actionListFilter(parent=mayaWindow())
        cosmosActionsWindow.activateWindow()
    elif window == "actionInfo":
        global cosmosActionInfoWindow
        cosmosActionInfoWindow = actionInfoWindow(parent=mayaWindow())
        cosmosActionInfoWindow.activateWindow()
    elif window == "search":
        for window in mayaWindow().children():
            if isinstance(window, searchWindow):
                window.fadeCloseWindow()
        global cosmosSearchWindow
        cosmosSearchWindow = searchWindow(parent=mayaWindow())
        cosmosSearchWindow.activateWindow()
    elif window == "createCategory":
        global createCategory_openWindow
        createCategory_openWindow = createCategoryWindow(parent=mayaWindow())

    app.exec_()

###################################################################################################
# Windows / Dialogs
###################################################################################################

class genericWindow(QtWidgets.QDialog):
    def __init__(self, interfacePath, parent=None):
        super(genericWindow, self).__init__(parent)
        self.interfacePath = interfacePath
        self.ui = qtCore.qtUiLoader(self.interfacePath)
        self.layout = QtWidgets.QVBoxLayout()
        self.layout.addWidget(self.ui)
        self.layout.setSpacing(0)
        self.layout.setContentsMargins(0, 0, 0, 0)
        self.setLayout(self.layout)

        self.initUI()
        # Set unice objectname
        self.setObjectName(str(self.objectName))

    def showEvent(self, event):
        self.show()
        if self.dockedMode is False:
            qtCore.centerWidgetOnScreen(self)
            qtCore.fadeWindowAnimation(start=0, end=1, duration=400, object=self)
            qtCore.slideWindowAnimation(start=30, end=0, duration=300, object=self)

    def initUI(self):
        self.dockedMode = False

        # Create window attributes
        self.setAttribute(QtCore.Qt.WA_TranslucentBackground)
        self.setWindowFlags(QtCore.Qt.FramelessWindowHint | QtCore.Qt.Tool)

        # Top-buttons style and connect
        try:
            self.ui.frame.setStyleSheet(
                'border-radius: 5px;background-color: rgb(' + "{},{},{},{}".format(uicolor["R"], uicolor["G"],
                                                                                   uicolor["B"], uicolor["A"]) + ');')
        except:
            pass

        try:
            self.ui.closeButton.setStyleSheet(
                'QPushButton {background-color: rgb(0,0,0,0);border-image: url(' + relativePath.replace("\\",
                                                                                                        "/") + 'icons/closeWindow.png); }QPushButton:hover { border-image: url(' + relativePath.replace(
                    "\\",
                    "/") + 'icons/closeWindow_hover.png);}QPushButton:pressed{ border-image: url(' + relativePath.replace(
                    "\\", "/") + 'icons/closeWindow_hover.png);}')
            self.ui.closeButton.clicked.connect(self.fadeCloseWindow)
        except:
            pass

        # Add some resize if it exists
        try:
            QtWidgets.QSizeGrip(self.ui.resizeCorner)
        except:
            pass

        # Add escape shortcut
        QtWidgets.QShortcut(QtGui.QKeySequence("Escape"), self.ui, self.fadeCloseWindow)
        # Make accept drops
        self.setAcceptDrops(True)

    def mousePressEvent(self, event):
        self.offset = event.pos()

    def mouseMoveEvent(self, event):
        if self.dockedMode is False:
            try:
                x = event.globalX()
                y = event.globalY()
                x_w = self.offset.x()
                y_w = self.offset.y()
                self.move(x - x_w, y - y_w)
            except:
                pass

    def closeEvent(self, event):
        event.accept()
        qtCore.fadeWindowAnimation(start=1, end=0, duration=400, object=self, finishAction=self.deleteLater)
        qtCore.slideWindowAnimation(start=0, end=200, duration=500, object=self)

    def fadeCloseWindow(self):
        qtCore.fadeWindowAnimation(start=1, end=0, duration=300, object=self, finishAction=self.deleteInstances)

    def deleteInstances(self):
        mayaMainWindow = mayaWindow()
        # Go through main window's children to find any previous instances
        for obj in mayaMainWindow.children():
            if isinstance(obj, genericWindow):
                if obj.objectName() == str(self.objectName):
                    # If they share the same name then remove it
                    obj.setParent(None)
                    obj.deleteLater()
                    del obj


# genericWindow, MayaQWidgetDockableMixin
class genericDockingWindow(MayaQWidgetDockableMixin, genericWindow):
    def __init__(self, interfacePath, parent=None):
        genericWindow.__init__(self, interfacePath, parent)


class tutorialWindow(QtWidgets.QDialog):
    def __init__(self, parent=None, title=None):
        super(tutorialWindow, self).__init__(parent)
        try:
            exec('cosmosTutorialWindow.close()')
        except:
            pass
        self.initUI()
        qtCore.centerWidgetOnScreen(self)
        self.show()

    def initUI(self):
        # Resize window
        self.resize(685, 290)
        self.maxNumber = 4
        # Load the UI file and set parent from itself
        self.ui = qtCore.qtUiLoader("{}interface_tutorial.ui".format(uiPath))
        # Create a layout
        self.layout = QtWidgets.QVBoxLayout()
        self.layout.addWidget(self.ui)
        self.layout.setSpacing(0)
        self.layout.setContentsMargins(0, 0, 0, 0)
        self.setLayout(self.layout)

        self.ui.closeButton.setStyleSheet('QPushButton \n{\nborder-image: url(' + relativePath.replace("\\",
                                                                                                       "/") + 'icons/closeWindow.png); \n}\nQPushButton:hover \n{\n border-image: url(' + relativePath.replace(
            "\\",
            "/") + 'icons/closeWindow_hover.png);\n}\n\nQPushButton:pressed\n{\n border-image: url(' + relativePath.replace(
            "\\", "/") + 'icons/closeWindow_hover.png);\n}\n')
        self.ui.closeButton.clicked.connect(self.fadeCloseWindow)
        self.ui.documentation_button.clicked.connect(lambda: browser("http://cosmos.toolsfrom.space/documentation"))

        # Set shortcut text depending on the platform
        if (sys.platform == "darwin"):
            self.ui.hotkey.setText("SHIFT + TAB")
        else:
            self.ui.hotkey.setText("CTRL + TAB")

        # Set frame color
        self.ui.tutorialFrame.setStyleSheet(
            "QFrame\n{\nborder-radius: 5px;\nbackground-color: rgb(" + "{},{},{}".format(uicolor["R"], uicolor["G"],
                                                                                         uicolor["B"],
                                                                                         uicolor["A"]) + ");\n}")
        # Set images paths
        self.ui.cosmosBigIcon.setPixmap(QtGui.QPixmap("{}icons{}mainLogo.png".format(relativePath, os.sep)))

        self.ui.starPicture.setIcon(QtGui.QPixmap(relativePath.replace("\\", "/") + 'icons/starred.png'))
        self.ui.blacklistPicture.setIcon(QtGui.QPixmap(relativePath.replace("\\", "/") + 'icons/actionBlacklist.png'))
        self.ui.optionsPicture.setIcon(QtGui.QPixmap(relativePath.replace("\\", "/") + 'icons/altCommand.png'))
        self.ui.endStar.setIcon(QtGui.QPixmap(relativePath.replace("\\", "/") + 'icons/starred.png'))
        self.ui.smallLogo.setIcon(QtGui.QPixmap(menuLogo))
        self.ui.smallLogo.setAutoRaise(False)

        # Add gif to UI
        path = relativePath.replace("\\", "/") + 'icons/gif_tutorial.gif'
        self.gif_file = open(path, "rb").read()

        # Create bite array
        self.gifByteArray = QtCore.QByteArray(self.gif_file)
        self.gifBuffer = QtCore.QBuffer(self.gifByteArray)

        # Create movie
        self.movie = QtGui.QMovie()
        self.movie.setFormat(b"GIF")
        self.movie.setDevice(self.gifBuffer)
        self.movie.setDevice(self.gifBuffer)
        self.movie.setCacheMode(QtGui.QMovie.CacheAll)
        self.movie.setScaledSize(QtCore.QSize(501, 118))
        self.movie.setSpeed(100)
        self.movie.jumpToFrame(0)

        # Set movie file
        self.ui.searchGifHolder.setMovie(self.movie)

        # Connect buttons
        self.ui.rightButton.clicked.connect(lambda: self.buttonPress(+1))
        self.ui.leftButton.clicked.connect(lambda: self.buttonPress(-1))
        self.ui.pageButton_00.clicked.connect(lambda: self.setIndex(0))
        self.ui.pageButton_01.clicked.connect(lambda: self.setIndex(1))
        self.ui.pageButton_02.clicked.connect(lambda: self.setIndex(2))
        self.ui.pageButton_03.clicked.connect(lambda: self.setIndex(3))
        self.ui.pageButton_04.clicked.connect(lambda: self.setIndex(4))

        # Add opacity effect

        self.tabOpacityEffect = QtWidgets.QGraphicsOpacityEffect(self)
        self.ui.tutorialHolder.setGraphicsEffect(self.tabOpacityEffect)
        self.ui.tutorialHolder.setAutoFillBackground(True)
        self.tabOpacityEffect.setOpacity(0)

        # Create window attributes
        self.setAttribute(QtCore.Qt.WA_TranslucentBackground)
        self.setWindowFlags(QtCore.Qt.FramelessWindowHint | QtCore.Qt.Tool)

        # Reset page and hide logo on default
        self.setIndex(0)
        self.ui.smallLogo.hide()

    def setIndex(self, indexNumber):
        # Sanity check indexNumber

        # Fade window down
        qtCore.fadeAnimation(start="current", end=0, duration=400, object=self.tabOpacityEffect)

        if indexNumber <= 0: indexNumber = 0
        if indexNumber >= self.maxNumber: indexNumber = self.maxNumber
        # Set bottom-button
        if indexNumber is 0:
            self.ui.pageButton_00.setChecked(True)
        elif indexNumber is 1:
            self.ui.pageButton_01.setChecked(True)
        elif indexNumber is 2:
            self.ui.pageButton_02.setChecked(True)
            self.movieTimer = QtCore.QTimer(singleShot=True)
            self.movieTimer.timeout.connect(lambda: self.movie.start())
            self.movieTimer.start(1100)

            #
        elif indexNumber is 3:
            self.ui.pageButton_03.setChecked(True)
        elif indexNumber is 4:
            self.ui.pageButton_04.setChecked(True)
        elif indexNumber is 5:
            self.ui.pageButton_05.setChecked(True)
        elif indexNumber is 6:
            self.ui.pageButton_06.setChecked(True)

        # Fade up timer
        self.propertiesTimer = QtCore.QTimer(singleShot=True)
        self.propertiesTimer.timeout.connect(self.fade_up_tab)
        self.propertiesTimer.timeout.connect(lambda: self.ui.tutorialHolder.setCurrentIndex(indexNumber))
        self.propertiesTimer.start(450)

        # Change button text
        previousText = "Previous"
        nextText = "Next"
        skipText = "Skip"
        closeText = "Close"
        closeDescription = "End the tutorial and start using Cosmos"
        if indexNumber == 0:
            self.ui.leftButton.setText(skipText)
            # Hide the small logo
            self.ui.smallLogo.hide()
        elif indexNumber <= (self.maxNumber - 1):
            self.ui.leftButton.setText(previousText)
            self.ui.rightButton.setText(nextText)
            # Show the small logo
            self.ui.smallLogo.show()
        elif indexNumber == self.maxNumber:
            self.ui.leftButton.setText(previousText)
            self.ui.rightButton.setText(closeText)
            self.ui.rightButton.setStatusTip(closeDescription)

    def fade_up_tab(self):
        # Fade window up
        qtCore.fadeAnimation(start="current", end=1, duration=400, object=self.tabOpacityEffect)

    def buttonPress(self, input):
        # Get current index
        current = self.ui.tutorialHolder.currentIndex()
        # Define action
        action = "flip"

        # Check for state
        if current is 0:
            if input is -1:
                action = "close"
        elif current is self.maxNumber:
            if input is 1:
                action = "close"

        # Execute action
        if action == "flip":
            self.incrementIndex(input)
        elif action == "close":
            self.launchCosmos()

    def incrementIndex(self, input):
        # Get current index
        current = self.ui.tutorialHolder.currentIndex()
        # Set index
        self.setIndex(current + input)

    def mousePressEvent(self, event):
        self.offset = event.pos()

    def mouseMoveEvent(self, event):
        x = event.globalX()
        y = event.globalY()
        x_w = self.offset.x()
        y_w = self.offset.y()
        self.move(x - x_w, y - y_w)

    def launchCosmos(self):
        self.ui.hotkeyValueText.setHidden(True)
        self.fadeCloseWindow()

        start()

    # Fade the window
    def fadeCloseWindow(self):
        qtCore.fadeWindowAnimation(start=1, end=0, duration=400, object=self, finishAction=self.close)


class actionListFilter(genericDockingWindow):
    def __init__(self, parent=None):
        interfacePath = "{}interface_actionList.ui".format(uiPath)
        super(actionListFilter, self).__init__(interfacePath, parent)

        # UI Registration
        self.checkboxes = []
        self.actions = []
        self.cards = []
        self.totalActions = 0
        self.sortingMethod = ""

        # Filters
        self.paths = []
        self.categories = []
        self.tags = []
        self.favorites = False

        # Set default sorting mode (Category by default)
        self.ui.sortingField.setCurrentIndex(1)

        # Connect buttons
        self.ui.dockButton.clicked.connect(self.makeDockable)
        self.ui.addActionButton.clicked.connect(self.openAddActionWindow)
        self.ui.clearButton.clicked.connect(self.clearValues)
        self.ui.sortingField.currentIndexChanged.connect(self._delayedFilter)
        self.ui.actionList.verticalScrollBar().valueChanged.connect(self.updateSelectedView)
        self.ui.actionList.verticalScrollBar().rangeChanged.connect(self.updateSelectedView)
        # Connect lower level buttons
        self.ui.checkbox_favorite.clicked.connect(self.appendCheckboxState)
        self.ui.checkbox_blacklisted.clicked.connect(self.appendCheckboxState)
        self.ui.checkbox_hasIcon.clicked.connect(self.appendCheckboxState)
        self.ui.checkbox_noIcon.clicked.connect(self.appendCheckboxState)

        # Disable/Hide clear button on default
        self.ui.clearButton.hide()

        self.resize(430, 590)  # width, height
        self.setWindowTitle("Cosmos Actions")

        # Set up docked icon
        self.ui.dockButton.setStyleSheet('QPushButton \n{\nborder-image: url(' + relativePath.replace("\\",
                                                                                                      "/") + 'icons/maxWindow.png); \n}\nQPushButton:hover \n{\n border-image: url(' + relativePath.replace(
            "\\",
            "/") + 'icons/maxWindow_hover.png);\n}\n\nQPushButton:pressed\n{\n border-image: url(' + relativePath.replace(
            "\\", "/") + 'icons/maxWindow_hover.png);\n}\n')

        # Handle all the lists
        # Set button icons
        self.ui.clearButton.setIcon(
            QtGui.QPixmap("{}".format((relativePath.replace("\\", "/") + 'icons/action_cross.png'))))
        self.ui.clearButton.setIconSize(QtCore.QSize(10, 10))

        self.headerObjects = [self.ui.filterHeader, self.ui.favoritesHeader, self.ui.listHeader,
                              self.ui.categoriesHeader, self.ui.tagsHeader]
        self.frameObjects = [self.ui.filterFrame, self.ui.favoritesFrame, self.ui.listFrame, self.ui.categoriesFrame,
                             self.ui.tagsFrame]
        for number, header in enumerate(self.headerObjects):
            # Set icon and its size
            header.setIcon(QtGui.QPixmap("{}".format((relativePath.replace("\\", "/") + 'icons/action_closed.png'))))
            header.setIconSize(QtCore.QSize(15, 15))

            if number >= 1:
                # Create opacity effect
                opacityEffect = QtWidgets.QGraphicsOpacityEffect(header)
                header.setGraphicsEffect(opacityEffect)
                opacityEffect.setOpacity(0.6)

            # Set action on click
            header.clicked.connect(self.setViewState)

        for frame in self.frameObjects[::-1]:
            frame.setMinimumHeight(0)
            frame.setMaximumHeight(0)

        # Get content path, categories and tags, then show the cards
        self.generateFlowLayouts()
        self.propertiesTimer = QtCore.QTimer(singleShot=True)
        self.propertiesTimer.timeout.connect(self.getActionProperties)
        self.propertiesTimer.start(10)

        # Set up gif
        #### Show gif ####
        path = relativePath.replace("\\", "/") + 'icons/loading.gif'
        self.gif_file = open(path, "rb").read()
        # Create bite array
        self.gifByteArray = QtCore.QByteArray(self.gif_file)
        self.gifBuffer = QtCore.QBuffer(self.gifByteArray)
        # Create movie
        self.movie = QtGui.QMovie()
        self.movie.setFormat(b"GIF")
        self.movie.setDevice(self.gifBuffer)
        self.movie.setDevice(self.gifBuffer)
        self.movie.setCacheMode(QtGui.QMovie.CacheAll)
        self.movie.setSpeed(100)
        self.movie.setScaledSize(QtCore.QSize(15, 15))
        self.ui.loadingGif.setMovie(self.movie)
        self.movie.jumpToFrame(0)
        self.movie.start()

        # Add opacity effect
        self.gif_opacityEffect = QtWidgets.QGraphicsOpacityEffect(self.ui.loadingGif)
        self.ui.loadingGif.setGraphicsEffect(self.gif_opacityEffect)
        self.gif_opacityEffect.setOpacity(0)

        # Filter timer on default
        self.filterTimer = QtCore.QTimer(singleShot=True)
        self.filterTimer.timeout.connect(self.filter)
        self.filterTimer.start(0)

        # Show the window
        self.show()
        self.ui.frame.setStyleSheet(
            "background-color: rgb(" + "{},{},{},{}".format(uicolor["R"], uicolor["G"], uicolor["B"],
                                                            uicolor["A"]) + ");\nborder-radius: 5px;")

    def updateSelectedView(self):
        buildCardInView(self.ui.actionList)

    def generateFlowLayouts(self):
        # Remove all items
        for element in self.frameObjects[2:]:
            for item in element.children():
                item.deleteLater()

            # Create flowLayout
            FlowLayout(element)

    def getActionProperties(self):
        self.paths = prefs.get_script_path_list()
        self.path_prefixes = prefs.get_script_path_names()
        self.categories = library.cosmosCategories
        self.categories = [clean_category_name(category) for category in self.categories]
        self.tags = library.get_tags()
        self.actions = library.cosmosCommandList
        self.totalActions = len(self.actions)

        # Generate checkboxes
        self.generateCheckboxes(self.ui.tagsFrame, self.tags)
        self.generateCheckboxes(self.ui.categoriesFrame, self.categories)
        self.generateCheckboxes(self.ui.listFrame, self.paths, niceNames=self.path_prefixes)

    def appendCheckboxState(self):
        # Get info from sender
        checkBox = self.sender()

        # If already on, remove it from the list. Otherwise add it
        if checkBox.isChecked() == True:
            self.checkboxes.append(checkBox)
        else:
            self.checkboxes.remove(checkBox)

        # Enable clear checkbox if
        if len(self.checkboxes) >= 1:
            self.ui.clearButton.show()
        else:
            self.ui.clearButton.hide()

        # Filter for us
        self.filter()

    def generateCheckboxes(self, element, items, niceNames=None):
        '''Fill a element with appropiate content'''

        # Clear checkboxes and create flowLayout
        for item in element.children():
            if type(item) == qtCore.filterCheckbox:
                if item not in self.checkboxes:
                    item.deleteLater()

        flowLayout = element.children()[0]

        for index, item in enumerate(items):
            # Create checkbox
            checkbox = qtCore.filterCheckbox()
            if niceNames != None:
                checkbox.setTitle(niceNames[index])
            else:
                checkbox.setTitle(item)

            # Check if exist from before, then check it
            if len(self.checkboxes) >= 1:
                for object in self.checkboxes[:]:
                    if object.parent() == element:
                        if object.attribute == item:
                            checkbox.setChecked(True)

                            # Remove existing object and also from the list
                            self.checkboxes.remove(object)
                            object.deleteLater()

                            # Add the new one to the list
                            self.checkboxes.append(checkbox)
                            break

            # Set data
            checkbox.type = element.objectName().replace("Frame", "")
            checkbox.attribute = item

            checkbox.clicked.connect(self.appendCheckboxState)

            # Add to layout
            flowLayout.addWidget(checkbox)

    def clearValues(self):
        # For every registered checkbox
        for checkbox in self.checkboxes:
            # Clear checkbox value
            checkbox.setChecked(False)

        # Reset icon
        self.ui.checkbox_hasIcon.setChecked(False)
        self.ui.checkbox_noIcon.setChecked(False)
        # Remove all items
        del self.checkboxes[:]

        # Collapse layout
        self.setViewState(element=self.ui.filterHeader)

        # Disable checkbox again
        self.closeTimer = QtCore.QTimer(singleShot=True)
        self.closeTimer.timeout.connect(self.ui.clearButton.hide)
        self.closeTimer.start(300)

        # Reshow cards and close filter layout
        self.cardTimer = QtCore.QTimer(singleShot=True)
        self.cardTimer.timeout.connect(self.filter)
        self.cardTimer.start(400)

    def populateListWithIcons(self):
        for item in self.ui.actionList.findItems('', QtCore.Qt.MatchRegExp):
            cardItem = item.data(109)

            # Get iconpath from icon
            try:
                iconPath = cardItem.getIconPath()
                cardItem.setIcon(iconPath)
            except:
                pass

    def _delayedFilter(self):

        # QtWidgets.QApplication.processEvents()
        qtCore.fadeAnimation(start=self.gif_opacityEffect.opacity(), end=1, duration=100, object=self.gif_opacityEffect)

        # Start filter process
        self.filterTimer = QtCore.QTimer(singleShot=True)
        self.filterTimer.timeout.connect(self.filter)
        self.filterTimer.start(0)

    def filter(self):
        QtWidgets.QApplication.processEvents()
        # Gather checked filters and add to each list
        paths = []
        tags = []
        categories = []
        others = 0
        favorites = False
        icon = None
        blacklisted = False

        for checkbox in self.checkboxes:
            try:
                if checkbox.type == "list":
                    attributeList = paths
                elif checkbox.type == "tags":
                    attributeList = tags
                elif checkbox.type == "categories":
                    attributeList = categories
                attributeList.append(checkbox.attribute)
            except:
                type = checkbox.objectName().replace('checkbox_', '')
                if type == "favorite":
                    favorites = True
                    others += 1
                if type == "hasIcon":
                    icon = True
                    others += 1
                if type == "noIcon":
                    icon = False
                    others += 1
                if type == "blacklisted":
                    blacklisted = True
                    others += 1

        # Filter actions
        self.actions = filter_actions(paths=paths, categories=categories, tags=tags, mayaCommands=False, icon=icon,
                                     favorites=favorites, blacklisted=blacklisted)

        # Display new actions
        self._createCards()

        # Fade gif down
        qtCore.fadeAnimation(start=self.gif_opacityEffect.opacity(), end=0, duration=800, object=self.gif_opacityEffect)
        QtWidgets.QApplication.processEvents()

        # Change filter text
        string = ""
        if len(categories) == 0 and len(paths) == 0 and len(tags) == 0 and others == 0:
            string = "Filters"
        else:
            string = "Filters ({})".format(len(paths) + len(tags) + len(categories) + others)

        # Set filter header
        self.ui.filterHeader.setText(string)

    def updateCard(self, name, setName=None, setCategory=None, setTags=None, setIcon=None,
                   setInfo=None, setFavorite=None):
        for card in self.cards:
            # Get ID
            card = card.data(109)
            if card.getTitle() == name:
                if setName != None: card.setTitle(setName)
                if setCategory != None: card.setCategory(setCategory)
                if setTags != None: card.setTags(setTags)
                if setIcon != None:
                    if "/" in setIcon or "\\" in setIcon:
                        card.setIconPath(setIcon, absolute=True)

                    else:
                        card.setIconPath(setIcon)
                if setInfo != None: card.setDescription(setInfo)
                if setFavorite != None: card.setFavorite(setFavorite)

                # Update card info
                try:
                    self.buildTimer = QtCore.QTimer(singleShot=True)
                    self.buildTimer.timeout.connect(card.updateInfo())
                    self.buildTimer.start(100)
                except:
                    pass

    def _createCards(self):
        '''Clear the list then create a card for every action'''
        self.cards = []

        start = time.time()

        listLayout = self.ui.actionList
        listLayout.clear()

        # Sort the actions based on current method
        self.sortActions()

        if len(self.actions) >= 1:

            currentLetter = ''
            currentCategory = ''
            currentTag = ''
            currentPath = 'None'
            topScore = self.actions[0]["score"]
            bottomScore = self.actions[-1]["score"]
            currentScore = 0

            # Disable updates on list
            listLayout.setUpdatesEnabled(False)
            listLayout.blockSignals(True)
            listLayout.blockSignals(True)
            # Create card from actions
            for number, action in enumerate(self.actions):
                QtWidgets.QApplication.processEvents()
                # Create header if categories sorting
                if self.sortingMethod == 'Alphabetical':
                    # Check if new header
                    if action["name"][0] != currentLetter:
                        # If not create a new one
                        currentLetter = action["name"][0]
                        # Create header
                        createHeader(name=currentLetter.upper(), layout=listLayout)

                if self.sortingMethod == 'Category':
                    # Check if new header
                    if action["category"] != currentCategory:
                        # If not create a new one
                        currentCategory = action["category"]
                        # Create header
                        createHeader(name=clean_category_name(currentCategory), layout=listLayout)

                if self.sortingMethod == 'Tags':
                    # Create a first header if no tags
                    if number is 0:
                        if action["tags"] == "":
                            createHeader(name="No tags", layout=listLayout)
                    # Check if new header
                    if action["tags"] != currentTag:
                        # If not create a new one
                        currentTag = action["tags"]
                        # Create header
                        createHeader(name=currentTag, layout=listLayout)

                if self.sortingMethod == 'Path':
                    # Check if new header
                    if currentPath not in action["category"]:
                        # If not create a new one
                        currentPath = return_script_path_only(action["category"])
                        # Create header
                        createHeader(name=currentPath, layout=listLayout)

                if self.sortingMethod == 'Relevance':
                    if action["score"] == bottomScore:
                        if currentScore != action["score"]:
                            createHeader(name="Never used", layout=listLayout)
                            currentScore = action["score"]
                    elif action["score"] == topScore:
                        if currentScore != action["score"]:
                            createHeader(name="Most Relevant", layout=listLayout)
                            currentScore = action["score"]
                    elif action["score"] <= topScore * 0.8:
                        if currentScore >= topScore * 0.8:
                            createHeader(name="Somewhat Relevant", layout=listLayout)
                            currentScore = action["score"]

                # Create empty id if it dont exist
                if "id" not in action: action['id'] = None

                # Create card and add to layout
                card = createCard(id=action['id'], name=action['name'], command=action['command'],
                                  parent=action['category'], tags=action['tags'], icon=action['icon'],
                                  info=action['info'], layout=listLayout)
                self.cards.append(card)

            # Enable update on layout again
            listLayout.setUpdatesEnabled(True)
            listLayout.blockSignals(False)
            listLayout.blockSignals(False)

            buildCardInView(self.ui.actionList)

            # Set label
            if len(self.actions) == self.totalActions:
                self.ui.statusField.setText("{} actions".format(len(self.actions)))
            else:
                self.ui.statusField.setText("{} actions of {} filtered".format(len(self.actions), self.totalActions))

        else:
            self.ui.statusField.setText("No actions to show for the current filter")

    def openAddActionWindow(self):
        display_window('actionInfo')

    def sortActions(self):
        '''Sort the avalible actions in self based on the method of self'''

        # Get method
        self.sortingMethod = self.ui.sortingField.currentText()

        # Sort
        sortingMethod = self.sortingMethod.lower()
        if sortingMethod == "relevance": sortingMethod = "score"

        self.actions = sort_actions_list(self.actions, sortingMethod=sortingMethod)

    def setViewState(self, element=None, noDelay=False):
        '''Open or close the specified element by reversing the current'''
        if element is None: element = self.sender()

        # Get view from header
        headerName = str(element.objectName())

        frameName = headerName.replace("Header", "Frame")
        frameObject = None
        for frame in self.frameObjects:
            if frame.objectName() == frameName:
                frameObject = frame

        # Get curent size
        height = frameObject.size().height()
        width = frameObject.size().width()

        closedHeight = 0
        # Get content height
        contentHeight = 0
        for number, child in enumerate(frameObject.children()):
            if type(child) == FlowLayout:
                contentHeight = child.heightForWidth(width)
                # contentHeight = child.height
                break
            elif type(child) == QtWidgets.QVBoxLayout:
                pass
            elif type(child) == QtWidgets.QFrame:
                if child.isHidden() is False:
                    contentHeight += child.height()
            elif type(child) == QtWidgets.QPushButton:
                if child.isHidden() is False:
                    contentHeight += child.height()
            elif type(child) == QtCore.QPropertyAnimation:
                pass
            else:
                contentHeight += child.height()
        if height == closedHeight:
            newHeight = contentHeight
            element.setIcon(QtGui.QPixmap("{}".format((relativePath.replace("\\", "/") + 'icons/action_open.png'))))
        else:
            newHeight = closedHeight
            element.setIcon(QtGui.QPixmap("{}".format((relativePath.replace("\\", "/") + 'icons/action_closed.png'))))

        if "filter" in frameName:
            expandingMode = True
        else:
            expandingMode = False
        # Transform the height of the item with an animation
        qtCore.animateWidgetSize(frameObject, start=(width, height), end=(width, newHeight), expanding=expandingMode)

    def showEvent(self, event):
        event.accept()

    def makeDockable(self):
        self.dockedMode = True

        self.setWindowFlags(QtCore.Qt.Tool)
        self.show()

        # Turn it into a workspaceControl so it will dock properly
        workspaceControlName = self.objectName() + 'WorkspaceControl'
        self.setDockableParameters(dockable=True, floating=False, area='right')

        self.show(dockable=True, area='right', floating=False)
        try:
            dockedWindow = cmds.workspaceControl(workspaceControlName, e=True, ttc=["AttributeEditor", -1],
                                                 wp="preferred", mw=420)
        except:
            pass

        # Add to global list
        dockedWindows.append(self)

        self.raise_()

        self.setWindowFlags(self.windowFlags() & QtCore.Qt.FramelessWindowHint)
        self.ui.scrollAreaWidgetContents.setStyleSheet("")

        # Hide top-part and change styling
        self.ui.topWidget.hide()
        self.ui.frame.setStyleSheet(('border-radius: 0px'))
        self.ui.scrollArea.setStyleSheet(
            '/* Main\n/* Scrollbar Vertical */\nQScrollBar:vertical\n{\nbackground-color: rgb(13, 41, 54,0);\nwidth: 10px;\n}\n\nQScrollBar::handle:vertical:hover\n{\nbackground-color: rgb(250, 250, 250,60);\n}\n\n/* Scrollbar background for top and bottom*/\nQScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n{\nbackground-color: rgb(27, 55, 69,0);\nwidth: 10px;\n}\n\n\n/* The scrollbar itself*/\nQScrollBar::handle:vertical {\n\nbackground-color: rgb(250, 250, 250,50);\nborder-radius: 4px;\nwidth: 10px;\n}\n\n\n')
        self.ui.scrollAreaWidgetContents.setStyleSheet('')


class searchWindow(QtWidgets.QDialog):
    def __init__(self, parent=None):
        super(searchWindow, self).__init__(parent)
        self.initUI()
        self.startMode()
        self.open()

    def open(self):
        self.show()
        self.get_settings()
        # Set the listwidget stylesheet as its ignored otherwise
        self.ui.listWidget.setStyleSheet(
            "QListWidget\n{\noutline: 0;\nbackground-color: rgb(0, 0, 0,0);\nborder-radius: 5px;\nborder: solid;\nborder-width:0;\n}\n\nQListWidget::item\n{\npadding: -1px;\noutline: 0;\nborder: solid;\nborder-width:0;\n}\n\nQListWidget::item:hover\n{\nbackground-color: rgb(0,0,0,10);\n}\n\nQListWidget::item:selected\n{\npadding: 0px;\nbackground-color: rgb(250,250, 250,20);\nborder-radius: 1px;\n}\n\n\n/* Scrollbar  */\nQScrollBar:vertical\n{\nbackground-color: rgb(0, 0, 0,0);\nwidth: 8px;\npadding: 0px 1px 0px 1px;\n}\n\n/* Scrollbar background for top and bottom*/\nQScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n{\nbackground-color: rgb(200,200, 200,100);\nwidth: 2px;\n}\n\n\n/* The scrollbar itself*/\nQScrollBar::handle:vertical \n{\nbackground-color: rgb(250,250,250,50);\nborder-radius: 3px;\nwidth: 10px;\npadding: 0px 0px 0px 0px;\n}\n\n/* The scrollbar itself HOVER*/\nQScrollBar::handle:vertical:hover\n{\nbackground-color: rgb(250,250,250,70);\nborder-radius: 3px;\nwidth: 10px;\npadding: 0px 0px 0px 0px;\n}\n\n/* The scrollbar itself PRESSED*/\nQScrollBar::handle:vertical:pressed\n{\nbackground-color: rgb(250,250,250,100);\nborder-radius: 3px;\nwidth: 10px;\npadding: 0px 0px 0px 0px;\n}\n\n/* Top and bottom arrows*/\nQScrollBar::add-line:vertical,QScrollBar::sub-line:vertical {\nwidth: 0px;\nheight: 0px;\n}\n\n/* Scrollbar background for top and bottom*/\nQScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n{\nbackground-color:  rgb(250, 250, 250,0);\n}")
        # Calculate offset and show
        itemCount = self.ui.listWidget.count()
        if itemCount >= maxCardInWindow:
            itemCount = maxCardInWindow
        windowOffset = (self.cardHeight * itemCount) * 0.25

        qtCore.fadeWindowAnimation(start=0, end=1, duration=200, object=self)

        # Reposition the window if the user have moved it
        if windowPosition != None: self.move(windowPosition[0], (windowPosition[1] + windowOffset))

        # Check if already in optimal position
        qtCore.slideWindowAnimation(start=30, end=-windowOffset, duration=200, object=self)
        # Activate search in field
        self.ui.inputField.setFocus()

    def get_settings(self):
        # Get settings for the window

        self.recommended = prefs.get_generic_settings("useRecommendedSearch")

    def initUI(self):
        self.cardHeight = 45
        self.windowWidth = 430

        # Display UI
        self.ui = qtCore.qtUiLoader("{}interface_search.ui".format(uiPath))
        self.setWindowOpacity(0)

        # Create a layout
        self.layout = QtWidgets.QVBoxLayout()
        self.layout.addWidget(self.ui)
        self.layout.setSpacing(0)
        self.layout.setContentsMargins(0, 0, 0, 0)
        self.setLayout(self.layout)
        # Set iconBackColorOutput on frame
        self.ui.mainFrame.setStyleSheet(
            "QFrame#mainFrame\n{\nbackground-color: rgb(" + "{},{},{},{}".format(uicolor["R"], uicolor["G"],
                                                                                 uicolor["B"], uicolor[
                                                                                     "A"]) + ");\nborder-radius: 5px;\n}")
        colorOffset = -10
        self.ui.infoBar.setStyleSheet(
            "QWidget#infoBar\n{\nborder-style: None;border-top-left-radius: 5px;border-top-right-radius: 5px;background-color: rgb(" + "{},{},{},{}".format(
                (uicolor["R"] + colorOffset), (uicolor["G"] + colorOffset), (uicolor["B"] + colorOffset),
                uicolor["A"]) + ")}")
        #################
        ### SHORTCUTS ###
        #################
        QtWidgets.QShortcut(QtGui.QKeySequence("Escape"), self.ui, self.fadeCloseWindow)
        QtWidgets.QShortcut(QtGui.QKeySequence("Return"), self.ui.listWidget, self.execute)
        QtWidgets.QShortcut(QtGui.QKeySequence("Space"), self.ui.listWidget, self.execute)
        # Shortcuts for top-items
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_1), self.ui.listWidget, lambda: self.statusButtonClicked(input="Latest"))
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_2), self.ui.listWidget, lambda: self.statusButtonClicked(input="Favorites"))
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_3), self.ui.listWidget, lambda: self.statusButtonClicked(input="Blacklist"))
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_4), self.ui.listWidget, lambda: self.statusButtonClicked(input="Menu"))
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_5), self.ui.listWidget, lambda: self.statusButtonClicked(input="LastScenes"))

        # Shortcuts for windows
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_L), self.ui.listWidget,
                            lambda: display_window("actions"))
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_K), self.ui.listWidget,
                            lambda: display_window("actionInfo"))
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_P), self.ui.listWidget,
                            lambda: display_window("setup"))
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_F), self.ui.listWidget,
                            self.toggleFavorite)
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_B), self.ui.listWidget,
                            self.toggleBlacklist)
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_E), self.ui.listWidget, self.editAction)

        # Shortcuts for execution
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.Key_Tab), self.ui.listWidget, self.execute)
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.SHIFT + QtCore.Qt.Key_Return), self.ui.listWidget, self.execute)
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.SHIFT + QtCore.Qt.Key_Space), self.ui.listWidget, self.execute)
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.SHIFT + QtCore.Qt.ALT + QtCore.Qt.Key_Return), self.ui.listWidget, self.execute)
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.SHIFT + QtCore.Qt.ALT + QtCore.Qt.Key_Space), self.ui.listWidget, self.execute)
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.ALT + QtCore.Qt.Key_Return), self.ui.listWidget, self.execute)
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.ALT + QtCore.Qt.Key_Space), self.ui.listWidget, self.execute)
        QtWidgets.QShortcut(QtGui.QKeySequence("Down"), self.ui.inputField, lambda: self.changeListIndex(1))
        QtWidgets.QShortcut(QtGui.QKeySequence("Up"), self.ui.inputField, lambda: self.changeListIndex(-1))

        self.create_lists()

        # Create Menu button
        self.ui.menuButton = qtCore.fadeButton(self.ui.infoBar)
        self.ui.menuButton.setText("Menu")
        self.ui.menuButton.setIcon(QtGui.QPixmap("{}icons{}statusBar_menu.png".format(relativePath, os.sep)))
        self.infoLayout.addWidget(self.ui.menuButton)

        # Create Close button
        self.ui.closeButton = qtCore.fadeButton(self.ui.infoBar)
        self.ui.closeButton.setIcon(QtGui.QPixmap("{}icons{}closeWindow_hover.png".format(relativePath, os.sep)))
        self.ui.closeButton.setToolButtonStyle(QtCore.Qt.ToolButtonIconOnly)
        self.infoLayout.addWidget(self.ui.closeButton)

        # Connect buttons
        self.ui.inputField.textChanged.connect(self.search)
        self.ui.menuButton.clicked.connect(lambda: self.statusButtonClicked("Menu"))
        self.ui.closeButton.clicked.connect(self.fadeCloseWindow)
        self.ui.infofield.clicked.connect(self.triggerInfoField)
        self.ui.listWidget.verticalScrollBar().valueChanged.connect(self.updateSelectedView)
        self.ui.listWidget.verticalScrollBar().rangeChanged.connect(self.updateSelectedView)

        # Set properties for menu
        self.ui.inputField.setMaximumWidth(3)
        self.ui.inputField.setMinimumWidth(3)

        # Set default size
        self.resize(self.windowWidth, 50)

        # Set startup text
        self.setMatched(infoText="Type to search...")

        # Get blacklisted actions
        get_blacklisted_actions()
        get_favorite_actions()

        # Create window attributes
        self.setAttribute(QtCore.Qt.WA_TranslucentBackground)
        self.setWindowFlags(QtCore.Qt.FramelessWindowHint | QtCore.Qt.Tool)

        # Hide menubar if asked for
        if menubar is False: self.ui.infoBar.hide()

        # Install event-filter
        self.installEventFilter(self)

    def create_lists(self):

        list_names = prefs.get_list_names(filterDefault=False)

        # Get layout
        self.infoLayout = self.ui.infoBar.children()[0]
        self.button_list = {}

        # for item in list_names:
        #     self.button_list[item] = fadeButton(self.ui.infoBar)
        #     self.button_list[item].setText(item.capitalize())
        #     # Set default icons based on name
        #     self.button_list[item].setIcon(QtGui.QPixmap("{}icons{}statusBar_recent.png".format(relativePath, os.sep)))
        #     self.infoLayout.addWidget(self.button_list[item])
        #
        #     # Add connection to activate
        #     self.button_list[item].clicked.connect(lambda: self.statusButtonClicked(item))

        # Latest button
        self.ui.latestButton = qtCore.fadeButton(self.ui.infoBar)
        self.ui.latestButton.setText("Latest")
        self.ui.latestButton.setIcon(QtGui.QPixmap("{}icons{}statusBar_recent.png".format(relativePath, os.sep)))
        self.infoLayout.addWidget(self.ui.latestButton)

        # Create Recommended button
        self.ui.recommendedButton = qtCore.fadeButton(self.ui.infoBar)
        self.ui.recommendedButton.setText("Recommended")
        self.ui.recommendedButton.setIcon(QtGui.QPixmap("{}icons{}statusBar_favorite.png".format(relativePath, os.sep)))
        self.infoLayout.addWidget(self.ui.recommendedButton)
        self.ui.recommendedButton.setHidden(True)

        # Create Fav button
        self.ui.favButton = qtCore.fadeButton(self.ui.infoBar)
        self.ui.favButton.setText("Favorites")
        self.ui.favButton.setIcon(QtGui.QPixmap("{}icons{}statusBar_favorite.png".format(relativePath, os.sep)))
        self.infoLayout.addWidget(self.ui.favButton)

        # Create Blacklist button
        self.ui.blackButton = qtCore.fadeButton(self.ui.infoBar)
        self.ui.blackButton.setText("Blacklist")
        self.ui.blackButton.setIcon(QtGui.QPixmap("{}icons{}statusBar_blocked.png".format(relativePath, os.sep)))
        self.infoLayout.addWidget(self.ui.blackButton)

        self.ui.latestButton.clicked.connect(lambda: self.statusButtonClicked("Latest"))
        self.ui.recommendedButton.clicked.connect(lambda: self.statusButtonClicked("Recommended"))
        self.ui.favButton.clicked.connect(lambda: self.statusButtonClicked("Favorites"))
        self.ui.blackButton.clicked.connect(lambda: self.statusButtonClicked("Blacklist"))




    def editAction(self):
        # Get current item
        currentItem = self.ui.listWidget.currentItem()
        card = currentItem.data(109)

        # Execute from card if appliable
        status = True
        if "MAYA" in card.tags:
            # Check if alt command exist, if it does execute that
            if card.altCommandExist:
                execute_card(card, forceAlt=True)
        else:
            # Check if special card or not
            if card.special is True: status = False

            if status is True:
                card.editAction()
            else:
                print("The action cant be edited")
                # displayViewMessage(text=u"The Action '{}' cant be edited".format(card.getTitle()), mode="error")

    def updateSelectedView(self):
        buildCardInView(self.ui.listWidget)

    def statusButtonClicked(self, input=None):
        '''Activate custom modes for startup'''
        if input is None:
            sending_button = self.sender()
            name = sending_button.text()
        else:
            name = input

        inactivebuttons = [self.ui.latestButton, self.ui.recommendedButton, self.ui.favButton, self.ui.blackButton, self.ui.menuButton]


        # Set global active-button
        self.activeButton = name
        if name == "Latest":
            activeButton = inactivebuttons[0]
            self.startMode(editMode="latest")
        elif name == "Recommended":
            activeButton = inactivebuttons[1]
            self.startMode(editMode="recommended")
            self.displayRecommended()
        elif name == "Favorites":
            activeButton = inactivebuttons[2]
            self.startMode(editMode="favorites")
        elif name == "Blacklist":
            activeButton = inactivebuttons[3]
            self.displayBlackListed()
        elif name == "Menu":
            activeButton = inactivebuttons[4]
            self.displayMenu()
        elif name == "LastScenes":
            activeButton = None
            self.displayLastScene()
        elif name is "None" or name is False:
            activeButton = None
        else:
            activeButton = None

        # Remove active from inactiveButton (if not none)
        if activeButton != None:
            inactivebuttons.remove(activeButton)

        for button in inactivebuttons:
            qtCore.fadeAnimation(start="current", end=0.3, duration=100, object=button.opacityEffect)
            button.activeButton = False

        # Set active button active
        if activeButton != None:
            qtCore.fadeAnimation(start="current", end=1, duration=50, object=activeButton.opacityEffect)
            activeButton.activeButton = True

    def startMode(self, editMode=False):

        # Capture favorites and latest to use later in filter
        favoriteActionsList = prefs.get_list("Favorites")
        latestActionsList = prefs.get_list("Latest")

        # Get mode of favorites or recent
        self.mode = prefs.get_generic_settings("listMode")
        header = "Type to Search..."

        # Overwride edit-mode if inputted
        if editMode != False: self.mode = editMode

        if (self.mode == "favorites"):
            list = favoriteActionsList
            activeButton = self.ui.favButton

        else:
            list = latestActionsList
            activeButton = self.ui.latestButton

        # If edit is other then False, change the prefs from the clicked one
        if editMode != False:
            prefs.save_generic_settings("listMode", editMode)
        else:
            qtCore.fadeAnimation(start="current", end=1, duration=1000, object=activeButton.opacityEffect)
            activeButton.activeButton = True

        # Display list of prefered items if found
        self.displayItems(list, noDelay=True)

        # Set global activebutton
        self.activeButton = self.mode

        # Set matched header
        self.setMatched(infoText=header, iconPath=menuLogo)

    def setMatched(self, iconPath="", infoText=None):
        # No infotext defined
        if infoText == None:
            currentItem = self.ui.listWidget.currentItem()
            if self.ui.listWidget.count() >= 1:
                # Get information from selected item
                card = currentItem.data(109)
                # Get info from card
                name = card.getTitle()
                iconPath = card.getIconPath()
                # Set main icon to the same as first item
                self.ui.mainIcon.setIcon(QtGui.QPixmap(return_icon_path(iconPath)))
            else:
                # No infotext and no results, hmmm
                name = " - No matches - "
                iconPath = menuLogo
        else:
            name = infoText
            iconPath = iconPath
            # Set main icon to the same as first item
        # Set text
        self.ui.infofield.setText(name)

        # Set icon
        self.ui.mainIcon.setIcon(QtGui.QPixmap(return_icon_path(iconPath)))

    def triggerInfoField(self):
        # Set focus and remove text
        self.ui.inputField.setText("")
        self.ui.inputField.setFocus()

    def search(self, currentSearch, noDelay=False):
        if self.activeButton != "None":
            self.statusButtonClicked(input="None")

        start = time.time()
        # currentSearch = self.ui.inputField.text()
        self.results = []

        # Calculate width (shorter)
        qtCore.autoFieldWidth(self.ui.inputField, offset=5)

        # Set matched base
        matchedIcon = menuLogo
        matchedText = ""

        ##### Search #####
        if ":" in currentSearch:
            if "cosmos:" in currentSearch:
                search = currentSearch.split(":")[-1]
                self.results = filterSearch(mayaCommands=False, search=search)
            elif "maya:" in currentSearch:
                search = currentSearch.split(":")[-1]
                self.results = filterSearch(mayaCommands=True, search=search, filterCategory="category",
                                            filterSearch="")
            elif currentSearch == "category:":
                for category in library.cosmosCategories:
                    # Add item
                    category = clean_category_name(category)
                    self.results.append({"category": category, "name": category, "id": "COSMOS", "info": " ",
                                         "icon": "{}icons{}actionList.png".format(relativePath, os.sep),
                                         "command": "cosmos.search('category:{}:')".format(category),
                                         "tags": "None"})
        elif len(currentSearch) >= 1:
            # Split the search into smaller usable parts to refine the search
            self.results = score_data.title_match(currentSearch, dev=False, recommended=self.recommended)
            self.results = filter_blacklisted(self.results)
            self.results = sort_actions_list(actions=self.results)

        ##### ANALYZE #####
        if noDelay is False:
            if len(self.results) >= 1:
                # Display the first item
                firstItem = self.results[0]
                matchedIcon = firstItem["icon"]
                matchedText = firstItem["name"]
            else:
                # If no search at all
                if len(currentSearch) == 0:
                    matchedText = "Type to search..."
                    self.startMode()
                else:
                    matchedText = "No result to show..."

            ##### DISPLAY #####
            if len(currentSearch) != 0:
                self.displayItems(self.results, noDelay=noDelay)

                # Set matched and window-size
                self.setMatched(infoText=matchedText, iconPath=matchedIcon)
        end = time.time()


    def displayItems(self, inputList, noDelay=False):
        self.ui.listWidget.setUpdatesEnabled(False)
        self.ui.listWidget.blockSignals(True)

        listLayout = self.ui.listWidget

        if self.ui.listWidget.count() >= 1:
            self.ui.listWidget.clear()

        # Add all the items to the list
        if type(inputList) == list:
            for number, item in enumerate(inputList[:maxResultCount]):
                # Create card
                if "altCommand" in item:
                    altCommand = item["altCommand"]
                else:
                    altCommand = False
                if "id" in item:
                    id = item["id"]
                else:
                    id = None
                if "score" in item:
                    score = item["score"]
                else:
                    score = None
                createCard(name=item["name"], info=item["info"], command=item["command"], altCommand=altCommand,
                           icon=item["icon"], parent=item["category"], layout=listLayout, tags=item["tags"],
                           setIcon=True, id=id, score=score)

            # Select first item
            qtCore.selectItem(self.ui.listWidget, 0)

        buildCardInView(listLayout)
        # Set size of window

        self.setMatched()

        self.setWindowSize()

        if noDelay:
            self.enable_updates()
        else:
            self.timer = QtCore.QTimer(singleShot=True)
            self.timer.timeout.connect(self.enable_updates)
            self.timer.start(50)



    def enable_updates(self):
        self.ui.listWidget.setUpdatesEnabled(True)
        self.ui.listWidget.blockSignals(False)
        self.setWindowSize()

    def displayBlackListed(self):
        # Clear field
        self.ui.listWidget.clear()

        # Add all blacklisted to list
        self.displayItems(library.blacklistedCommands)

        # Set title
        self.setMatched(infoText="Blacklisted Actions", iconPath=menuLogo)

    def displayRecommended(self):
        # Clear field
        self.ui.listWidget.clear()

        import time
        from datetime import datetime

        # Get recommended searches
        search_list = prefs.load_searches()

        # Name list
        word_list = list(set([x["name"] for x in search_list]))

        # Get current time
        current_time = time.time()
        current_date = datetime.fromtimestamp(current_time)

        rec_items = []
        for name in word_list:
            count_list = [x["count"] for x in search_list if x["name"] == name]
            time_list = [x["last"] for x in search_list if x["name"] == name]

            # Calculate time different
            time_stamp = datetime.fromtimestamp(float(sorted(time_list)[-1]))
            sec_dur = (current_date - time_stamp).total_seconds()
            hours = divmod(sec_dur, 3600)[0]
            # minutes = divmod(sec_dur, 60)[0]
            if hours <= 48:
                rec_items.append({"name": name, "count": sum(count_list), "last": sorted(time_list)[-1]})

        rec_items = sorted(rec_items, key=lambda x: x["count"])[::-1][:20]
        rec_items = sorted(rec_items, key=lambda x: x["last"])[::-1]
        for item in rec_items:
            print(item)

        self.displayItems(rec_items)

        # Set title
        self.setMatched(infoText="Blacklisted Actions", iconPath=menuLogo)

    def displayMenu(self):

        # Clean layout
        self.ui.listWidget.clear()
        # Reset input
        self.setMatched(infoText="Cosmos Menu", iconPath=menuLogo)

        # Create items
        createCard(name=u"Add Action", command=u'cosmos.display_window("actionInfo")',
                   icon=u"{}icons{}actionsAddAction.png".format(relativePath, os.sep),
                   info=u"Add your own script", layout=self.ui.listWidget, setIcon=True, id="COSMOS",
                   absoluteIcon=True)
        createCard(name=u"ActionList", command=u'cosmos.display_window("actions")',
                   icon=u"{}icons{}actionActionsList.png".format(relativePath, os.sep),
                   info=u"View and filter actions", layout=self.ui.listWidget, setIcon=True, id="COSMOS",
                   absoluteIcon=True)
        createCard(name=u"Settings", command=u'cosmos.display_window("setup")',
                   icon=u"{}icons{}actionSettings.png".format(relativePath, os.sep), info="Open Settings",
                   layout=self.ui.listWidget, setIcon=True, id="COSMOS", absoluteIcon=True)
        createCard(name=u"Rescan", command=u"cosmos.rescan()",
                   icon=u"{}icons{}actionScan.png".format(relativePath, os.sep),
                   info=u"Scan for external changes", layout=self.ui.listWidget, setIcon=True,
                   id="COSMOS", absoluteIcon=True)
        createCard(name=u"Help/Feedback", command=u"cosmos.browser('http://cosmos.toolsfrom.space/documentation/')",
                   icon="{}icons{}actionHelp.png".format(relativePath, os.sep), info=u"Open the documentation",
                   layout=self.ui.listWidget, setIcon=True, id="COSMOS", absoluteIcon=True)
        createCard(name=u"Tutorial", command=u'cosmos.display_window("tutorial")',
                   icon=u"{}icons{}actionTutorial.png".format(relativePath, os.sep),
                   info=u"Show introduction tutorial again", layout=self.ui.listWidget, setIcon=True, id="COSMOS",
                   absoluteIcon=True)
        createCard(name=u"Donate", command=u"cosmos.browser('https://www.paypal.me/deerstranger/10')",
                   icon="{}icons{}actionHeart.png".format(relativePath, os.sep),
                   info=u"If you like this, consider supporting me as a developer :)", layout=self.ui.listWidget,
                   setIcon=True, id="COSMOS", absoluteIcon=True)

        self.updateSelectedView()
        # Set window
        self.setWindowSize()

        # Select first item
        qtCore.selectItem(self.ui.listWidget, 0)

    def displayLastScene(self):
        print("This will display the last scenes for us")

        # Clean layout
        self.ui.listWidget.clear()
        # Reset input
        self.setMatched(infoText="Cosmos Menu", iconPath=menuLogo)

        # Create items
        createCard(name=u"Add Action", command=u'cosmos.display_window("actionInfo")',
                   icon=u"{}icons{}actionsAddAction.png".format(relativePath, os.sep),
                   info=u"Add your own script", layout=self.ui.listWidget, setIcon=True, id="COSMOS",
                   absoluteIcon=True)
        createCard(name=u"ActionList", command=u'cosmos.display_window("actions")',
                   icon=u"{}icons{}actionActionsList.png".format(relativePath, os.sep),
                   info=u"View and filter actions", layout=self.ui.listWidget, setIcon=True, id="COSMOS",
                   absoluteIcon=True)
        createCard(name=u"Settings", command=u'cosmos.display_window("setup")',
                   icon=u"{}icons{}actionSettings.png".format(relativePath, os.sep), info="Open Settings",
                   layout=self.ui.listWidget, setIcon=True, id="COSMOS", absoluteIcon=True)
        createCard(name=u"Rescan", command=u"cosmos.rescan()",
                   icon=u"{}icons{}actionScan.png".format(relativePath, os.sep),
                   info=u"Scan your external changes", layout=self.ui.listWidget, setIcon=True,
                   id="COSMOS", absoluteIcon=True)
        createCard(name=u"Help/Feedback", command=u"cosmos.browser('http://cosmos.toolsfrom.space/documentation/')",
                   icon="{}icons{}actionHelp.png".format(relativePath, os.sep), info=u"Open the documentation",
                   layout=self.ui.listWidget, setIcon=True, id="COSMOS", absoluteIcon=True)
        createCard(name=u"Tutorial", command=u'cosmos.display_window("tutorial")',
                   icon=u"{}icons{}actionTutorial.png".format(relativePath, os.sep),
                   info=u"Show introduction tutorial again", layout=self.ui.listWidget, setIcon=True, id="COSMOS",
                   absoluteIcon=True)
        createCard(name=u"Donate", command=u"cosmos.browser('https://www.paypal.me/deerstranger/5')",
                   icon="{}icons{}actionHeart.png".format(relativePath, os.sep),
                   info=u"If you like this, please consider helping out", layout=self.ui.listWidget, setIcon=True,
                   id="COSMOS", absoluteIcon=True)

        self.updateSelectedView()
        # Set window
        self.setWindowSize()

        # Select first item
        qtCore.selectItem(self.ui.listWidget, 0)

    def changeListIndex(self, input):
        # Get current index from item
        currentItem = self.ui.listWidget.currentItem()

        if self.ui.listWidget.count() >= 1:
            currentIndex = self.ui.listWidget.indexFromItem(currentItem)

            # Get index from QListWidgetItem
            currentNumber = currentIndex.row()

            # Get new item and set as current
            if ((currentNumber + input) >= 0):
                if (currentNumber + input + 1) >= (self.ui.listWidget.count() + 1):
                    # Last item, set to first again
                    newItem = self.ui.listWidget.item(0)
                else:
                    # if (currentNumber + input) == self.ui.listWidget.count():
                    newItem = self.ui.listWidget.item(currentNumber + input)
            if ((currentNumber + input) == -1):
                # Select the last item from the last item (count)
                newItem = self.ui.listWidget.item(self.ui.listWidget.count() - 1)
            self.ui.listWidget.setCurrentItem(newItem)
            # Set matched
            self.setMatched()

    def setWindowSize(self):
        # Get current size

        currentSize = self.size()

        # Get size of elements
        inputField = self.ui.inputField.height()
        infobar = 0
        if self.ui.infoBar.isHidden() is False: infobar = self.ui.infoBar.height()

        list = self.ui.listWidget.count() * self.cardHeight
        padding = inputField + infobar
        newWindowHeight = padding + list

        # Limit height
        maxItems = maxCardInWindow
        maxHeight = padding + (self.cardHeight * maxItems)
        if newWindowHeight >= maxHeight: newWindowHeight = maxHeight

        qtCore.resizeWindowAnimation(start=(currentSize.width(), currentSize.height()),
                                     end=(currentSize.width(), newWindowHeight), duration=90, object=self,
                                     attribute="size")

        # Set scrollbars if more then items allowed in window
        if self.ui.listWidget.count() >= maxCardInWindow:
            self.ui.listWidget.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAsNeeded)
        else:
            self.ui.listWidget.setVerticalScrollBarPolicy(QtCore.Qt.ScrollBarAlwaysOff)

    def resizeEvent(self, event):
        self.repaint()

    def toggleFavorite(self):
        # Get selected item
        currentItem = self.ui.listWidget.currentItem()

        if self.ui.listWidget.count() >= 1:
            currentSearch = self.ui.inputField.text()
            # Get information from selected item
            try:
                card = currentItem.data(109)
            except:
                card = None

            if card != None:
                # Get info from card and continue if not special
                special = card.special
                if special is False:
                    card.saveFavorite()

    def toggleBlacklist(self):
        # Get selected item
        currentItem = self.ui.listWidget.currentItem()
        curentIndex = self.ui.listWidget.currentRow()

        if self.ui.listWidget.count() >= 1:
            # Get information from selected item
            try:
                card = currentItem.data(109)
            except:
                card = None

            if card != None:
                # Get info from card and continue if not special
                special = card.special
                if special is False:
                    get_blacklisted_actions()
                    blackListed = False
                    # # If blacklist items exist, check from that
                    if (len(library.blacklistedCommands) >= 1):
                        # If it is, compare to all the existing items in the UI
                        for number, blacklisted in enumerate(library.blacklistedCommands):
                            if card.name in blacklisted["name"]:
                                if card.category in blacklisted["category"]:
                                    if card.description in blacklisted["info"]:
                                        blackListed = True

                    if blackListed:
                        prefs.remove_list_item("Blacklist", card.name, card.category, card.description)
                    else:
                        prefs.addBlacklisted(card)

                    # Resize window
                    self.setWindowSize()

                    ### Update interfaces ###

                    # Refresh blacklist list
                    get_blacklisted_actions()

                    # Search-window
                    if self.activeButton == "None" or self.activeButton == "Blacklist":
                        self.ui.listWidget.takeItem(curentIndex)

                    # Update other windows
                    windowInstances = returnInstances(genericDockingWindow)
                    for window in windowInstances:
                        try:
                            if window.ui.checkbox_blacklisted.isChecked() == True:
                                window.filter()
                        except:
                            pass

    def execute(self):
        # Get current item
        currentItem = self.ui.listWidget.currentItem()

        if self.ui.listWidget.count() >= 1:
            currentSearch = self.ui.inputField.text()
            # Get information from selected item
            card = currentItem.data(109)
            # Get info from card
            name = card.name
            category = card.getCategory()
            id = card.getId()
            special = card.special

            ############## EXECUTE THE COMMAND
            result = execute_card(card)

            if (result == "success"):
                # Save info and close only when not special case
                if special == False:
                    # Add search favorite and last item
                    #prefs.addRecentSearch(card)
                    prefs.add_list_item(card, "Latest")
                    # Save the search in the searchlist
                    if (len(currentSearch) >= 1):
                        if id is None:
                            prefs.save_recommended_search(currentSearch, (name + "@" + category))
                        else:
                            prefs.save_recommended_search(currentSearch, name)

                    if (prefs.get_generic_settings("alwaysOn") == False):
                        self.tryClose()
                    else:
                        self.activateWindow()
                else:
                    pass

    def tryClose(self):
        if prefs.get_generic_settings("alwaysOn") == False:
            # Closing of window or not
            modifierKeys = QtWidgets.QApplication.keyboardModifiers()
            if modifierKeys == QtCore.Qt.ShiftModifier:
                self.activateWindow()
            elif modifierKeys == (QtCore.Qt.ShiftModifier | QtCore.Qt.AltModifier):
                self.activateWindow()
            else:
                self.fadeCloseWindow()

    # Fade the window
    def fadeCloseWindow(self):
        try:
            qtCore.fadeWindowAnimation(start=1, end=0, duration=300, object=self)
            qtCore.slideWindowAnimation(start=0, end=200, duration=250, object=self)
        except:
            pass
        self.timer = QtCore.QTimer(singleShot=True)
        self.timer.timeout.connect(self.deleteWindow)
        self.timer.start(400)

    def deleteWindow(self):
        try: self.deleteLater()
        except: pass
        del self

    # Make the window dragable without border
    def mousePressEvent(self, event):
        self.offset = event.pos()

    def mouseMoveEvent(self, event):
        try:
            x = event.globalX()
            y = event.globalY()
            x_w = self.offset.x()
            y_w = self.offset.y()
            self.move(x - x_w, y - y_w)
            global windowPosition
            windowPosition = [self.pos().x(), self.pos().y()]
        except:
            return "Something"

    # Events for changing focus and stuff
    def eventFilter(self, object, event):
        if event.type() == QtCore.QEvent.GrabMouse:
            return QtWidgets.QMainWindow.eventFilter(self, object, event)
        elif event.type() == QtCore.QEvent.WindowActivate or event.type() == QtCore.QEvent.Enter:
            # Set focus on the textfield
            self.activateWindow()
            return QtWidgets.QMainWindow.eventFilter(self, object, event)
        elif event.type() == QtCore.QEvent.WindowDeactivate:
            try:
                self.tryClose()
            except:
                pass
            return QtWidgets.QMainWindow.eventFilter(self, object, event)
        elif event.type() == QtCore.QEvent.FocusIn:
            return QtWidgets.QMainWindow.eventFilter(self, object, event)
        elif event.type() == QtCore.QEvent.FocusOut:
            self.fadeCloseWindow()
            return QtWidgets.QMainWindow.eventFilter(self, object, event)
        else:
            return QtWidgets.QMainWindow.eventFilter(self, object, event)
            # return 0


class createCategoryWindow(genericWindow):
    def __init__(self, parent=None):
        interfacePath = "{}interface_createCategory.ui".format(uiPath)
        super(createCategoryWindow, self).__init__(interfacePath, parent)
        try:
            exec('createCategory_openWindow.close()')
        except:
            pass

        self.editMode = False
        self.activePath = None

        # Get the scriptpath
        self.scriptPath = prefs.get_script_path_list()

        # Connect buttons
        self.ui.cancelButton.clicked.connect(self.close)
        self.ui.saveButton.clicked.connect(self.appendCategoryToList)
        self.setWindowFlags(QtCore.Qt.FramelessWindowHint | QtCore.Qt.Tool)
        self.setModal(1)

        self.show()

    def fillCategories(self, scriptPath):
        # Fill categories
        self.activePath = scriptPath

        categories = library.get_categories_from_path(self.activePath)
        self.ui.categoryList.addItem("- None -")
        for category in categories:
            self.ui.categoryList.addItem(clean_category_name(category))

    def appendCategoryToList(self):
        # Check if a subcategory is selected
        newCategoryName = self.ui.nameField.text()
        subCategory = self.ui.categoryList.currentText()
        if subCategory != "- None -":
            newCategoryName = subCategory + os.sep + newCategoryName

        # Sanity check name
        if len(newCategoryName) >= 2:
            # Check if the category exists before
            status = True
            for category in library.get_categories_from_path(self.activePath):
                if newCategoryName == clean_category_name(category):
                    displayViewMessage(text="Category already exists", mode="error")
                    self.ui.nameLabel.setStyleSheet("color: rgb(206, 69, 31,255);")
                    self.ui.nameLabel.setText("Choose a name not already taken:")
                    status = False
            if status is True:

                # Change for all open windows (if they are open)
                windowInstances = returnInstances(actionInfoWindow)
                for window in windowInstances:
                    window.fillCategoryInterface(append=newCategoryName)

                self.close()
        else:
            self.ui.nameLabel.setStyleSheet("color: rgb(186, 49, 31,240);")
            self.ui.nameLabel.setText("Category Name please:")


class actionInfoWindow(genericWindow):
    # toolName = 'cosmosActionInfo'
    def __init__(self, parent=None, title=None):
        interfacePath = "{}interface_action.ui".format(uiPath)
        super(actionInfoWindow, self).__init__(interfacePath, parent)

        self.resize(600, 500)  # width, height
        self.editMode = False
        self.action = None

        self.action_tags = [] # Variable to store all the tags for the action and handle them in session

        self.setWindowTitle("Cosmos Action")

        # Connect buttons
        self.ui.saveButton.clicked.connect(self.saveAction)
        self.ui.testButton.clicked.connect(self.testAction)
        self.ui.openFolderButton.clicked.connect(self.openLocation)
        self.ui.bigIcon.clicked.connect(self.pickIcon)
        self.ui.addCategoryButton.clicked.connect(self.displayCategory)
        self.ui.deleteButton.clicked.connect(self.deleteActionQuestion)
        self.ui.duplicateButton.clicked.connect(self.duplicateAction)
        self.ui.tagsField.editingFinished.connect(self.complete_add_tag)

        self.ui.pathField.currentIndexChanged.connect(lambda: self.fillCategoryInterface())

        # Add completer to tags field
        self.tag_completer = QtWidgets.QCompleter(score_data.tags)
        self.tag_completer.setFilterMode(QtCore.Qt.MatchContains)
        self.tag_completer.setCaseSensitivity(QtCore.Qt.CaseInsensitive)
        self.tag_completer.setMaxVisibleItems(10)
        self.tag_completer.setCompletionMode(QtWidgets.QCompleter.PopupCompletion)
        self.ui.tagsField.setCompleter(self.tag_completer)
        self.ui.tagsField.setStyleSheet("background-color: rgb(0,0,0,0)")
        self.tag_completer.activated.connect(self.onTagActivated)

        # Connect changeCommand for fields
        for field in [self.ui.nameField, self.ui.descriptionField, self.ui.tagsField, self.ui.iconField,
                      self.ui.scriptContentField]:
            field.textChanged.connect(self.updateField)

        # Hide elements on startup
        self.ui.addTagButton.hide()
        self.ui.openFolderButton.hide()
        self.ui.iconFieldFrame.hide()
        self.ui.deleteButton.hide()
        self.ui.duplicateButton.hide()
        self.ui.iconFieldCloseButton.clicked.connect(self.ui.iconFieldFrame.hide)

        # Create opacity effect for add-popup
        self.addOpacityEffect = QtWidgets.QGraphicsOpacityEffect(self)
        self.ui.addPopup.setGraphicsEffect(self.addOpacityEffect)
        self.ui.addPopup.setAutoFillBackground(True)
        self.addOpacityEffect.setOpacity(0)

        # Create opacity effect for test-popup
        self.testOpacityEffect = QtWidgets.QGraphicsOpacityEffect(self)
        self.ui.testPopup.setGraphicsEffect(self.testOpacityEffect)
        self.ui.testPopup.setAutoFillBackground(True)
        self.testOpacityEffect.setOpacity(0)

        # Format code-area
        self.ui.scriptContentField.setTabStopWidth(90)

        # Add highlight on code area
        highlight = syntax_pars.PythonHighlighter(self.ui.scriptContentField.document())

        # Fill the script-path list
        self.script_paths = prefs.get_script_path_list()
        self.script_path_names = prefs.get_script_path_names()
        for name in self.script_path_names: self.ui.pathField.addItem(name)

        # Add shortcuts
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_T), self.ui, self.displayTagsField)
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_F), self.ui, self.ui.iconFieldFrame.show)
        QtWidgets.QShortcut(QtGui.QKeySequence(QtCore.Qt.CTRL + QtCore.Qt.Key_S), self.ui, self.saveAction)

        # Make accept drops
        self.setAcceptDrops(True)

        # Select the first index of the path list
        self.ui.pathField.setCurrentIndex(0)  # Set index
        self.fillCategoryInterface()

        # Set logo for statusbar
        self.ui.bigIcon.setIcon(QtGui.QPixmap("{}".format((relativePath.replace("\\", "/") + 'icons/addIcon.png'))))

        self.show()

    def displayCategory(self):
        display_window("createCategory")
        # Get the categorywindow and set actionpath
        windowInstances = returnInstances(createCategoryWindow)
        # Set active path in the instance
        windowInstances[0].fillCategories(self.ui.pathField.currentText())

    def attachAction(self, actionId):
        self.action = library.get_action_by_id(actionId)

        if self.action != None:
            # Get path to the file
            self.actionFile = library.get_action_path_by_id(actionId)
            actionScriptPath = return_script_path_only(self.actionFile)

            #################################################
            ##### Apply default info to field to change #####
            #################################################
            # Top info
            self.ui.nameField.setText(self.action["name"])
            self.ui.descriptionField.setText(self.action["info"])
            #self.ui.tagsField.setText(self.action["tags"])
            # Process tags and handle as list
            self.action_tags = self.action["tags"].split(",")
            self.create_tag_cards()
            # Icon
            self.ui.iconField.setText(self.action["icon"])
            self.ui.bigIcon.setIcon(QtGui.QPixmap(loadActionIcon(self.action["icon"])))

            self.script_paths = prefs.get_script_path_list()
            self.script_path_names = prefs.get_script_path_names()



            # Set path
            for index, path in enumerate(self.script_paths):
                if actionScriptPath in path:
                    ## Set index
                    self.ui.pathField.setCurrentIndex(index)
                    break
            # Set category
            self.fillCategoryInterface(setItem=self.action["category"])

            # Get script and language of it
            self.scriptExstension = self.action["syntax"]
            if (self.scriptExstension == "mel"): self.ui.melButton.setChecked(1)
            if (self.scriptExstension == "python"): self.ui.pythonButton.setChecked(1)

            # Set code
            self.ui.scriptContentField.clear()
            self.ui.scriptContentField.insertPlainText(self.action["command"])

            # Enable delete Action button
            self.ui.deleteButton.show()
            self.ui.duplicateButton.show()
            self.ui.openFolderButton.show()
            self.ui.saveButton.setText("Save Changes")

            self.editMode = False

    def displayTagsField(self):
        self.ui.tagsField.setFocus()

    def onTagActivated(self):
        QtCore.QTimer.singleShot(0, self.ui.tagsField.clear)

    def complete_add_tag(self):
        '''Takes the input of the tagField, add it to the self.action_tags and recreates the cards'''
        tag_text = self.ui.tagsField.text()
        # Reset textfield input
        self.ui.tagsField.setText("")

        # Only continue if text are there
        if len(tag_text) >= 1:

            # Sanitise input
            tag_text = tag_text.replace(" ", "")
            tag_text = tag_text.replace(",", "")

            self.action_tags.append(tag_text)

            self.create_tag_cards()

            # Set focus back to textfield
            self.ui.tagsField.setFocus()

            self.ui.tagsField.setText("")
    def create_tag_cards(self):
        '''Takes the existing tags and convert them to cards'''
        tags = self.action_tags

        # Get layout
        layout = self.ui.tagsButtonLayout.children()[0]

        # List all existing items and remove
        for number, object in enumerate(self.ui.tagsButtonLayout.children()):
            if "tagItem" in object.objectName():
                object.deleteLater()

        # Reset tagfield
        self.ui.tagsField.setText("")

        # For every tag create a button (reversed list)
        for tagName in tags[::-1]:
            # Check that the tag have more then 3 characters
            if len(tagName) >= 2:
                # Create tag
                button = qtCore.tagButton()
                button.setTitle(tagName)

                # Connect signals
                button.clicked.connect(self.ui.tagsField.setFocus)

                # Add to the list
                layout.insertWidget(0, button)

                # Create delete tag button
                removeButton = qtCore.tagButton()

                # Connect signals
                removeButton.tag = tagName
                removeButton.closeMode()
                removeButton.clicked.connect(self.removeTag)

                # Add to the list
                layout.insertWidget(1, removeButton)


    def removeTag(self):
        # Get tag name
        tag = self.sender()
        tagName = tag.tag

        # Remove from list
        self.action_tags.remove(tagName)

        # Rebuild tags
        self.create_tag_cards()

    def fillCategoryInterface(self, append=None, setUser=False, setItem=False):
        # Reset list
        self.ui.listField.clear()

        # Get active path from the path UI by converting the name into path
        selected_name = self.ui.pathField.currentText()
        selected_index = self.script_path_names.index(selected_name)
        activePath = self.script_paths[selected_index]

        if append != None: self.ui.listField.addItem(append)

        # For every file in the category list
        categories = library.get_categories_from_path(activePath)
        for category in categories:
            self.ui.listField.addItem(clean_category_name(category))

        # Set the current category to User, if it exists
        if setUser == True:
            for category in library.get_categories_from_path(activePath):
                if "user" in category:
                    userIndex = self.ui.listField.findText("user")
                    # Set index
                    if userIndex >= 0:
                        self.ui.listField.setCurrentIndex(userIndex)
                    else:
                        self.ui.listField.setCurrentIndex(0)
                    break

        # Set the current category
        if setItem != False:
            for index, category in enumerate(library.get_categories_from_path(activePath)):
                if setItem in category:
                    self.ui.listField.setCurrentIndex(index)
                    break

    def dragEnterEvent(self, event):
        if event.mimeData().hasFormat('text/plain'):
            event.accept()
            # Add highlight to window
            self.ui.frame.setStyleSheet(
                'border-radius: 5px;\nbackground-color: rgb(' + "{},{},{},{}".format((uicolor["R"] + 20),
                                                                                     (uicolor["G"] + 20),
                                                                                     (uicolor["B"] + 20),
                                                                                     uicolor["A"]) + ');')

    def dragLeaveEvent(self, e):
        # Reset highlight to window
        self.ui.frame.setStyleSheet(
            'border-radius: 5px;\nbackground-color: rgb(' + "{},{},{},{}".format(uicolor["R"], uicolor["G"],
                                                                                 uicolor["B"], uicolor["A"]) + ');')

    def dropEvent(self, event):
        # Reset highlight to window
        self.ui.frame.setStyleSheet(
            'border-radius: 5px;\nbackground-color: rgb(' + "{},{},{},{}".format(uicolor["R"], uicolor["G"],
                                                                                 uicolor["B"], uicolor["A"]) + ');')

        # Get dropped text
        droppedCommand = event.mimeData().text()

        ########## Get info from shelf ##########
        # Get current shelf
        mayaShelf = mel.eval('global string $gShelfTopLevel; $temp=$gShelfTopLevel;')
        currentTab = cmds.shelfTabLayout(mayaShelf, q=True, selectTab=True)

        # Get all the items in the current tab
        buttons = cmds.layout(currentTab, q=True, ca=True)
        for button in buttons:
            if "separator" not in button:
                if (cmds.shelfButton(button, q=True, command=True) == droppedCommand):
                    name = cmds.shelfButton(button, q=True, label=True)
                    info = cmds.shelfButton(button, q=True, annotation=True)
                    command = cmds.shelfButton(button, q=True, command=True)
                    image = cmds.shelfButton(button, q=True, image1=True)
                    language = cmds.shelfButton(button, q=True, stp=True)

                    # If the characters-length in the name is to long, we assume that its not defined
                    if (len(name) >= 40):
                        # check if there is any info
                        if (len(info) >= 5):
                            if (len(info) <= 40):
                                name = info
                            else:
                                name = ""
                        else:
                            name = ""

                    # Check if the image is a maya one
                    for iconName in cmds.resourceManager(nameFilter="*"):
                        if (iconName == image):
                            image = ":{}".format(image.split(".")[0])

                    # Set Script-field
                    self.ui.scriptContentField.clear()
                    self.ui.scriptContentField.insertPlainText(command)

                    # Update info
                    self.ui.nameField.setText(name)
                    self.ui.descriptionField.setText(info)
                    self.action_tags = [currentTab]

                    # Set icon
                    self.ui.iconField.setText(image)
                    self.ui.bigIcon.setIcon(QtGui.QPixmap(image))

                    # Convert the tags
                    self.create_tag_cards()

                    # Set type if mel
                    if (language == "mel"): self.ui.melButton.setChecked(1)
                    if (language == "python"): self.ui.pythonButton.setChecked(1)

    def deleteActionQuestion(self):
        self.ui.deleteButton.setText("Press again to Delete")
        self.timer = QtCore.QTimer(singleShot=True)
        self.timer.timeout.connect(lambda: self.ui.deleteButton.clicked.connect(self.deleteAction))
        self.timer.start(50)

        # Change bitton on color
        self.ui.deleteButton.setStyleSheet(
            "QPushButton\n{\n\nbackground-color: rgb(186, 49, 31,240);\ncolor: rgb(250, 250, 250);\nborder-radius: 5px;\npadding: 2px;\n}\n\nQPushButton:hover\n{\n\nbackground-color: rgb(196, 59, 41,240);\n}\n\nQPushButton:pressed\n{\n\nbackground-color: rgb(176, 39, 21,240);\n}")

    def deleteAction(self):
        # Get action
        result = library.remove_action_file(self.actionFile)
        # if result is True

        # Reload the actions
        get_content()
        update_score()

        self.fadeCloseWindow()

    def duplicateAction(self):
        # Duplicate the action
        new_name, ok = QtWidgets.QInputDialog.getText(self, 'New Action Name', 'Specify a new name for this action:',
                                                      text=self.action["name"] + " DUP")

        if ok:
            print("ID:", self.action["id"])

            new_action = library.duplicate_action(self.action, new_name=new_name)

            print("NEW ID:", new_action["id"])

            # Open new window with new action
            display_window("actionInfo")
            cosmosActionInfoWindow.attachAction(new_action["id"])

    def updateField(self, hello=None, input=None, mode="reset", *args):
        self.editMode = True
        # Check mode
        characterString = """'"*"""
        if (mode == "error"):
            color = "rgb(255,84,0)"
        elif (mode == "reset"):
            color = "rgb(0,0,0, 0)"

        styleSheetString = "QLineEdit:focus\n{\nbackground-color: rgb(0, 0, 0,0);\n}\n\nQLineEdit\n{\nbackground-color: rgb(0, 0, 0,0);\ncolor: rgb(200, 200, 200);\npadding: 5px;\nborder-radius: 5px;\nborder-style: solid;\nborder-color: " + color + ";\nborder-width: 1px;\n}"

        if input == None:
            sending_button = self.sender()

        # Check what input
        if (input == "name"):
            self.ui.nameField.setStyleSheet(styleSheetString)
            text = self.ui.nameField.text()

            # Set field width of text
            qtCore.autoFieldWidth(self.ui.nameField, offset=15, minimum=80)

            for character in characterString:
                if character in text: self.ui.nameField.setText(text.replace(character, ""))
        elif (input == "description"):
            self.ui.descriptionField.setStyleSheet(styleSheetString)
            text = self.ui.descriptionField.text()

            # Set field width of text
            qtCore.autoFieldWidth(self.ui.descriptionField, offset=15, minimum=80)

            for character in characterString:
                if character in text: self.ui.descriptionField.setText(text.replace(character, ""))
        elif (input == "category"):
            styleSheetString = "﻿QComboBox\n{\nbackground-color: rgb(0, 0, 0,50);\ncolor: rgb(200, 200, 200);\npadding-left: 4px;\nborder-top-left-radius: 5px;\nborder-top-right-radius: 0px;\nborder-bottom-left-radius: 5px;\nborder-bottom-right-radius: 0px;\nborder-style: solid;\nborder-color: " + color + ";\nborder-width: 1px;\n}\n\nQComboBox QAbstractItemView {\ncolor: rgb(200, 200, 200);\n}\n\nQComboBox::item {\nborder: 0px solid black;\nmin-height: 35px; \n}\n\n\n/* #Items */\nQListView::item {\nmin-height: 35px; \nborder: solid;\nborder-width:1;\n}\n\n\n\n\n\n/* Button when open*/\n\nQComboBox:!editable:on, QComboBox::drop-down:editable:on {\nbackground-color: rgb(0, 0, 0,50);\ncolor: rgb(200, 200, 200);\npadding-left: 4px;\n\n}\n\n/* Normal arrow look*/\n\nQComboBox::down-arrow\n{\n	margin-top: 4px;\n	border-left: 7px solid rgb(27, 42, 50,0);\n	border-right: 7px solid rgb(27, 42, 50,0);\n	border-bottom: 7px solid rgb(27, 42, 50,0);\n	border-top: 6px solid  rgb(200,200, 200);\n}\n\n/* Arrow on open*/\n\nQComboBox:down-arrow:on\n{\n	margin-bottom: 4px;\n	border-left: 7px solid rgb(27, 42, 50,0);\n	border-right: 7px solid rgb(27, 42, 50,0);\n	border-top: 7px solid rgb(27, 42, 50,0);\n	border-bottom: 6px solid  rgb(200,200, 200);\n}\n\n/* Arrow background */\n\nQComboBox::drop-down {\n    subcontrol-origin: padding;\n    subcontrol-position: top right;\n	padding-right: 10px;\nborder-bottom-left-radius: 5px;\nborder-top-left-radius: 5px;\nborder-bottom-right-radius: 0px;\nborder-top-right-radius: 0px;\n}\n\n\n\n\n/* Scrollbar  */\nQScrollBar:vertical\n{\nbackground-color: rgb(0, 0, 0,0);\nwidth: 8px;\n}\n\n/* Scrollbar background for top and bottom*/\nQScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n{\nbackground-color: rgb(200,200, 200,100);\nwidth: 6px;\n}\n\n\n/* The scrollbar itself*/\nQScrollBar::handle:vertical \n{\nbackground-color: rgb(250,250,250,150);\nborder-radius: 4px;\nwidth: 8px;\n}\n\n/* Top and bottom arrows*/\nQScrollBar::add-line:vertical,QScrollBar::sub-line:vertical {\nwidth: 0px;\nheight: 0px;\n}\n\n/* Scrollbar background for top and bottom*/\nQScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n{\nbackground-color:  rgb(250, 250, 250,0);\n}"
            self.ui.listField.setStyleSheet(styleSheetString)
        elif (input == "tags"):
            self.ui.tagsField.setStyleSheet(styleSheetString)
            text = self.ui.tagsField.text()
            for character in characterString:
                if character in text: self.ui.tagsField.setText(text.replace(character, ""))
        elif (input == "icon"):
            self.ui.bigIcon.setStyleSheet(styleSheetString)
        elif (input == "script"):
            styleSheetString = "QPlainTextEdit\n{\nbackground-color: rgb(0, 0, 0,50);\ncolor: rgb(180,180,180);\npadding: 5px;\nborder-style: solid;\nborder-color: " + color + ";\nborder-width: 1px;\n}\n/* Scrollbar  */\nQScrollBar:vertical\n{\nbackground-color: rgb(0, 0, 0,50);\nwidth: 8px;\n}\n\n/* Scrollbar background for top and bottom*/\nQScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n{\nbackground-color: rgb(200,200, 200,100);\nwidth: 6px;\n}\n\n\n/* The scrollbar itself*/\nQScrollBar::handle:vertical \n{\nbackground-color: rgb(250,250,250,150);\nborder-radius: 4px;\nwidth: 8px;\n}\n\n/* Top and bottom arrows*/\nQScrollBar::add-line:vertical,QScrollBar::sub-line:vertical {\nwidth: 0px;\nheight: 0px;\n}\n\n/* Scrollbar background for top and bottom*/\nQScrollBar:sub-page:vertical,QScrollBar:add-page:vertical\n{\nbackground-color:  rgb(250, 250, 250,0);\n}"
            self.ui.scriptContentField.setStyleSheet(styleSheetString)
        else:
            if sending_button.objectName() == "scriptContentField":
                self.updateField(input="script", mode=mode)
            elif sending_button.objectName() == "nameField":
                self.updateField(input="name", mode=mode)
            elif sending_button.objectName() == "descriptionField":
                self.updateField(input="description", mode=mode)
            else:
                sending_button.setStyleSheet(styleSheetString)

    def animatePopup(self, input, message, mode):
        if (input == "test"):
            element = self.ui.testPopup
            elementEffect = self.testOpacityEffect
            self.ui.testPopup.setText(message)
            testTimer = QtCore.QTimer(singleShot=True)
            self.timer = testTimer
        if (input == "add"):
            element = self.ui.addPopup
            elementEffect = self.addOpacityEffect
            self.ui.addPopup.setText(message)
            addTimer = QtCore.QTimer(singleShot=True)
            self.timer = addTimer

        # Set the stylesheet based on the mode
        if (mode == "error"):
            element.setStyleSheet("color: rgb(255, 84, 0);")
        elif (mode == "reset"):
            element.setStyleSheet("color: rgb(160, 160, 160);")

        qtCore.fadeAnimation(start=0, end=1, duration=800, object=elementEffect)

        # Create timer and fade out after like 10 sec
        self.timer.timeout.connect(
            lambda: qtCore.fadeAnimation(start="current", end=0, duration=500, object=elementEffect))
        self.timer.start(1500)

    def openLocation(self):
        print("Opening location for Action:", self.actionFile)
        prefs.openFolder(self.actionFile)

    def testAction(self):
        if self.testOpacityEffect.opacity() >= 0.5:
            qtCore.fadeAnimation(start="current", end=0, duration=200, object=self.testOpacityEffect)

        # Create undo que
        exec("cmds.undoInfo(openChunk=True)")

        # Get the info from UI and compile from script
        script = self.ui.scriptContentField.toPlainText().encode("utf-8")

        # Generate temp-file for the content and read from it
        tempFile = tempfile.TemporaryFile()
        tempFile.write(script)
        # Read data from file
        tempFile.seek(0)
        script = tempFile.read()

        # Now close the file, it will be removed
        tempFile.close()

        # Set status
        status = True

        # Check if fields are empty
        if (script == ""):
            self.updateField("", input="script", mode="error")
            status = False

        # Check if the command exists in the script, only if the two fields are filled out
        if (status == True):
            # Check if Mel or Python
            scriptType = "python"
            if (self.ui.melButton.isChecked() == True):
                scriptType = "mel"
            # Execute the script
            try:

                # Execute based on type
                if scriptType is "python":
                    execute_python(script)
                else:
                    execute_mel(script)

                # Display succes message
                self.animatePopup("test", "No errors found ", "reset")
                displayViewMessage(text="Sucefully executed {} script".format(scriptType))
            except Exception as errorMessage:
                self.animatePopup("test", str(errorMessage), "error")
                displayViewMessage(text=str(errorMessage), mode="error")
                logger.error(u'Adding Action problem: {}'.format(errorMessage))
                raise
        else:
            self.animatePopup("test", "No code found...", "error")

        # Disable undo que
        exec("cmds.undoInfo(closeChunk=True)")

    def saveAction(self):
        # Get the info from UI and compile from script
        status = True

        # Get data from fields
        name = self.ui.nameField.text()
        description = self.ui.descriptionField.text()
        tags = ",".join(self.action_tags)
        iconPath = self.ui.iconField.text()
        script = self.ui.scriptContentField.toPlainText()
        category = self.ui.listField.currentText()

        # Get Full path
        selected_name = self.ui.pathField.currentText()
        selected_index = self.script_path_names.index(selected_name)
        actionPath = self.script_paths[selected_index]

        categoryPath = actionPath + category

        if self.ui.melButton.isChecked() is True:
            format = "mel"
        else:
            format = "python"

        # Check if fields are empty
        if (name == ""):
            self.updateField("", input="name", mode="error")
            status = False
        if (description == ""):
            self.updateField("", input="description", mode="error")
            status = False
        if (script == ""):
            self.updateField("", input="script", mode="error")
            status = False
        if (category == ""):
            self.updateField("", input="category", mode="error")
            status = False
        # Continue if status is true:
        if (status == True):

            # Sanity check the text
            filterList = """'$#}";@`>"""

            safe = True
            character = ""
            for filter in filterList:
                if filter in name:
                    character = filter
                    safe = "Name"
                    self.updateField(input="name", mode="error")
                elif filter in description:
                    character = filter
                    safe = "Description"
                    self.updateField(input="description", mode="error")
                elif filter in tags:
                    character = filter
                    safe = "Tags"
                    self.updateField(input="tags", mode="error")

            if safe is True:

                # Check if folder exists, if not create it
                if not os.path.exists(categoryPath):
                    os.makedirs(categoryPath)
                    # Create category-handler
                    prefs.write_category(categoryPath)

                # NEW ACTION - If new action
                if self.action is None:
                    # Save the action

                    library.write_action_to_file(name=name, info=description, tags=tags, icon=iconPath, command=script,
                                        syntax=format, location=categoryPath)
                    status = True
                # EDIT ACTION - IF action attached
                else:
                    updatedCategoryStatus = False
                    updatedTagsStatus = self.action["tags"] != tags
                    updatedNameStatus = self.action["name"] != name
                    updatedInfoStatus = self.action["info"] != description
                    updatedIconStatus = self.action["icon"] != iconPath

                    # Edit the current action on file
                    library.edit_action_on_file(file=self.actionFile, name=name, info=description, tags=tags, icon=iconPath,
                                       command=script, syntax=format)

                    # Edit favorite if exists
                    for list_name in prefs.get_list_names(filterDefault=False):
                        prefs.update_list(list_name=list_name, old_name=self.action["name"], name=name, info=description,tags=tags, iconPath=iconPath)

                    # If its the same category, move the file
                    if clean_category_name(self.action["category"]) != category:
                        oldFile = self.actionFile
                        newPath = actionPath + os.sep + category

                        # Check if folder exists, if not create it
                        if not os.path.exists(newPath):
                            os.makedirs(newPath)

                        shutil.move(oldFile, newPath)
                        updatedCategoryStatus = True
                if (status == True):
                    # Message that its added
                    if self.action is None:
                        displayViewMessage(text=u"'{}' was added to your Actionsfolder".format(name))
                        logger.info(u'New action added: "{}" in {}'.format(name, category))
                    else:
                        displayViewMessage(text=u"'{}' updated".format(name))
                        logger.info(u'Action updated: "{}" in {}'.format(name, category))

                    # Reset edit mode
                    self.editMode = False

                    # Reload the actions
                    get_content()
                    update_score()


                    windowInstances = returnInstances(genericDockingWindow)

                    if self.action is None:
                        # Update the actionlist if open
                        for window in windowInstances:
                            window.getActionProperties()
                            window.filter()
                    else:
                        # Set variables
                        updatedName = None
                        updatedCategory = None
                        updatedCommand = None
                        updatedTags = None
                        updatedIcon = None
                        updatedInfo = None

                        # Update info if cards
                        if updatedNameStatus is True: updatedName = name
                        if updatedTagsStatus is True: updatedTags = tags
                        if updatedInfoStatus is True: updatedInfo = description
                        if updatedIconStatus is True: updatedIcon = iconPath
                        if updatedCategoryStatus is True: updatedCategory = categoryPath

                        for window in windowInstances:
                            # Try updating the card
                            if updatedTagsStatus or updatedCategoryStatus:
                                # If category is new and the current sorting is by categories
                                window.getActionProperties()
                            if updatedNameStatus or updatedTagsStatus or updatedInfoStatus or updatedIconStatus or updatedCategoryStatus:
                                window.updateCard(self.action["name"], setName=updatedName, setCategory=updatedCategory,
                                                  setTags=updatedTags, setIcon=updatedIcon, setInfo=updatedInfo,
                                                  setFavorite=None)
                            if window.sortingMethod == "Category" or window.sortingMethod == "Path":
                                if updatedCategoryStatus is True:
                                    window.filter()
                            elif window.sortingMethod == "Tags":
                                if updatedTagsStatus is True:
                                    window.filter()
                            elif window.sortingMethod == "Alphabetical":
                                if updatedNameStatus is True:
                                    window.filter()

                    modifierKeys = QtWidgets.QApplication.keyboardModifiers()
                    if modifierKeys == QtCore.Qt.ShiftModifier:
                        if self.action is None:
                            # Reset Window
                            self.ui.nameField.setText("")
                            self.ui.descriptionField.setText("")
                            self.ui.tagsField.setText("")
                            self.ui.iconField.setText("")
                            self.ui.scriptContentField.clear()
                            self.ui.pythonButton.setChecked(1)
                    else:
                        # Close window
                        self.fadeCloseWindow()
                else:
                    self.animatePopup("add", "Something wrong when adding the script...our bad", "error")
                    logger.error("Something wrong when adding the script...our bad")
            else:
                self.animatePopup("add", "Unsafe character '{}' in {} field".format(character, safe), "error")
        else:
            # Set visibility for text
            if len(category) == 0:
                self.animatePopup("add", "No category selected, create a new one", "error")
            else:
                self.animatePopup("add", "You need to fill in all fields", "error")

    def pickIcon(self):
        # Check if a iconpath was open before, otherwise create a new one
        try:
            path = lastIconPath
        except:
            # Get the last scriptpath
            path = prefs.get_script_path_list()[-1]

        dialog = QtWidgets.QFileDialog()
        # Set filter
        filters = "Images (*.png *.xpm *.jpg *.jpeg *.bmp, *.svg)"

        dialog.setFileMode(QtWidgets.QFileDialog.ExistingFile)

        file = dialog.getOpenFileName(None, 'Pick icon', path, filters)

        # Set textfield text if returns true
        if (len(file[0]) >= 1):
            self.ui.iconField.setText(file[0])
            # Set the icon from the opened file
            if ".svg" in file[0]:
                iconFile = qtCore.load_svg(file[0], size=(40, 40))
                self.ui.bigIcon.setIcon(iconFile)
            else:
                self.ui.bigIcon.setIcon(QtGui.QPixmap(file[0]))

    def makeDockable(self):
        self.dockedMode = True

        self.setDockableParameters(dockable=True, floating=False, area='right', width=400)
        self.setWindowFlags(self.windowFlags() & QtCore.Qt.FramelessWindowHint)

        # Hide top-part
        self.ui.closeButton.hide()

        # Change styling
        self.ui.frame.setStyleSheet(('border-radius: 0px'))

        # Show the new window
        self.show()


class actionSlotsWindow(genericWindow):
    def __init__(self, parent=None, title=None):
        interfacePath = "{}interface_actionslotEditor.ui".format(uiPath)
        super(actionSlotsWindow, self).__init__(interfacePath, parent)

        try:
            exec('cosmos.close()')
        except:
            pass

        # Resize window
        self.resize(550, 270)

        self.show()


class SetupWindow(genericWindow):
    def __init__(self, parent=None, title=None):
        interfacePath = "{}interface_settings.ui".format(uiPath)
        super(SetupWindow, self).__init__(interfacePath, parent)

        try:
            exec('cosmosSetupWindow.close()')
        except:
            pass

        # Resize window
        self.resize(700, 400)

        self.script_paths = None
        self.generic_settings_items = []


        # If the file dont exist, create a settings file for us otherwise
        pref_state = prefs.prefs_exists()
        if pref_state is True:
            self.checkPrefs()

        # Connect buttons
        self.ui.saveButton.clicked.connect(self.saveSettings)
        self.ui.resetButton.clicked.connect(self.resetChangeState)
        self.ui.addScriptFolderButton.clicked.connect(self.showProjectPicker)
        self.ui.resetPathButton.clicked.connect(self.resetPaths)

        # Add version text and version
        self.ui.versionText.setText("v" + __version__)

        # Add icons
        self.ui.smallLogo.setAutoFillBackground(True)
        self.ui.smallLogo.setIcon(QtGui.QPixmap(menuLogo))

        self.show()

        self.fill_path_interface()
        self.create_script_menu()

        self.timer = QtCore.QTimer(singleShot=True)
        self.timer.timeout.connect(self.verify_path_content)
        self.timer.start(300)

        self.table.itemChanged.connect(self.verify_path_content)

    def verify_path_content(self):
        self.update_paths()

        path_list = [x["path"] for x in self.script_paths]
        prefix_list = [x["name"] for x in self.script_paths]
        dup_prefix_list = list(set([x for x in prefix_list if prefix_list.count(x) >= 2]))
        self.bad_path_list = []
        self.bad_prefix_list = []

        self.ui.saveButton.setEnabled(True)

        # Check paths
        for index, path in enumerate(path_list):
            table_item = self.table.item(index, 2)
            if os.path.exists(path) is False:
                table_item.setTextColor(QtCore.Qt.red)
                self.bad_path_list.append(index)
            else:
                table_item.setTextColor(QtCore.Qt.white)


        # Check prefixes
        for index, prefix in enumerate(prefix_list):
            table_item = self.table.item(index, 1)
            if prefix in dup_prefix_list:
                table_item.setTextColor(QtCore.Qt.red)
                self.bad_prefix_list.append(index)
            else:
                table_item.setTextColor(QtCore.Qt.white)

        if len(self.bad_path_list) != 0 or len(self.bad_prefix_list) != 0:
            self.ui.pathInfoLabel.setHidden(False)
            if len(self.bad_path_list) != 0 and len(self.bad_prefix_list) != 0:
                error_text = "ERROR: It looks like the paths are not valid and duplicated names exists"
                self.ui.saveButton.setEnabled(False)
            elif len(self.bad_path_list) != 0:
                error_text = "ERROR: Red marked paths are not valid or can't be found"
                self.ui.saveButton.setEnabled(True)
            elif len(self.bad_prefix_list) != 0:
                error_text = "ERROR: Red marked names are duplicated and cant be saved"
                self.ui.saveButton.setEnabled(False)
            self.ui.pathInfoLabel.setText(error_text)

        else:
            self.ui.pathInfoLabel.setHidden(True)
            self.ui.saveButton.setEnabled(True)


    def fill_path_interface(self):
        '''Fill the path interface with the new dict data'''

        #### Get current path data ####

        if self.script_paths is None:
            self.script_paths = prefs.get_generic_settings("scriptPath")
        self.table = self.ui.scriptPathTable
        self.table.setRowCount(len(self.script_paths))
        self.table.horizontalHeader().setDefaultAlignment(QtCore.Qt.AlignLeft)

        self.table.blockSignals(True)

        for index, item in enumerate(self.script_paths):
            # Create item holder
            for cell, value in enumerate([item["enabled"], item["name"], item["path"]]):
                if type(value) == str or type(value) == unicode:
                    table_item = QtWidgets.QTableWidgetItem()

                    if cell == 1:
                        # Description bold
                        font = QtGui.QFont()
                        font.setBold(True)
                        font.setPointSize(10)
                        table_item.setFont(font)

                    else:
                        # Fix bad paths that dont end in a seperator
                        if not value.endswith(os.sep):
                            value += os.sep


                    table_item.setText(value)
                    table_item.setTextAlignment(QtCore.Qt.AlignLeft)
                    self.table.setItem(index, cell, table_item)

                elif type(value) == bool:
                    widget = QtWidgets.QCheckBox()
                    widget.setChecked(value)
                    self.table.setCellWidget(index, cell, widget)

        self.table.horizontalHeader().setStretchLastSection(True)
        self.table.resizeColumnsToContents()
        self.table.blockSignals(False)
    def create_script_menu(self):
        '''''
        Create a context menu
        '''
        self.table.setContextMenuPolicy(QtCore.Qt.CustomContextMenu)
        self.table.customContextMenuRequested.connect(self.show_context_menu)

        #Create QMenu
        self.context_menu = QtWidgets.QMenu(self)
        self.open_action = self.context_menu.addAction(u'Open In Explorer')
        self.open_action.triggered.connect(self.open_script_path)
        self.change_action = self.context_menu.addAction(u'Change Folder')
        self.change_action.triggered.connect(self.remap_script_path)
        self.delete_action = self.context_menu.addAction(u'Delete')
        self.delete_action.triggered.connect(self.delete_path)

    def show_context_menu(self, pos):
        '''Function for right clicking'''
        # Move the menu to the position of the mouse click before it is displayed
        self.context_menu.move(QtGui.QCursor().pos())
        self.context_menu.show()


    def show_script_menu(self, point):
        def on_context_menu(self, point):
            # show context menu
            self.popMenu.exec_(self.button.mapToGlobal(point))


    def open_script_path(self):
        selected_data = self.get_selected_path()
        prefs.openFolder(selected_data["path"])


    def remap_script_path(self):

        self.update_paths()

        # Get selected item
        selected_data = self.get_selected_path()

        # Create new dialog
        dialog = QtWidgets.QFileDialog()
        dialog.setFileMode(QtWidgets.QFileDialog.Directory)
        dialog.setOption(QtWidgets.QFileDialog.ShowDirsOnly)
        directory = dialog.getExistingDirectory(self, 'Remap the action folder:' + selected_data["name"], selected_data["path"])

        # Set textfield text if returns true
        if (len(directory) >= 1):
            if directory[-1] != "/" or directory[-1] != "\\":
                directory = directory + os.sep

            # Change existing item
            for item in self.script_paths:
                if selected_data["name"] == item["name"]:
                    item["path"] = directory

            # Get latest information from the UI and add the new item
            self.fill_path_interface()

            self.verify_path_content()

    def delete_path(self):
        '''Delete the selected path from the UI'''

        self.update_paths()

        # Get selected item
        selected_data = self.get_selected_path()

        # Change existing item
        for item in self.script_paths:
            if selected_data["name"] == item["name"]:
                if selected_data["path"] == item["path"]:
                    self.script_paths.remove(item)
                    del item

        self.fill_path_interface()

        self.verify_path_content()



    def get_script_data(self, index=0):
        dict = {}
        for row in range(3):
            item = self.table.cellWidget(index, row)
            if type(item) == QtWidgets.QCheckBox:  # Enabled Checkbox
                # Get Enabled status
                dict["enabled"] = item.isChecked()
            else:
                # Get value
                item = self.table.item(index, row)
                if row is 1:
                    dict["name"] = item.text()
                if row is 2:
                    path = item.text()
                    if not path.endswith(os.sep):
                        path += os.sep
                    dict["path"] = path
        return dict

    def get_selected_path(self):
        '''Get data from the selected item of the scripts'''
        return self.get_script_data(index=self.table.currentRow())

    def update_paths(self):
        '''Takes the current items in the path and update the list to match'''

        self.script_paths = []
        for index in range(self.table.rowCount()):
            dict = self.get_script_data(index=index)
            # Add dict to list
            self.script_paths.append(dict)


    def resetPaths(self):

        self.script_paths = prefs.get_default_script_paths()

        # Update UI
        self.fill_path_interface()

    def checkPrefs(self):
        # If the file dont exist, create a settings file for us otherwise
        prefs.prefs_exists()

        # Get all settings from prefs

        #############################
        ### Set UI after settings and populate results ###
        #############################

        settings = prefs.load_settings()
        generic_settings = settings["generic"]
        settings_names = [x for x in generic_settings if "scriptPath" not in x and "listMode" not in x]

        # Create flow layout
        flowLayout = FlowLayout(self.ui.generic_settings_widget)
        flowLayout.setSpacing(20)
        layout = flowLayout

        for x in settings_names:
            # Update strange names
            name = x
            if x == "noColorMode": name = "grayscaleMode"
            if x == "mayaCommands": name = "Include Maya Commands"

            name_formated = " ".join([y.capitalize() for y in re.sub(r"([A-Z])", r" \1", name).split()])
            widget = QtWidgets.QCheckBox(name_formated)
            layout.addWidget(widget)
            widget.settingsName = x
            self.generic_settings_items.append(widget)

            # Set value
            if settings["generic"][x]:
                widget.setChecked(True)

            # Set details for items
            if x == "alwaysOn": widget.setStatusTip("Cosmos window stay open after search when enabled")
            if x == "mayaCommands": widget.setStatusTip("Load and display the Maya commands in the search results")
            if x == "noColorMode": widget.setStatusTip("Display a gray scale version of the UI when enabled")
            if x == "useRecommendedSearch": widget.setStatusTip("User past searches as influence when enabled")

        # Get if there is searches or not
        searches = prefs.get_list("Latest")
        if (searches == 0):
            self.ui.resetButton.hide()
            self.ui.resetLabel.hide()

        # Set focus to the first part
        self.ui.saveButton.setFocus()

    def resetChangeState(self):
        self.ui.resetButton.setText("Press again to confirm")
        self.ui.resetButton.clicked.connect(self.reset)

    def reset(self):
        self.ui.resetButton.hide()
        status = True
        message = "All search and action data reset"

        prefs.reset_recommended_search()
        prefs.save_list(list_name="Latest", content=[])
        self.ui.resetLabel.setText(message)


    def showProjectPicker(self):
        # Get the current path
        try:
            scriptPath = prefs.get_script_path_list()[0]
        except:
            scriptPath = None
        if (scriptPath != None):
            pass
        else:
            path = os.path.curdir

        # Create new dialog
        dialog = QtWidgets.QFileDialog()
        dialog.setFileMode(QtWidgets.QFileDialog.Directory)
        dialog.setOption(QtWidgets.QFileDialog.ShowDirsOnly)
        directory = dialog.getExistingDirectory(self, 'Add New Action-Folder', scriptPath)

        # Set textfield text if returns true
        if (len(directory) >= 1):
            prefix = os.path.basename(directory)
            if directory[-1] != "/" or directory[-1] != "\\":
                directory = directory + os.sep

            # Add the item to the list
            item = {"enabled":True, "name":prefix, "path":directory}

            # Get latest information from the UI and add the new item
            self.update_paths()
            self.script_paths.append(item)

            self.fill_path_interface()


    def saveSettings(self):

        # Get script path from UI
        self.update_paths()


        # Save settings
        for item in self.generic_settings_items:
            prefs.save_generic_settings(item.settingsName, item.isChecked())
        # Save script paths
        prefs.save_generic_settings("scriptPath", self.script_paths)

        # Close the window
        self.close()

        set_interface_colors()

        # Display message
        displayViewMessage(text="Settings saved successfully")
        for window in mayaWindow().children():
            if isinstance(window, searchWindow):
                window.keepOpen = False

        # Display the search
        display_window("search")
        for window in mayaWindow().children():
            if isinstance(window, searchWindow):
                window.keepOpen = True

        # Update library
        get_content()

        # Update actionlist windows if they exist
        windowInstances = returnInstances(genericDockingWindow)
        for window in windowInstances:
            window.getActionProperties()
            window.filter()


###################################################################################################
# Mixed
###################################################################################################
def return_icon_path(iconInput):
    '''
    Take a icon name and return its full path if found
    :param iconInput: Name of the icon [Str]
    :return: Full icon-path if found, otherwise Default
    '''
    # If maya icon defined
    if iconInput != None:
        if ":" in iconInput:
            return iconInput
        if "mayaDefault" in iconInput:
            # If Maya iconInput
            return "{}icons{}mayaDefault.png".format(relativePath, os.sep)
        elif iconInput == menuLogo:
            return menuLogo
        else:
            # If no iconpath defined
            if (iconInput == ""):
                return "{}icons{}noName.png".format(relativePath, os.sep)
            # Otherwise search the iconlist for matches
            iconPath = None
            for path in library.cosmosIconsList:
                if (len(iconInput) >= 1):
                    if iconInput in path:
                        iconPath = path
                        break
            if (iconPath != None):
                return iconPath
            else:
                return "{}icons{}noName.png".format(relativePath, os.sep)
    else:
        return "{}icons{}noName.png".format(relativePath, os.sep)


# Returns a path for a icon for a Action
def setIconFromString(icon, string, absolute=False, name=None):
    iconPath = None
    if absolute is True:
        iconPath = string
    else:
        # If maya icon defined
        if u":" in string:
            iconPath = string
        elif "mayaDefault" in string:
            if name != None:
                if "paint" in name.lower():
                    iconPath = u"{}icons{}mayaPaint.png".format(relativePath, os.sep)
                elif "weights" in name.lower():
                    iconPath = u"{}icons{}mayaPaint.png".format(relativePath, os.sep)
                else:
                    iconPath = u"{}icons{}mayaDefault.png".format(relativePath, os.sep)
            else:
                iconPath = u"{}icons{}mayaDefault.png".format(relativePath, os.sep)
        elif (string == ""):
            iconPath = u"{}icons{}noName.png".format(relativePath, os.sep)
        else:
            # Otherwise search the iconlist for matches
            for path in library.cosmosIconsList:
                #if string.replace(" ", "") in path.replace(" ", ""):
                if string in path:
                    iconPath = path
                    break
            if iconPath == None:
                iconPath = u"{}icons{}noName.png".format(relativePath, os.sep)
    # Set icon
    if "svg" in iconPath:
        iconFile = qtCore.load_svg((iconPath), size=(30, 30))
        icon.setIcon(iconFile)
    else:
        icon.setIcon(QtGui.QPixmap(iconPath))


def loadActionIcon(icon):
    # Add icon
    iconPath = None
    for path in library.cosmosIconsList:
        if (len(icon) >= 1):
            if icon in path:
                iconPath = path
                break
    # If none, use default
    if iconPath is None: iconPath = "{}icons{}noName.png".format(relativePath, os.sep)
    # Return the results
    return iconPath


def execute_python(command):
    '''
    Execute a python command. A undo chunk is created before the command is executed.
    :param command: Command to execute [Str]
    :return: Status [Str]
    '''
    status = "success"

    # Create undo que
    exec("cmds.undoInfo(openChunk=True)")

    # Execute Command as string
    cmds.evalDeferred(command, evaluateNext=True)


    # Disable undo que
    exec("cmds.undoInfo(closeChunk=True)")

    # Add to latest command list
    return status


def execute_mel(command):
    '''
    Execute a mel command. A undo chunk is created before the command is executed.
    :param command: Command to execute [Str]
    :return: Status [Str]
    '''
    status = "success"

    # Create undo que
    exec("cmds.undoInfo(openChunk=True)")

    # Execute Command as string
    mel.eval(command)

    # Disable undo que
    exec("cmds.undoInfo(closeChunk=True)")

    # Add to latest command list
    cmds.repeatLast(ac=command, acl="Cosmos Mel Command")
    return status


def executeAction(actionID):
    '''Holder function for the new named one'''
    return execute_action(actionID)

def execute_action(actionID):
    '''
    Take a action-id, find the relevant command to execute and trigger it.
    :param actionID: Action-id [Str]
    :return: Status [Str]
    '''
    status = "success"

    # Create undo que
    exec("cmds.undoInfo(openChunk=True)")

    # Read acion language and code
    action = library.get_action_by_id(actionID)
    if action != None:
        # Execute the script
        if action["syntax"] == "mel":
            status = execute_mel(action["command"])
        elif action["syntax"] == "python":
            execute_python(action["command"])

            try:
                cmds.repeatLast(ac='''python("cosmos.execute_action('{}')");'''.format(actionID),
                                acl="Cosmos Python Command")
            except:
                pass
    # No action found
    else:
        print("The Action-File is not found or missing from the current script paths")
        print("ACTION-ID:", actionID)
        status = "File not found for:\n{}".format(actionID)

    # Disable undo que
    exec("cmds.undoInfo(closeChunk=True)")

    return status



def execute_maya_action(name, category, info):
    '''
    Takes a name, category and info and find the corresponding menu-action relevant to it and trigger the pointer.
    :param name: Name of the action [Str]
    :param category: Category of the action [Str]
    :param info: Info for the acion [Str]
    :return: Status [Str]
    '''
    status = "success"

    # Create undo que
    exec("cmds.undoInfo(openChunk=True)")

    pointer = None
    for item in mayaCommandList:
        if item["name"] == name:
            if item["category"] == category:
                if item["info"] == info:
                    pointer = item["command"]
                    break

    if pointer != None:
        pointer.trigger()
    else:
        status = u"Pointer not found for '{}. Menu-position might changed...'".format(name)
        logger.warning(
            "Error executing command: NAME:'{}' CATEGORY:'{}'".format(name, category))

    return status


def execute_card(card, forceAlt=False):
    '''
    Take a input action-card from the UI and trigger its command
    :param card: Action card to trigger [cardUI]
    :param forceAlt: Force to trigger the alt command if it exist for the action
    :return: Status [Str]
    '''
    # Set default status
    status = "success"

    ### Get information from card ###
    name = card.getTitle()
    description = card.getDescription()
    category = card.getCategory()
    command = card.getCommand()
    altCommand = card.getAltCommand()

    message = clean_category_name(category) + "/ " + name

    ### Check if ALT is pressed ###
    modifierKeys = QtWidgets.QApplication.keyboardModifiers()
    if modifierKeys == QtCore.Qt.AltModifier:
        if altCommand != False: forceAlt = True
    elif modifierKeys == (QtCore.Qt.ShiftModifier | QtCore.Qt.AltModifier):
        if altCommand != False: forceAlt = True

    # Create undo que
    exec("cmds.undoInfo(openChunk=True)")

    # If String-based command
    if type(command) is unicode or type(command) is str:
        # --- COSMOS execution
        if "cosmos." in command:
            cmds.evalDeferred(command)
        # --- ACTION execution
        elif ".action" in command:
            status = execute_action(command)
        # --- MEL execution
        elif ("mel.eval" in command):
            status = execute_mel(command, name)
        # --- POINT-REF execution
        elif "@pointerRef" in command:
            pointer = None
            for item in mayaCommandList:
                if name in item["name"]:
                    if category in item["category"]:
                        if description in item["info"]:
                            if forceAlt is True:
                                pointer = item["altCommand"]
                                message = name + " [OPTIONS]"
                            else:
                                pointer = item["command"]
                            break
            if pointer != None:
                pointer.trigger()
            else:
                status = u"Pointer not found for '{}. Menu-position might changed...'".format(command)
                logger.warning(
                    "Error executing command: NAME:'{}' CATEGORY:'{}' COMMAND:'{}'".format(name, category, command))
        # --- ERROR execution
        else:
            status = u"Command string '{}' not found".format(command)
    # --- POINTER execution
    else:
        if forceAlt is False:
            command.trigger()
        else:
            altCommand.trigger()
            message = name + " [OPTIONS]"

    # Show success message otherwise error
    if (status == "success"):
        if card.special == False: displayViewMessage(text=message)
    else:
        if card.special == False: displayViewMessage(text=u"{}".format(status), mode="error")
        logger.error(u"Error executing command: \nNAME:'{}' CATEGORY:'{}'COMMAND:'{}'".format(name, category, command))

    # Disable undo que
    exec("cmds.undoInfo(closeChunk=True)")

    return status

def importer():
    '''
    Import a action by dialog
    :return: None
    '''
    # Get the icon directory
    path = os.path.curdir

    dialog = QtWidgets.QFileDialog()
    # Set filter
    filters = "Images (*.zip *.action)"

    dialog.setFileMode(QtWidgets.QFileDialog.ExistingFile)

    file = dialog.getOpenFileName(None, 'Pick icon', path, filters)
    # Set textfield text if returns true
    if (len(file) >= 1):
        print(file[0])

def return_script_path_only(category):
    '''
    Takes a full category path and strips out the category name of it only to return its base dir.
    :param category: Input category path [Str]
    :return: Path [Str]
    '''
    # Clean
    scriptPath = None
    for path in library.script_path_list:
        if path in category:
            cleanCategory = category.replace(path, "")
            scriptPath = path.replace(cleanCategory, "")
            break
    if scriptPath != None:
        return scriptPath


def buildCardInView(listwidget):
    rect = listwidget.viewport().contentsRect()
    top = listwidget.indexAt(rect.topLeft())
    if top.isValid():
        bottom = listwidget.indexAt(rect.bottomLeft())
        if not bottom.isValid():
            bottom = listwidget.model().index(listwidget.count() - 1)
        topNumber = bottom.row() + 1
        if (bottom.row() + 1) <= 9: topNumber = 9
        for index in range(top.row(), topNumber):
            listItem = listwidget.item(index)
            try:
                card = listItem.data(109)
                if card != None:
                    if card.built == False:
                        card.buildMethod()
                        card.built = True
            except:
                pass


def update_score():
    '''
    Update the score from the scoring engine based on search results, favorites etc
    :return: None
    '''
    # All cosmos Actions
    all_actions = library.cosmosCommandList + mayaCommandList

    global score_data
    score_data = scoring_engine.action_library_data()

    # Assign data and library
    score_data.assign_actions(all_actions)


############### Startup proceduals #######################
if batch_mode is True:
    print("Batch mode initialized, skipping cosmos UI hookup")
    scan_base()
else:
    try:
        if loadOnMayaLaunch:
            cmds.evalDeferred("cosmos.scan()", lp=True)
        if startupHotkey is True: cmds.evalDeferred("cosmos.install_hotkey()", lp=True)
    except:
            if loadOnMayaLaunch:
                scan()
            run_shotcut_install()

def run_shotcut_install():
    '''
    Installs the shortcut by default when Maya is loaded. This is run if loadOnMayaLaunch is Enabled
    :return: None
    '''
    if startupHotkey is True: install_hotkey()
