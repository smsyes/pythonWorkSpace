# coding=utf-8
from __future__ import print_function, unicode_literals

#This file show now have some updates
__author__ = "Martin Gunnarsson (hello@deerstranger.com)"

#Default
import xml.etree.ElementTree as elementTree
import os, sys, json
from os.path import expanduser
import shutil
import logging
import subprocess
import time
from datetime import datetime
import zipfile
from .functions import fix_path_endings
from .mayaPortal import displayViewMessage

# Overwride with user if exists if it exists
from .variables import customPrefsPath

if sys.version_info[0] >= 3:
    # in python 3, unicode got renamed to str
    unicode = str

#Get relative path
global relativePath
relativePath = os.path.dirname(os.path.realpath(__file__)) + os.sep


def write_category(folder):
    '''
    Takes a input path and create a '.category' file in it to be recognized as a category
    :param folder: Full folder path to add the category label too
    :return: Path to category file
    '''
    # Check if path exists
    if not os.path.exists(folder): os.makedirs(folder)
    filePath = u"{path}{separator}.category".format(path=folder, separator=os.sep).replace("//","/")

    #Create file
    if os.path.exists(filePath):
        pass
    else:
        categoryFile = open(filePath, "wb")
        categoryFile.close()
    return filePath


#Return the home folder
def get_prefs_folder():
    '''
    Return the path of the cosmos preference folder.If none is specified in variables.py, use System home folder
        :return: Prefernces path
    '''
    path = expanduser("~")
    if customPrefsPath is not False:

        # Check that the path is valid:
        if os.path.isdir(customPrefsPath):
            path = customPrefsPath
        else:
            logger.error("Custom Preferences path cant be found, falling back to the default one")
            logger.error("Path:" + customPrefsPath)

    full_path = path + os.sep + "cosmosPrefs"
    # Create it it dont exist
    if not os.path.exists(full_path):
        os.makedirs(full_path)

        # Create user folder
        write_category(full_path + os.sep + "User Actions")
        write_category(full_path + os.sep + "User Actions" + os.sep + "Unsorted")

    return full_path


# Install logger
#Define logging in prefs as well
#Define the logging file
logger = logging.getLogger("Prefs logger")
#Disable printing in console
logger.propagate = False
logger.setLevel(logging.DEBUG)
# Create a file handler
handler = logging.FileHandler(get_prefs_folder() + os.sep + "cosmos_logger.log")
handler.setLevel(logging.DEBUG)
# Create a logging format
formatter = logging.Formatter('%(asctime)s : %(name)s : %(levelname)s - %(message)s')
handler.setFormatter(formatter)
logger.addHandler(handler)


def zipContent():
    '''
    Take the Cosmos preferences folder and zip it into a archive and save it next to it. Good for backup or sending information.
    :return: Path to zip archive
    '''
    #Define the zipfile
    zipFile = zipfile.ZipFile((get_prefs_folder() + ".zip"), "w")

    #Write the files to the zip
    allFiles = []
    for root, dirs, files in os.walk(get_prefs_folder()):
        for file in files:
            allFiles.append(root + os.sep + file)

    #Add more files
    for file in allFiles:
        zipFile.write(file)

    zipFile.close()
    logging.info("Sucefully zipped the content")
    print("Zipped to: {}".format(get_prefs_folder() + ".zip"))
    return get_prefs_folder() + ".zip"


####################
#Main File structure
####################
#Load the tree
def load_xml_file(file):
    global treeBase
    if os.path.exists(file) is True:
        try:
            treeBase = elementTree.parse(file)
            return treeBase
        except Exception as errorMessage:
            logger.error("Problem loading {}".format(file))
            return None
    else:
        return None


def openFolder(path):
    if (path != None): pass
    else:  path = os.path.curdir
    if sys.platform == 'darwin':
        subprocess.check_call(['open', '--', path])
    elif sys.platform == 'linux2':
        subprocess.Popen(["xdg-open", path])
    elif sys.platform is 'windows' or 'win32' or 'win64':
        newPath = path.replace("/","\\")
        try: subprocess.Popen(r'explorer /select,"{}"'.format(newPath))
        except: pass


