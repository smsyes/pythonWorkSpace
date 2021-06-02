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
                    c="print 'FK to IK Switching'")
        pm.menuItem(p=menu, l="FK to IK", rp="SE", 
                    c="print 'IK to FK Snaping'")
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
        
        pm.menuItem(p=menu, l="Rebuild Marking Menu", c=rebuildMarkingMenu)

        

markingMenu()

def rebuildMarkingMenu(*args):
    pm.evalDeferred("""reload(markingMenu)markingMenu.markingMenu()""")

