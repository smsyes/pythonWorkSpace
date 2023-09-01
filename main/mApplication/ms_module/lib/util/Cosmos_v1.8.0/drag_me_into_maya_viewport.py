import os, sys,shutil 

try:
    import maya.cmds as cmds
    from maya.app.startup import basic
    import maya.utils
    is_maya = True
except ImportError():
    is_maya = False


def files_exist(file_list):
    """Get all file paths that exist in the current folder.

    Args:
        file_list (list): List of paths

    Returns:
        list: List of all paths found
    """

    file_found = []
    for item in file_list:
        if os.path.exists(item):
            found = item
            file_found.append(found)

    return file_found


def clean_memory():
    '''
    Clean the current sys.path and sys.modules from anything to do with Cosmos
    '''
    path_list = sys.path[:]
    for index, path in enumerate(path_list[::-1]):
        if "cosmos" in path.lower():
            sys.path.remove(path)

    for module in list(sys.modules):
        if "cosmos" in module:
            del sys.modules[module]


def clean_userSetup(filePath):
    '''
    Remove the cosmos loading line from the userSetup.py
    '''
    # Read in the file
    with open(filePath, 'r') as file :
        file_data = file.read()

    # Write the file out again with the line disabled
    with open(filePath, 'w') as file:
        file.write(file_data.replace('import cosmos', '#import cosmos'))

def onMayaDroppedPythonFile(*args, **kwargs):
    """
    This function is only supported since Maya 2017 Update 3
    """
    pass

def _dropped_install():

    # Get default folders
    current_folder = os.path.dirname(__file__)
    content = ["cosmos", "cosmos.mod"]
    install_path = os.path.normpath(os.path.join(os.environ['MAYA_APP_DIR'], "modules"))
    scripts_folder = os.path.normpath(os.path.join(os.environ['MAYA_APP_DIR'], "scripts"))

    # Create install dialog
    input = create_dialog(message="Lets install Cosmos in:\n{}".format(install_path + os.sep + content[0]), title="Cosmos Installer")

    if input == "Cancel":
        cmds.error("Installation of Cosmos have been cancelled by the user")
        return

    # Check if old setup exists in Scripts folder
    old_cosmos_path = os.path.join(scripts_folder, "cosmos")
    user_setup_path = os.path.join(scripts_folder, "userSetup.py")

    if os.path.exists(old_cosmos_path):
        input = create_dialog(message="Cosmos is now an Maya Module\nLook like a older version of Cosmos exists in Maya/Scripts\nWould you like me to remove it?\n(Ps. If not, you would need to remove it manually)", title="Existing Cosmos version detected", icon="question", buttons=["Remove", "Keep"], cancelButton="Keep")
        if input == "Remove":
            print("Removing Old cosmos install in:", old_cosmos_path)
            shutil.rmtree(old_cosmos_path)

            if os.path.exists(user_setup_path):
                # Clean up the userSetup and sys.path
                clean_userSetup(user_setup_path)

        if input == "Keep":
            print("Keeping existing setup. This most likely will cause conflict on loading.")


    # Remove existing files/folders if they already exists, and copy them again
    for i, c in enumerate(content):
        path = os.path.normpath(os.path.join(install_path, c))
        if os.path.exists(path):
            print("Existing file found, overwrite:", path)
            try: 
                shutil.rmtree(path)
            except: 
                os.remove(path)

        # Copy package folder into modules root
        from_path = os.path.normpath(os.path.join(current_folder, c))
        to_path = os.path.join(install_path, c)
        if i == 0:
            shutil.copytree(from_path, to_path)
        else: shutil.copy(from_path, to_path) 


    clean_memory()
    # Add path if its not already there
    inside_path = os.path.join(install_path, "cosmos" + os.sep + "scripts")
    if not inside_path in sys.path:
       sys.path.append(inside_path)


    # Reload the modules
    cmds.loadModule(scan=True)
    cmds.loadModule(allModules=True)

    # Reload user Setup Files
    basic.executeUserSetup()

    print("Cosmos Installation Complete.\nIf no the shortcut is not working, please restart Maya and see you on the other side!")


def create_dialog(message="This is a default message for us", title="Cosmos Installer", icon="question", buttons=["Install", "Cancel"], cancelButton="Cancel"):
    '''Create a dialog for us'''
        # Create dialog
    input = cmds.confirmDialog(title=title,
                             message=message,
                             icon=icon,
                             button=buttons,
                             cancelButton=cancelButton,
                             dismissString=cancelButton)
    return input

if is_maya:
    _dropped_install()