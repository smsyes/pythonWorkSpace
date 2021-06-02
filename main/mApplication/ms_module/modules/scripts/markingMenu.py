# -*- coding: utf-8 -*-
"""============================================================================
Module descriptions.

__AUTHOR__ = 'minsung'
__UPDATE__ = 20210531

:Example:
- Add below script to userSetup

import pymel.core as pm
pm.evalDeferred('import markingMenu;markingMenu.markingMenu()')


MENU_NAME – quite obviously this one sets the name of our custom marking menu.
mm – this one defines this popupMenu as a marking menu.
b – this is the mouse button we would like to trigger the marking menu. 
    1 – left, 2 – middle, 3 – right.
aob – allows option boxes.
ctl – defines the Ctrl button
alt – defines the Alt button
sh – defines the Shift button
p – the parent ui element.
pmo – this flag declares that the command that we pass to the pmc flag should 
      be executed only once and not everytime we invoke the marking menu. 
      If this is false, everytime we trigger our custom marking menu, 
      we will see our menus growing as more and more menuItems will be added.
pmc – this is the command that gets called right before the popupMenu is 
      displayed.
============================================================================"""
import pymel.core as pm

MENU_NAME = "markingMenu"

class markingMenu():
    def __init__(self):
        self._removeOld()
        self._build()
        
    def _removeOld(self):
        if pm.popupMenu(MENU_NAME, ex=1):
            pm.deleteUI(MENU_NAME)
            
    def _build(self):
        menu = pm.popupMenu(MENU_NAME, mm = 1, b = 2, aob = 1, ctl = 1, alt=1, 
                            sh=0, p = "viewPanes", pmo=1, 
                            pmc = self._buildMarkingMenu)
        
    def _buildMarkingMenu(self, menu, parent):
        
        ## Radial positioned
        pm.menuItem(p=menu, l="FK / IK", rp="SW", 
                    c=self._FKIKSwitch)
        pm.menuItem(p=menu, l="FK to IK", rp="SE", 
                    c=self._FKToIKSnap)
        # pm.menuItem(p=menu, l="North East Button", rp="NE", c="pm.circle()")
        
        # subMenu = pm.menuItem(p=menu, l="North Sub Menu", rp="N", subMenu=1)
        # pm.menuItem(p=subMenu, l="North Sub Menu Item 1")
        # pm.menuItem(p=subMenu, l="North Sub Menu Item 2")
        
        # pm.menuItem(p=menu, l="South", rp="S", c="print 'South'")
        # pm.menuItem(p=menu, ob=1, c="print 'South with Options'")
        
        ## List
        # pm.menuItem(p=menu, l="First menu item")
        # pm.menuItem(p=menu, l="Second menu item")
        # pm.menuItem(p=menu, l="Third menu item")
        # pm.menuItem(p=menu, l="Create poly cube", c="pm.polyCube()")
        pm.menuItem(p=menu, l="Rebuild Marking Menu", c=self._rebuildMarkingMenu)

    def _FKIKSwitch(self, *args):
        print "FK to IK Switching"

    def _FKToIKSnap(self, *args):
        print "IK to FK Snaping"
    
    def _rebuildMarkingMenu(self, *args):
        pm.evalDeferred('reload(markingMenu);markingMenu.markingMenu()')
    
