import maya.cmds as mc
import maya.mel as mel
import maya.OpenMaya as om

# ================================================
# Fix Error_outliner look
# ================================================

def eliminate_outliner_callback ( client_data ) : 

    # Get Info
    all_panels  =  mc.getPanel ( type = "outlinerPanel" )  or  []
    detachedPanels = []
    for curPanel  in  all_panels :
        sc = mc.outlinerEditor(curPanel, q=True, selectCommand=True)
        if sc is not None:  # if there are selectCommand set ...
            detachedPanels.append( curPanel )

    # Fix Error
    for curPanel  in  detachedPanels :
        mc.outlinerPanel ( curPanel ,  e = True ,  unParent = True )   # remove infected panel
        mc.file ( uiConfiguration = False )   # mark as do not save ui info within scene file
        if (mc.optionVar ( exists = "useScenePanelConfig" ) and mc.optionVar (q = "useScenePanelConfig" )  ==  0 ) :
            mel.eval ( "$gOutlinerPanelNeedsInit = 1;" )   # flag to restore later
    # Output
    if detachedPanels :
        msg ='The outliner error is detected so.\nthe deducted outliner is removed.'
        mc.confirmDialog(title='Confirm', message=msg, button=['Okay'] )
        mel.eval ( "initOutlinerPanel ();" )   # restore outliner if flagged

# run
om.MSceneMessage.addCallback (om.MSceneMessage.kAfterOpen, eliminate_outliner_callback )
eliminate_outliner_callback ( None )