def file_exist_in_preferences(file):
    '''
    Check if the input preference file exists in the prefs folder
    :param file: Name of the file (Ex: file_exist_in_preferences("cosmos_searches.json"))
    :return: Valid State [Bool]
    '''
    settings_file = (get_prefs_folder() + os.sep + file)
    #get state if the file exists or not
    state = os.path.exists(settings_file)
    return state


def validate_json(input):
    '''
    Take a input object and try dumping it to json.
    :param output: Object to check
    :return: True if success[Bool]
    '''
    try:
        json.dumps(input)
        return True
    except:
        return False


#################
#Write custom scripts
#################
def copy_icon_to_path(iconPath,newPath):
    '''
    Take a icon from a given directory and copy it to a new one. If it exist before skip it.
    :param iconPath: Full path to the old icon
    :param newPath: Full path to the new directory
    :return: New icon name [Str]
    '''
    #####################################
    #Check icon (Copy if not in default paths)
    #####################################
    #Check if path
    if "/" in iconPath or "\\" in iconPath:
        #Get icon-name

        #Sanity check output path
        if newPath[-1] != "/" or newPath[-1] != "\\":
            #Not a proper path I have been given
            newPath = newPath + os.sep

        iconNameOnly = os.path.basename(iconPath)
        newFullPath = newPath + iconNameOnly

        #########Check if icon exists in paths
        #Get all maya icon paths
        exists = False
        iconPaths = os.environ['XBMLANGPATH']
        iconPaths = iconPaths.split(";")
        iconPaths.append(newPath)
        for path in iconPaths:
            exists = os.path.isfile(path + iconNameOnly)
            if exists is True:
                break
        #Copy if it dont exist there
        if exists is False:
            #Copy the files into the cosmosIconPath
            try:
                shutil.copy2(iconPath, newFullPath)
            except:
                print("Problem copying icon from {} to {}{}".format(iconPath,newPath,iconNameOnly)  )
                #Return full path if it failed to copy the icon
                iconNameOnly = iconPath

        #Check so you dont return noType
    elif ":" in iconPath:
        iconNameOnly = iconPath
    else:
        iconNameOnly = iconPath

    return iconNameOnly

