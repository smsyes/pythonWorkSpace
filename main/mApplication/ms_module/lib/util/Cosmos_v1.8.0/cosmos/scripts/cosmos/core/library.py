# coding=utf-8
from __future__ import print_function, unicode_literals

__author__ = "Martin Gunnarsson (hello@deerstranger.com)"
__version__ = "1.8.0"

import difflib, os

try:
    import cPickle as pickle
except ModuleNotFoundError:
    import _pickle as pickle

import sys
from time import time
from . import prefs, functions, mayaPortal
from .mayaPortal import mayaWindow
from .extensions import qtCore

if sys.version_info[0] >= 3:
    # in python 3, unicode got renamed to str
    unicode = str

dev = False
logger = functions.installLogger("Cosmos logger", file=(prefs.get_prefs_folder() + os.sep + "cosmos_logger.log"))


relativePath = os.path.dirname(os.path.realpath(__file__)) + os.sep
parentPath = os.path.abspath(os.path.join(relativePath, os.pardir))


####################
#Get content
####################

def compare_engine(*args):
    #Initialize score to 0
    score = float(0)

    #Get reference-word and make it lowercase
    reference = args[0].lower().replace(" ", "").lower()
    #reference = args[0].lower()

    points = 1

    if dev == True:
        messages = ["--------- COMPARE-QUERY: '{}' ----------".format(reference)]
    #Go through for every item (except the first one that is the query)"
    for number, item in enumerate(args[1:]):
        if len(item) >= 1:
            item_spaced = item.lower()
            item = item.lower().replace(" ", "")
            itemEncoded = item
            if dev == True: messages.append("{}: ITEM: '{}'".format(number, itemEncoded))
            #For the first item
            if (number <= 1):
                #Check if item starts with the reference
                if reference in item:
                    #Check how similar they are
                    ratio = difflib.SequenceMatcher(None,item,reference).real_quick_ratio()
                    if ratio >= 0.1:
                        if dev == True: messages.append("     '{}' in '{}' with a ratio of {}".format(reference, itemEncoded, ratio))
                        score += ratio * 1
                if item.startswith(reference):
                    if dev == True: messages.append("     '{}' starts with '{}'".format(itemEncoded, reference))
                    score += (10 * points)
                if len(reference) >= 2:
                    combindedLetters = "".join(object[0].lower() for object in item_spaced.split())
                    if len(combindedLetters) >= 2:
                        if reference in combindedLetters:
                            score += (30 * points)
            #Exact match
            if (item == reference):
                if dev == True: messages.append("     '{}' is a exact match".format(itemEncoded))
                score += (5 * points)
            #Partial match
            elif reference in item or item in reference:
                #Check how similar they are
                ratio = difflib.SequenceMatcher(None,item,reference).real_quick_ratio()
                #ratio = sm.ratio()
                if dev == True: messages.append("     '{}' in '{}' with a ratio of {}".format(reference, itemEncoded, ratio))
                score += (ratio * points)
            # First letters match
            #Take down the pointNumber
            points = points * 0.8
            if dev == True: messages.append("     SCORE: {}".format(score))


    #Special case for no query
    if args[0] == "":
        score = 1

    if dev == True: messages.append("FINAL-SCORE: {}\n".format(score))
    if dev == True:
        if score >= 0.1:
            for string in messages: print(string)
    #Return the result
    return score

def get_favorite_actions():
    '''
    Return the favorites actions as a list
    :return: List of actions [Tuple]
    '''
    global favoriteListCommands
    favoriteListCommands = []
    try:
        tempList = prefs.get_list("Favorites")
        for item in tempList:
            favoriteListCommands.append(item)
    except:
        pass

    return favoriteListCommands

def get_blacklisted_actions():
    '''
    Return the blacklisted actions as a list
    :return: List of actions [Tuple]
    '''
    global blacklistedCommands
    blacklistedCommands = []
    try:
        tempList = prefs.get_list("Blacklist")
        for item in tempList:
            blacklistedCommands.append(item)
    except:
        pass