def convert_xml_to_json(keepBackup=True):
    '''
    Takes the existing XML file and convert it into the updated json format
    :param keepBackup: Keep the old files in a /backup folder in the same directory
    :return: None
    '''
    old_settings_path = get_prefs_folder() + os.sep + "cosmos_settings.xml"
    old_searches_path = get_prefs_folder() + os.sep + "cosmos_searches.xml"
    print("Converting settings from Xml")

    # Convert Settings
    if os.path.isfile(old_settings_path):
        tree = load_xml_file(old_settings_path)

        # Get generic settings
        generic_settings_dict = [x for x in tree.iter(tag="generic")][0].attrib

        # Update settings to be bool
        for item in ["alwaysOn", "noColorMode", "mayaCommands"]:
            current_value = generic_settings_dict[item]
            if current_value == "True": value = True
            else: value = False
            generic_settings_dict[item] = bool(value)

        # Add recommended search
        generic_settings_dict["useRecommendedSearch"] = True


        # Convert lists
        if tree.find("favoriteList") is not None:
            fav_list = [x.attrib for x in tree.find("favoriteList")]
        else: fav_list = []

        if tree.find("latestList") is not None:
            latest_list = [x.attrib for x in tree.find("latestList")]
        else: latest_list = []

        if tree.find("blackList") is not None:
            blacklist_list = [x.attrib for x in tree.find("blackList")]
        else: blacklist_list = []

        # Convert script path to new
        path_data = []
        counter = 1
        # Old path
        old_script_paths = fix_path_endings(generic_settings_dict["scriptPath"].split(";"))
        default_actions_path = [p for p in old_script_paths if "cosmos" in p and "actions" in p][0]

        # New script path
        parentPath = os.path.abspath(os.path.join(relativePath, os.pardir))
        new_script_path = parentPath + os.sep + "actions" + os.sep
        # Convert paths
        for path in old_script_paths:
            if "User Actions" in path:
                prefix = "User"
            elif "cosmos" in path and "actions" in path:
                prefix = "Default"
                # Fix path
                path = new_script_path
            else:
                prefix = "CustomPath{}".format(counter)
                counter += 1
            path_data.append({"name": prefix, "path": path, "enabled": True})
        generic_settings_dict["scriptPath"] = path_data


        # Update list items
        for list in [fav_list, latest_list, blacklist_list]:
            for x in list:
                # Convert Alt Command
                if "altCommand" in x:
                    if x["altCommand"] == "False":
                        x["altCommand"] = False
                    else:
                        x["altCommand"] = True
                else:
                    x["altCommand"] = False

                # Convert icon path
                if "iconPath" in x:
                    x["icon"] = x["iconPath"]
                    del x["iconPath"]

                # If default-path in category
                if default_actions_path in x["category"]:
                    updated_path = x["category"].replace(default_actions_path, new_script_path)
                    x["category"] = updated_path


        # Put it all together and save new
        settings_dict = {"generic": generic_settings_dict,"lists": {"Favorites": fav_list, "Latest": latest_list, "Blacklist": blacklist_list}}
        create_settings_file(settings_dict)

        # Display message about convertion
        displayViewMessage("Preferences upgraded with advance path options","good")



    # Convert searches
    if os.path.isfile(old_searches_path):
        tree = load_xml_file(old_searches_path)
        search_dict = [x.attrib for x in tree.iter(tag="PREFERED")]

        # Update count to number
        for x in search_dict: x["count"] = int(x["count"])
        for x in search_dict: x["last"] = float(x["last"])

        for x in search_dict:
            # Convert Alt Command
            if "altCommand" in x:
                if x["altCommand"] == "False":
                    x["altCommand"] = False
                else:
                    x["altCommand"] = True
            else:
                x["altCommand"] = False

            # Convert icon path
            if "iconPath" in x:
                x["icon"] = x["iconPath"]
                del x["iconPath"]

        create_searches_file(search_dict)


    # Move preferences to backup folder
    if keepBackup:
        backup_dir = get_prefs_folder() + os.sep + "backup"
        if os.path.exists(backup_dir) is False:
            os.mkdir(backup_dir)

        for file in [old_searches_path, old_settings_path]:
            if os.path.isfile(file):
                new_path = file.replace(get_prefs_folder(), backup_dir)
                # Move preference file to backup dir
                shutil.move(file, new_path)

        print("INFO: Sucefully moved preferens into backup folder")



def get_default_script_paths():
    '''
    Generate a list of the default script paths
    :return: List of all the paths [List of dicts]
    '''
    path_data = []

    # User Script Path
    user_path = get_prefs_folder() + os.sep + "User Actions" + os.sep
    path_data.append({"name": "User", "path": user_path, "enabled": True})

    # Default Script path
    parentPath = os.path.abspath(os.path.join(relativePath, os.pardir))
    default_path = parentPath + os.sep + "actions" + os.sep
    path_data.append({"name": "Default", "path": default_path, "enabled": True})

    return path_data

def get_settings_path():
    '''
    Return the full path to the main cosmos settings file
    :return: Full path [Str]
    '''
    return get_prefs_folder() + os.sep + "cosmos_settings.json"

def create_settings_file(settings_dict=None):
    '''
    Create a fresh preference file in the cosmos home directory, if a input is already defined, use it
    :param settings_dict: Input settings dictionary, leave blank if unsure
    :return: True or false if the file was created [Bool]
    '''
    # Create Home dir if it dont exist
    if not os.path.exists(get_prefs_folder()): os.makedirs(get_prefs_folder())

    if settings_dict is None:
        generic_settings_dict = {}
        generic_settings_dict["alwaysOn"] = False
        generic_settings_dict["listMode"] = "Latest"
        generic_settings_dict["mayaCommands"] = True
        generic_settings_dict["noColorMode"] = True
        generic_settings_dict["useRecommendedSearch"] = True
        generic_settings_dict["scriptPath"] = get_default_script_paths()
        # Build full dict
        settings_dict = {"generic": generic_settings_dict, "lists":{"Favorites": [], "Latest": [],"Blacklist": []}}

    # Save settings to file
    output_path = get_settings_path()

    # Validate before saving
    status = validate_json(settings_dict)

    if status:
        try:
            with open(output_path, 'w') as outfile: json.dump(settings_dict, outfile, indent=3)
            return True
        except IOError as e:
            logging.error(e)
            print(e)
            return False
    else:
        logging.error("Problem saving preferences, json not formated correctly")
        return False