def get_tags():
    '''
    Get all the tags from loaded cosmos actions
    :return: List of tags [Tuple]
    '''
    global cosmosTagsList
    cosmosTagsList = []
    # Get the tags and compare to tags-list
    # If it dont exist, add it.
    for action in cosmosCommandList:
        tagString = action['tags'].replace(", ", ",")
        if len(tagString) >= 1:
            tagList = tagString.split(',')
            for tag in tagList:
                if tag not in cosmosTagsList:
                    cosmosTagsList.append(tag)
    return sorted(cosmosTagsList)


def get_categories_from_path(path):
    '''
    Get a list of categories from the current path
    :param path: Path to check categories in
    :return: List of categories names
    '''
    categories = []
    for root, dirs, files in os.walk(path):
        if root != path:
            for file in files:
                if ".action" in file or ".category" in file:
                    if root not in categories:
                        categories.append(root)

    return categories


def get_content():
    '''
    Scaning procedural that is run when cosmos starts. All the paths in the Cosmos settings are traversed and scanned for Actions andicons.
    :return Status if scan was successful [Bool]
    '''
    #Get favorites
    get_favorite_actions()
    get_blacklisted_actions()

    #Define the main list for where to store the Cosmos Commands
    global cosmosCommandList
    cosmosCommandList = []
    global cosmosIconsList
    cosmosIconsList = []
    global cosmosCategories
    cosmosCategories = []
    global cosmosActionsList
    cosmosActionsList = []
    actionCount = 0
    failed_files = []
    global script_path_list
    if prefs.prefs_exists():
        script_path_list = prefs.get_script_path_list()
    else:
        script_path_list = None

    if (script_path_list == None):
        if prefs.past_settings_exists():
            print("Welcome back buddy, lets convert those settings for you!")
            logger.warning("No valid pref found when scanning library, convert existing ones in next step")
        else:
            print("Reading script paths: No valid Cosmos prefs found.\nIf this is the first time you running cosmos, its totally normal")
            logger.warning("No valid pref found when scanning library, creating new ones in the next step")
    #Load the Actions
    if (script_path_list != None):
        #scriptPath = script_path_list
        for path in script_path_list:

            # Check that path exists
            path_exists = os.path.exists(path)
            if path_exists is False:
                logger.warning("The following path don't exists anymore:" +  path)
            else:
                #For every file in the script directory
                for root, dirs, files in os.walk(path):

                    #Add to path if not there already
                    if root not in sys.path:
                        sys.path.append(root + os.sep)


                    ################ Create files if exists ################
                    #Go through all the index files and import its content
                    for file in files:
                        # if type(file) != unicode:
                        #     try:
                        #         file = file.decode('cp1252')
                        #     except:
                        #         file = file.decode('utf-8')
                        if file.endswith(".action"):
                            try:
                                action = read_action_file(root + os.sep + file)
                                #If category is root, replace with NONE
                                action["category"] = root
                                #Set action path
                                action["command"] = file

                                # Change icon path
                                action["icon"] = ''.join(action["icon"].strip().split())

                                #Add to main list
                                cosmosCommandList.append(action)
                                #Add action to list
                                cosmosActionsList.append(root + os.sep + file)

                                #Add count
                                actionCount += 1

                                #Add category to list if it dont exist already
                                if root not in cosmosCategories:
                                    if root != script_path_list:
                                        cosmosCategories.append(root)
                            except Exception as errorMessage:
                                logger.error("Error importing the action: {}".format(file))
                                logger.error(errorMessage)
                                print(errorMessage)
                                failed_files.append(root + os.sep + file)

                        elif any(file for ex in [".png", ".jpg", ".jepg", ".bmp", ".svg"] if (ex in file.lower())) == True:
                            cosmosIconsList.append(root + os.sep + file)


            #Get icons from default maya directory (the 4 first one)
            iconPaths = os.environ['XBMLANGPATH']
            iconPathList = iconPaths.split(":")[:4]
            for path in iconPathList:
                for root, dirs, files in os.walk(path):
                    for file in files:
                        if ".png" in file or ".jpg" in file or ".jepg" or ".bmp" or ".svg" in file:
                            if file not in cosmosIconsList:
                                cosmosIconsList.append(root + os.sep + file)

        if len(failed_files) != 0:
            message = "Failed to load {} files:".format(len(failed_files))
            print(message)
            logger.error(message)
            for file in failed_files:
                logger.error(file)
                print(file)
        return True
    else:
        return False