def prefs_exists():
    '''
    Return if the main Cosmos preference file exist in the specified directory
    :return: True or false if the file exists [Bool]
    '''
    return os.path.exists(get_settings_path())


def create_searches_file(searches_dict=None):
    '''
    Create a default file of the search history
    :param searches_dict: Input search dict, leave blank if unsure
    :return: True or false if the file was created [Bool]
    '''
    # Create Home dir if it dont exist
    if not os.path.exists(get_prefs_folder()): os.makedirs(get_prefs_folder())

    if searches_dict is None:
        searches_dict = []


    # Validate before saving
    status = validate_json(searches_dict)
    if status:
        # Save settings to file
        output_path = get_prefs_folder() + os.sep + "cosmos_searches.json"
        try:
            with open(output_path, 'w') as outfile: json.dump(searches_dict, outfile, indent=3)
            return True
        except IOError as e:
            logging.error(e)
            print(e)
            return False
    else:
        logging.error("Problem saving searches, json not formated correctly")
        return False


def past_settings_exists():
    '''
    Verify that the oldschool xml settings exist on file
    :return: True if file does exist [Bool]
    '''
    return os.path.exists(get_settings_path().replace("json", "xml"))

def load_settings():
    '''
    Load the settings file, if no file is found, create default
    :return: Settings file if valid, otherwise False
    '''

    settings_path = get_settings_path()

    # If it dont exist, create it:
    if os.path.exists(settings_path) is False:
        print("Failed to read json settings")
        # Check if past file exist
        if past_settings_exists():
            print("Past settings exists, will try to use those")
            # Convert existing preference
            convert_xml_to_json()
        else:
            # Create fresh preference file
            create_settings_file()

    # Open prefence and return
    try:
        with open(settings_path) as f:
            settings = json.load(f)
        return settings
    except:
        return False


def save_generic_settings(settings_name, new_value):
    '''
    'Takes a settings name and assign a value in the generic settings dict
    :param settings_name: Name of the generic setting to save. If not found it will create a new one
    :param new_value: Value of the setting to save
    :return: None
    '''
    # Get settings
    settings = load_settings()

    # Create new value or replace existing
    settings["generic"][settings_name] = new_value

    # Write back
    create_settings_file(settings_dict=settings)


def load_searches():
    '''
    Load the searches file result, if no file is found, create default
    :return: [List of dictionaries]
    '''

    searches_file = get_prefs_folder() + os.sep + "cosmos_searches.json"

    # If it dont exist, create it:
    if os.path.exists(searches_file) is False:
        # Check if past file exist
        if os.path.exists(searches_file):
            # Convert existing preference
            convert_xml_to_json()
        else:
            # Create fresh preference file
            create_searches_file()

    # Open prefence and return
    with open(searches_file) as f:
        searches = json.load(f)
    return searches

def get_generic_settings(input):
    '''
    Get a specific settings from the settings file
    :param input: Input setting name to look for
    :return: Setting value if found, otherwise None
    '''

    settings = load_settings()
    #if settings["generic"].has_key(input):
    if input in settings["generic"]:
        return settings["generic"][input]
    else:
        logger.error("The generic settings you query dont exist, will return None: '{}'".format(input))
        return None


def get_script_path_list(onlyEnabled=True):
    '''
    Return a list of all script-paths in settings. By default only returning the ones that are enabled
    :param onlyEnabled: If True, return one the ones that are enabled
    :return: List of script paths
    '''
    settings = load_settings()
    paths = settings["generic"]["scriptPath"]
    if onlyEnabled:
        return [x["path"] for x in paths if x["enabled"] is True]
    else:
        return paths

def get_script_path_names():
    '''
    Return only the name/prefix of the paths found in prefs
    :return: Name/prefixes of all the paths
    '''
    settings = load_settings()
    paths = settings["generic"]["scriptPath"]
    return [x["name"] for x in paths if x["enabled"] is True]

def reset_recommended_search():
    '''
    Remove the recommended search file on disk to reset its history. "cosmos_searches.json"
    :return: None
    '''
    searches_file = get_prefs_folder() + os.sep + "cosmos_searches.json"

    # If it dont exist, create it:
    if os.path.exists(searches_file) is True:
        os.remove(searches_file)