def clean_category_name(category):
    '''
    Takes a input category name and clean out its full folder name just to give the end category
    :param category: Full category path
    :return: Matched path against existing paths cleaned [Str]
    '''
    # Clean
    for path in script_path_list:
        if path in category:
            cleanCategory = category.replace(path, "")
            break
        else:
            cleanCategory = category
            if category.startswith("Maya/"):
                cleanCategory = category.replace("Maya/", "")

    # Clean spaces
    cleanCategory = cleanCategory.replace("\\", "/")
    return cleanCategory

#### ACTION HANDLING ####

###### Creating actions
def write_action_to_file(name=None,info="",tags="",icon="",command="",syntax=None,location=None):
    '''
    Takes a list of variables and save it out as a action file in the desired location/path
    :param name: Action Name
    :param info: Action Description [Str, Short description of the action]
    :param tags: Actin Tags [Str, Example: 'custom,editor']
    :param icon: Icon-name [Str, Example: 'import.png']
    :param command: The command to execute [Str]
    :param syntax: Action Script syntax, 'Mel' or 'Python' [Str]
    :param location: Folder path where to save the action [Str]
    :return: Pickled content
    '''
    #Generate a unic ID from timestamp
    id = hex(int(time()*10000000))[2:]

    #Generate name
    fileName = "".join(x for x in name.replace(" ", "_") if x.isalnum() or x is "_")
    #Make first case lower
    fileName = fileName + "_" + id

    #Create a file
    filePath = u"{path}{separator}{name}.action".format(path=location,separator=os.sep,name=fileName).replace("//","/")

    convertedIconPath = prefs.copy_icon_to_path(icon,u"{path}{separator}".format(path=location,separator=os.sep).replace("//","/"))

    #Generate a dictonary
    content = {"id":id,"name":name,"info":info,"tags":tags,"icon":convertedIconPath,"command":command,"syntax":syntax}

    #Dump to file
    with open(filePath, 'wb') as outfile:
        if sys.version_info[0] >= 3:
            pickle.dump(content, outfile, protocol=0)
        else:
            pickle.dump(content,outfile)
    return content


def edit_action_on_file(file=None,name=None,info=None,tags=None,icon=None,command=None,syntax=None):
    '''
    Edit an existing action-file and save it with new attributes
    :param file: Path to the action-file
    :param name: Action Name
    :param info: Action Description [Str, Short description of the action]
    :param tags: Actin Tags [Str, Example: 'custom,editor']
    :param icon: Icon-name [Str, Example: 'import.png']
    :param command: The command to execute [Str]
    :param syntax: Action Script syntax, 'Mel' or 'Python' [Str]
    :return: None
    '''
    if file != None:

        #Open file to memory
        action = read_action_file(file)

        #Copy icon to Cosmos if not inside
        convertedIconPath = prefs.copy_icon_to_path(icon,os.path.dirname(file))
        #Change name
        if name != None: action["name"] = name
        if info != None: action["info"] = info
        if tags != None: action["tags"] = tags
        if icon != None: action["icon"] = convertedIconPath
        if command != None: action["command"] = command
        if syntax != None: action["syntax"] = syntax
        #Save back to file and close
        with open(file, 'wb') as outfile:
            if sys.version_info[0] >= 3:
                pickle.dump(action, outfile, protocol=0)
            else:
                pickle.dump(action, outfile)
    else:
        print("No file specified")

def read_action_file(file):
    '''
    Read a action file from a full path and return a dictionary of its content
    :param file: Full file path [Str]
    :return: Action content [Dict]
    '''
    '''Read the action files, assume it is json, if not try to unpickle it'''
    with open(file, 'rb') as r:
        try:
            content = pickle.load(r)
        except:
            print("Failed to load action file, will re-pickle")
            print(file)
            r.seek(0)
            content = r.read()
            with open(file, 'wb') as output:
                for line in content.splitlines():
                    output.write(line + str.encode('\n'))
            with open(file, 'rb') as r:
                content = pickle.load(r)

    return content


    return content