def save_recommended_search(search_query, name_query):
    '''
    Save a recommender search item based on its query and time
    :param search_query: What was the search query used when searched
    :param name_query: Whats the name of the action executed
    :return: True or false if the file was created [Bool]
    '''

    processed_query = search_query.lower()

    # Load File
    search_list = load_searches()

    # Check if already in the list
    matching_index = [index for index, x in enumerate(search_list) if processed_query == x["query"].lower() and name_query == x["name"]]
    if len(matching_index) >= 1:
        # Change count
        item = search_list[matching_index[0]]
        item["count"] += 1
        # Set latest
        item["last"] = time.time()
    else:
        # Add new item
        item = {"query": search_query, "name": name_query, "count": 1, "last": time.time()}
        search_list.append(item)

    # Write back to file
    return create_searches_file(searches_dict=search_list)

def get_recommended_search(search_query, result_all=False):
    '''
    Get the recommended searches results as a ordered list by its query
    :param search_query: Search query to look for [Str]
    :param result_all: When True, give all result and ignore search-query [Bool]
    :return: List of dicts sorted after relevance
    '''
    processed_query = search_query.lower()

    # Load File
    search_list = load_searches()

    # Get result matching query
    if result_all:
        preferred_list = [x for x in search_list if search_query in x["query"].lower()]
    else:
        preferred_list = [x for x in search_list if search_query in x["query"].lower()]

    #Sort list
    current_time = time.time()
    current_date = datetime.fromtimestamp(current_time)

    # Create sorting methods based on different scores
    sorted_by_date = sorted(preferred_list, key=lambda x: x['last'])
    sorted_by_query = sorted(preferred_list, key=lambda x: x['query'].lower().startswith(processed_query))

    # Calculate count
    numbers = sorted([int(x["count"]) for x in preferred_list] + [0])
    max = numbers[-1]
    min = numbers[0]
    sorted_by_count = [(x - min) / (max - min) for x in [int(x["count"]) for x in preferred_list]]
    if (len(preferred_list) >= 1):
        for index, item in enumerate(preferred_list):
            # Calculate combinded score
            combind_score = sorted_by_date.index(item) + sorted_by_count[index] + sorted_by_query.index(item) + 1

            # Calculate time different
            time_stamp = datetime.fromtimestamp(float(item["last"]))
            sec_dur = (current_date - time_stamp).total_seconds()
            hours = divmod(sec_dur, 3600)[0]
            minutes = divmod(sec_dur, 60)[0]

            # Reassign date
            preferred_list[index]["last"] = str(int(minutes)) + " min"

            # Add extra values if in close proximity in time
            if minutes <= 1:
                combind_score *= 100
            elif minutes <= 10:
                combind_score *= 50
            elif minutes <= 30:
                combind_score *= 30
            elif hours <= 1:
                combind_score *= 10
            elif hours <= 6:
                combind_score *= 2
            elif hours <= 24:
                combind_score *= 1.5
            elif hours <= 72:
                combind_score *= 1.1

            # Assign score
            preferred_list[index]["score"] = combind_score

    # Sorted by score
    sorted_list = sorted(preferred_list, key=lambda x: x['score'])[::-1]

    return sorted_list


def get_list(list_name="list_name"):
    '''
    Return a list of the blacklist, favorites and other lists by its name
    :param list_name: Name of the list to look for [Str]
    :return: List of dictionaries including action data [Tuple]
    '''
    item_list = []

    if file_exist_in_preferences("cosmos_settings.json"):
        # Load settings
        settings = load_settings()

        item_list = settings["lists"][list_name]
    return item_list

def save_list(list_name="Favorites", content=[]):
    '''
    Return a list of the blacklist, favorites and other lists by its name
    :param list_name: Name of the list to save [Str]
    :param content: The content of the list to save
    :return: True if success [Bool]
    '''

    settings = load_settings()

    # Create new value or replace existing
    settings["lists"][list_name] = content

    # Write back
    status = create_settings_file(settings_dict=settings)
    return status