def get_action_path_by_id(id):
    '''
    Takes a ID and find the action-path from the current loaded actions
    :param id: ID to look for [Str]
    :return: Action (if found, if not return None)
    '''
    actionFile = None
    for file in cosmosActionsList:
        if id in file:
            actionFile = file
    return actionFile

def get_action_by_id(id):
    '''
    Takes a ID and return a loaded action-file dictionary
    :param id: ID to look for [Str]
    :return: Action [Dict] if found, if not return None)
    '''
    filename = None
    for file in cosmosActionsList:
        if id in file:
            filename = file
    #If the action-file is found
    if (filename != None):
        #Check if the file is found
        if os.path.exists(filename):
            #Read acion language and code
            action = read_action_file(filename)
            #Set category to current
            action["category"] = os.path.dirname(filename)

            return action
    else:
        return None

###### Removing of actions
def ask_delete_action(action):
    '''
    Takes a action and throw up a dialog for if it should be deleted or not
    :param action: Action dict
    :return: Reply of dialog
    '''
    #Exstract the name from the action
    name = action["name"]

    reply = qtCore.yesCancelDialog(title="Remove '{}'?".format(name))

    if reply == "Yes":
        remove_action(action)
    else:
        mayaPortal.displayViewMessage(text="Sure, not deleting '{}'".format(name))
    return reply

def remove_action_file(actionFile):
    '''
    Takes a path to a action file and delete it after user confirmation
    :param actionFile: Path to the file
    :return: True or false if the file was deleted or not
    '''
    # Get filepath from actionID
    file = os.path.basename(actionFile)
    action = get_action_by_id(file)
    if action != None:
        result = remove_action(action)
    else:
        print("No action found from the given path:")
        print(actionFile)
        result = False

def remove_action(action):
    '''
    Takes a action file and remove it from the filesystem
    :param action: Action-dict
    :return: Succes stage [Bool]
    '''
    #Get action attributes
    category = action["category"]
    info = action["info"]
    name = action["name"]
    id = str(action["id"])
    actionFile = get_action_path_by_id(id)

    # Continue only if file exists
    if actionFile != None:
        #Remove file
        os.remove(actionFile)

        #Update scene list
        get_content()

        #Check if it exists in the favorite list, if so remove it
        prefs.remove_list_item("Favorites", name, category, info)
        prefs.remove_list_item("Latest", name, category, info)


        for window in mayaWindow().children():
            if "startup.actionListFilter" in str(window):
                print("Found an actionlist instance to refresh")
                window.filter()


        #Reload the search if open
        for window in mayaWindow().children():
            if "startup.searchWindow" in str(window):
                text = window.ui.inputField.text()
                exec ('{}.search("{}")'.format(window, text))

        # Log deletion
        logger.info(u'Action deleted: "{}"'.format(name))
        mayaPortal.displayViewMessage(text="Succesfully deleted '{}'".format(name))
        return True
    else:
        mayaPortal.displayViewMessage("This action cant be found on disk")

        #Remove this from searches as it might cause future problems
        prefs.remove_list_item("Favorites", name, category, info)
        prefs.remove_list_item("Latest", name, category, info)
        return False


def duplicate_action(action, new_name):
    '''
    Duplicate a action and assigns a new name from its input
    :param action: Action [Dict]
    :param new_name: New name of the action [Str] This will be used when creating the name of the action
    :return: New Action [Dict]
    '''
    info = action["info"]
    name = action["name"]
    id = str(action["id"])
    actionFile = get_action_path_by_id(id)

    # Continue only if file exists
    if actionFile != None:

        # Duplicate the action
        new_action = write_action_to_file(name=new_name, info=info, tags=action["tags"], icon=action["icon"], command=action["command"], syntax=action["syntax"], location=os.path.dirname(actionFile))

        #Update scene list
        get_content()

        #Reload the search if open
        for window in mayaWindow().children():
            if "startup.searchWindow" in str(window):
                text = window.ui.inputField.text()
                exec ('{}.search("{}")'.format(window, text))

        # Log deletion
        logger.info(u'Action Duplicated: "{}"'.format(name))
        mayaPortal.displayViewMessage(text="Succesfully Duplicate'{}'".format(name))
        return new_action
    else:
        mayaPortal.displayViewMessage("This action can't be found on disk")
        return None