def save_generic_settings(settings_name, new_value):
    '''Takes a settings name and assign a value in the generic settings dict'''
    # Get settings
    settings = load_settings()

    # Create new value or replace existing
    settings["generic"][settings_name] = new_value

    # Write back
    create_settings_file(settings_dict=settings)


# def add_List_item()
def update_list(list_name="Favorites", old_name=None, name=None, info=None, command=None, tags=None, iconPath=None,category=None):
    '''
    Update a existing list item with a new name
    :param list_name: Name of the list to update
    :param old_name: Existing name
    :param name: New Name
    :param info: New info text
    :param command: New command
    :param tags: New tags
    :param iconPath: New iconPath
    :param category: New category
    :return: Status is successful [Bool]
    '''

    if old_name != None:
        # Get full settings and extract list
        settings = load_settings()
        list = settings["lists"][list_name]

        # Check if it exist already
        matching_index = [index for index, x in enumerate(list) if x["name"] == old_name]
        if len(matching_index) >= 1:
            # Change count
            item = list[matching_index[0]]

            if name != None: item["name"] = name
            if info != None: item["info"] = info
            if tags != None: item["tags"] = tags
            if command != None: item["command"] = command
            if iconPath != None: item["icon"] = iconPath
            if category != None: item["category"] = category

        # Save back settings
        return create_settings_file(settings_dict=settings)

def get_list_names(filterDefault=True):
    '''
    Get the names of all the lists avalible
    :param filterDefault: If enabled, only return the names of the custom user-facing lists
    :return: List of Strings [Tuple]
    '''
    # Get settings
    default_lists = ['Blacklist', 'Favorites', 'Latest']
    settings = load_settings()
    list_names = settings["lists"].keys()
    if filterDefault:
        list_names = [x for x in list_names if x not in default_lists]
    return list_names



def remove_list_item(list_name, name, category, info):
    '''
    Add a new item based on a dictionary item
    :param list_name: Name of the list to remove from
    :param name: Name of the Action
    :param category: Category of the Action
    :param info: Info for the action
    :return: Status is successful [Bool]
    '''

    # Get full settings and extract list
    settings = load_settings()
    list = settings["lists"][list_name]

    # Check if already in the list, if so remove it
    matching_index = [index for index, x in enumerate(list) if x["name"] == name and x["category"] == category and x["info"] == info]
    if len(matching_index) >= 1:
        del list[matching_index[0]]

    # Save back settings
    return create_settings_file(settings_dict=settings)


def add_list_item(card, list_name):
    '''
    Add a new item based on a dictionary item
    :param card: Action card from the cosmos UI
    :param list_name: Name of the list to add to
    :return: Status is successful [Bool]
    '''

    # Get full settings and extract list
    settings = load_settings()
    list = settings["lists"][list_name]

    # Get card information
    name = card.getTitle()
    info = card.getDescription()
    category = card.getCategory()
    command = card.getCommand()
    altCommand = card.getAltCommand()
    # if altCommand == None: altCommand = "False"
    # else: altCommand = "True"
    icon_path = card.getIconPath()
    id = card.getId()
    tags = card.get_tags()

    # Create empty item
    item = {}

    # Check if already in the list, if so remove it
    matching_index = [index for index, x in enumerate(list) if x["name"] == name and x["info"] == info]
    if len(matching_index) >= 1:
        del list[matching_index[0]]
    # If recent, make sure to remove the first item if more then if
    if list_name == "Latest":
        max_latest_count = 100


        # If more then 1
        #if len(list) >= 2:
        #    print("Adding previous item:", list[0]["name"])
        #    item["previous"] = list[0]

        # If on the verge
        if len(list) >= max_latest_count:
            # Delete the first one
            del list[-1]


    # Format check for pointer-based commands
    if isinstance(command, unicode) is True or isinstance(command, str) is True:
        pass
    else:
        command = u"{}@{}@pointerRef".format(name, category)

    item["name"] = name
    item["info"] = info
    item["tags"] = tags
    item["command"] = command
    if altCommand is False:
        item["altCommand"] = False
    else:
        item["altCommand"] = True
    item["icon"] = icon_path
    item["category"] = category
    item["id"] = str(id)
    item["last"] = time.time()

    # Append item to list
    list.insert(0, item)


    # Save back settings
    return create_settings_file(settings_dict=settings)


