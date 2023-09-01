from __future__ import print_function, unicode_literals

from .Qt import QtWidgets, QtCompat, QtCore, QtGui,QtSvg
import os, sys
windowAnim = True

if sys.version_info[0] >= 3:
    # in python 3, unicode got renamed to str
    unicode = str


os.environ['QT_PREFERRED_BINDING'] = os.pathsep.join(['PySide2', 'PySide2'])
relativePath = os.path.dirname(os.path.realpath(__file__)) + os.sep
parentPath = os.path.abspath(os.path.join(relativePath, os.pardir))


# Load the svg
def load_svg(iconPath, size=(20,20)):
    pixmap =  load_svg_pixmap(iconPath, size=size)
    icon = QtGui.QIcon(pixmap)

    return icon

def load_svg_pixmap(iconPath, size=(20,20)):
    svg_renderer = QtSvg.QSvgRenderer(iconPath)
    image = QtGui.QImage(size[0], size[1], QtGui.QImage.Format_ARGB32)
    image.fill(0x00000000)
    svg_renderer.render(QtGui.QPainter(image))
    pixmap = QtGui.QPixmap.fromImage(image)

    return pixmap

def svg_icon(button=None, path=None):
    '''Load a svg icon onto a button respecting its size'''
    if type(button) == QtWidgets.QPushButton:
        size = (button.iconSize().width(), button.iconSize().height())
    elif "fadeButton" in str(type(button)):
        size = (button.iconSize().width(), button.iconSize().height())
    elif type(button) == QtWidgets.QToolButton:
        size = (button.iconSize().width(), button.iconSize().height())
    elif type(button) == QtWidgets.QLabel:
        size = (button.width(), button.height())
    else:
        print("Unsupported type:", type(button))

    svg_pixmap = load_svg_pixmap(path, size=(50, 50))

    if type(button) == QtWidgets.QPushButton or "fadeButton" in str(type(button)):
        button.setIcon(QtGui.QIcon(svg_pixmap))
    elif type(button) == QtWidgets.QLabel:
        button.setPixmap(svg_pixmap)
    else:
        print("Unsupported type:", type(button))
    return svg_pixmap

def qtUiLoader(uifile, widget=None):
    ui = QtCompat.loadUi(uifile)  # Qt.py mapped function
    if not widget:
        return ui
    else:
        for member in dir(ui):
            if not member.startswith('__') and \
                            member is not 'staticMetaObject':
                setattr(widget, member, getattr(ui, member))
        return ui



def autoFieldWidth(inputObject, offset=0, minimum=0):
    '''Takes any object that have a "text" attribute and sets its width according to its content'''
    text = inputObject.text()
    metrics = QtGui.QFontMetrics(inputObject.font())
    width = metrics.width(text) + offset
    #Set field
    if width <= minimum: width = minimum

    inputObject.setMaximumWidth(width)
    inputObject.setMinimumWidth(width)

def selectItem(listWidget, index):
    '''Select the index of a QListWidget'''
    firstItem = listWidget.item(index)
    listWidget.setCurrentItem(firstItem)

def centerWidgetOnScreen(widget):
    '''Center a given widget on the active screen'''
    frameGm = widget.frameGeometry()
    screen = QtWidgets.QApplication.desktop().screenNumber(QtWidgets.QApplication.desktop().cursor().pos())
    centerPoint = QtWidgets.QApplication.desktop().screenGeometry(screen).center()
    frameGm.moveCenter(centerPoint)
    widget.move(frameGm.topLeft())

def animateWidgetSize(element, start=(300, 100), end=(300, 150),expanding=False, attributelist=("minimumSize", "maximumSize")):
    '''Animate an objects height'''

    duration = min(abs(start[1] - end[1]) * 5, 500)
    #duration = 0
    #for attribute in ["minimumSize", "maximumSize"]:
    for attribute in attributelist:
        if attribute == "minimumSize":
            element.setMinimumHeight(end[1])
        elif attribute == "maximumSize":
            element.setMaximumHeight(0)
            # pass

        # Create animation property and set start and end point
        animation = QtCore.QPropertyAnimation(element, attribute.encode("utf-8"), element)
        if attribute == "maximumSize":
            animation.setStartValue(QtCore.QSize(6000, start[1]))
            animation.setEndValue(QtCore.QSize(6000, end[1]))
        else:
            animation.setStartValue(QtCore.QSize(0, start[1]))
            animation.setEndValue(QtCore.QSize(0, end[1]))

        # Create easing style
        style = QtCore.QEasingCurve()
        if start[1] <= end[1]:
            style.setType(QtCore.QEasingCurve.OutBounce)
            style.setAmplitude(0.2)

        else:
            style.setType(QtCore.QEasingCurve.InOutQuart)
        animation.setEasingCurve(style)

        if expanding == True:
            if start[1] <= end[1]:
                if attribute == "maximumSize":
                    [animation.finished.connect(x) for x in [lambda: element.setMaximumHeight(1699999), lambda: element.setMinimumHeight(0)]]

        # Set duration
        animation.setDuration(duration)

        # Start animation and delete when finished
        animation.start(QtCore.QPropertyAnimation.DeleteWhenStopped)


###################################################################################################
# Animation
###################################################################################################

def propertyAnimation(start=[0, 0], end=[30, 0], duration=300, object=None, property="iconSize",mode="InOutQuint"):
    animation = QtCore.QPropertyAnimation(object, property.encode("utf-8"), object)
    # Easing

    style = QtCore.QEasingCurve()
    if mode == "Linear": style.setType(QtCore.QEasingCurve.Linear)
    elif mode == "InQuad": style.setType(QtCore.QEasingCurve.InQuad)
    elif mode == "OutQuad":style.setType(QtCore.QEasingCurve.OutQuad)
    if mode == "InOutQuad": style.setType(QtCore.QEasingCurve.InOutQuad)
    elif mode == "OutInQuad": style.setType(QtCore.QEasingCurve.OutInQuad)
    elif mode == "InCubic":style.setType(QtCore.QEasingCurve.InCubic)
    if mode == "OutCubic": style.setType(QtCore.QEasingCurve.OutCubic)
    elif mode == "InOutCubic": style.setType(QtCore.QEasingCurve.InOutCubic)
    elif mode == "OutInCubic":style.setType(QtCore.QEasingCurve.OutInCubic)
    if mode == "InQuart": style.setType(QtCore.QEasingCurve.InQuart)
    elif mode == "OutQuart": style.setType(QtCore.QEasingCurve.OutQuart)
    elif mode == "InOutQuart":style.setType(QtCore.QEasingCurve.InOutQuart)
    if mode == "OutInQuart": style.setType(QtCore.QEasingCurve.OutInQuart)
    elif mode == "InQuint": style.setType(QtCore.QEasingCurve.InQuint)
    elif mode == "InBounce":style.setType(QtCore.QEasingCurve.InBounce)
    elif mode == "OutExpo":style.setType(QtCore.QEasingCurve.OutExpo)
    elif mode == "InExpo": style.setType(QtCore.QEasingCurve.InExpo)
    elif mode == "InOutQuint": style.setType(QtCore.QEasingCurve.InOutQuint)
    elif mode == "OutBounce":
        style.setType(QtCore.QEasingCurve.OutBounce)
        style.setAmplitude(0.5)
    else:
        print("Mode not supported:", mode)
        style.setType(QtCore.QEasingCurve.InOutQuint)


    animation.setEasingCurve(style)

    # Set Duration
    animation.setDuration(duration)

    # Set start values
    if start[0] == "current":
        startValueX = object.iconSize().height()
    else:
        startValueX = start[0]
    if start[1] == "current":
        startValueY = object.iconSize().width()
    else:
        startValueY = start[1]
    animation.setStartValue(QtCore.QSize(startValueX, startValueY))
    animation.setEndValue(QtCore.QSize(end[0], end[0]))
    animation.start()

    # Animate
    animation.start()

def fadeAnimation(start=0, end=1, duration=300, object=None, finishAction=None):
    if windowAnim is True:
        style = QtCore.QEasingCurve()
        style.setType(QtCore.QEasingCurve.OutQuint)

        if start == "current":
            try: start = object.opacity()
            except: start = 1

        if end == "current":
            end = object.opacity()


        # Animate window opasity
        try:
            opacity_animation = QtCore.QPropertyAnimation(object, "opacity".encode("utf-8"), object)
            opacity_animation.setEasingCurve(style)
            opacity_animation.setDuration(duration)
            opacity_animation.setStartValue(start)
            opacity_animation.setEndValue(end)
            opacity_animation.start()
            if finishAction != None:
                opacity_animation.finished.connect(finishAction)
        except:
            pass
    else:
        object.setOpacity(end)


def fadeWindowAnimation(start=0, end=1, duration=300, object=None, finishAction=None):
    if windowAnim is True:
        style = QtCore.QEasingCurve()
        style.setType(QtCore.QEasingCurve.OutQuint)

        # Animate window opasity
        opasicyAnimation = QtCore.QPropertyAnimation(object, b"windowOpacity", object)
        opasicyAnimation.setEasingCurve(style)
        opasicyAnimation.setDuration(duration)
        opasicyAnimation.setStartValue(start)
        opasicyAnimation.setEndValue(end)
        opasicyAnimation.start()
        if finishAction != None:
            opasicyAnimation.finished.connect(finishAction)
    else:
        object.setWindowOpacity(end)
        if finishAction != None:
            object.close()

def resizeWindowAnimation(start=(0, 0), end=(0, 0), duration=300, object=None, finishAction=None,attribute="maximumHeight"):
    if windowAnim is True:
        style = QtCore.QEasingCurve()
        style.setType(QtCore.QEasingCurve.OutQuint)

        if start[0] == "current": start[0] = object.size().height()
        if start[1] == "current": start[1] = object.size().width()

        # Animate window opasity
        positionAnimation = QtCore.QPropertyAnimation(object, attribute.encode("utf-8"), object)
        positionAnimation.setEasingCurve(style)
        positionAnimation.setDuration(duration)
        positionAnimation.setStartValue(QtCore.QSize(start[0], start[1]))
        positionAnimation.setEndValue(QtCore.QSize(end[0], end[1]))
        positionAnimation.start()

        if finishAction != None:
            positionAnimation.finished.connect(finishAction)
    else:
        object.resize(end[0], end[1])
        if finishAction != None:
            object.close()
    pass

def slideWindowAnimation(start=-100, end=0, duration=300, object=None, animationStyle=None,finishAction=None):
    if windowAnim is True:
        # Get current position
        try:
            pos = object.pos()

            # Create animation and properties
            slideAnimation = QtCore.QPropertyAnimation(object, b'pos', object)
            slideAnimation.setDuration(duration)
            style = QtCore.QEasingCurve()
            # Change curve if the value is end or beginning
            if start >= end:
                style.setType(QtCore.QEasingCurve.OutExpo)
            else:
                style.setType(QtCore.QEasingCurve.InOutExpo)
            if animationStyle != None:  style.setType(animationStyle)

            # Connect finish animation
            if finishAction != None: slideAnimation.finished.connect(finishAction)

            slideAnimation.setEasingCurve(style)
            slideAnimation.setStartValue(QtCore.QPoint(pos.x(), pos.y() + start))
            slideAnimation.setEndValue(QtCore.QPoint(pos.x(), pos.y() + end))
            slideAnimation.start()
        except:
            pass



    ###################################################################################################
# Dialogss
###################################################################################################

def yesCancelDialog(title="Remove action", message="Are you sure you wanna remove this action?"):
    # Create dialog
    saveCurrentDialog = QtWidgets.QMessageBox()
    saveCurrentDialog.setText(title)
    saveCurrentDialog.setInformativeText(message)
    saveCurrentDialog.addButton(QtWidgets.QMessageBox.No)
    saveCurrentDialog.addButton(QtWidgets.QMessageBox.Yes)

    # Execute dialog
    reply = saveCurrentDialog.exec_()
    if reply == QtWidgets.QMessageBox.Yes:
        reply = "Yes"
    if reply == QtWidgets.QMessageBox.No:
        reply = "Cancel"
    return reply

def saveDialog(title="Unsaved Action", message="Do you want to save your changes?", object=False):
    # Create dialog
    saveCurrentDialog = QtWidgets.QMessageBox()
    saveCurrentDialog.setText(title)
    saveCurrentDialog.setInformativeText(message)
    saveCurrentDialog.setStandardButtons(
        QtWidgets.QMessageBox.Save | QtWidgets.QMessageBox.Discard | QtWidgets.QMessageBox.Cancel)
    saveCurrentDialog.setDefaultButton(QtWidgets.QMessageBox.Save)
    # Execute dialog
    reply = saveCurrentDialog.exec_()
    if reply == QtWidgets.QMessageBox.Discard:
        object.fadeCloseWindow(True)
    if reply == QtWidgets.QMessageBox.Save:
        object.saveAction()
    if reply == QtWidgets.QMessageBox.Cancel:
        pass
    return reply


class filterHeader(QtWidgets.QPushButton):
    '''Add a custom header for the actionlist'''

    def __init__(self, args):
        # Set button size
        self.height = 30

        # Set sizing policy on button
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.MinimumExpanding)

        # Set cursor
        self.setCursor(QtCore.Qt.PointingHandCursor)

        # self.setSize(self.width, self.height)
        self.setToolButtonStyle(QtCore.Qt.ToolButtonTextBesideIcon)

        # Set styling of the header
        self.setStylesheet("background-color: rgb(0, 0, 0, 0);color: rgb(250,250,250,100)")
        # Disable by default
        self.disasbled(True)


class filterCheckbox(QtWidgets.QCheckBox):
    '''Create a checkbox that returns the result to its parent instance'''

    def __init__(self):
        super(filterCheckbox, self).__init__()
        self.type = None
        self.attribute = None

        self.setMinimumHeight(30)
        self.setMaximumHeight(30)

    def setTitle(self, title):
        # Set size based on text input
        self.setText(title)
        autoFieldWidth(self, offset=30)


class tagButton(QtWidgets.QPushButton):
    '''Create a checkbox that returns the result to its parent instance'''

    def __init__(self):
        super(tagButton, self).__init__()
        self.tag = None
        self.closeTag = False
        self.setObjectName("tagItem")

        self.setMinimumHeight(20)
        self.setMaximumHeight(20)
        self.setStyleSheet(
            "QPushButton\n{\n\nbackground-color: rgb(250,250,250,30);\ncolor: rgb(250, 250, 250);\nborder-top-left-radius: 9px;\nborder-top-right-radius: 0px;\nborder-bottom-left-radius: 9px;\nborder-bottom-right-radius: 0px;\npadding-left: 10px;\npadding-right: 5px;\n}\n\nQPushButton:hover\n{\n\nbackground-color: rgb(250,250,250,20);\n}\n\nQPushButton:pressed\n{\n\nbackground-color: rgb(0,0,0,30);\n}")

    def setTitle(self, title):
        # Set size based on text input
        self.setText(title)
        self.tag = title

    def closeMode(self):
        self.closeTag = True
        self.setIcon(QtGui.QPixmap("{}".format((parentPath.replace("\\", "/") + os.sep + 'icons/action_cross.png'))))
        self.setIconSize(QtCore.QSize(10, 10))
        self.setStyleSheet(
            "QPushButton\n{\n\nmargin-right: 5px;background-color: rgb(250,250,250,30);\ncolor: rgb(250, 250, 250);\nborder-top-left-radius: 0px;\nborder-top-right-radius: 9px;\nborder-bottom-left-radius: 0px;\nborder-bottom-right-radius: 9px;\npadding-left: 2px;\npadding-right: 4;\n}\n\nQPushButton:hover\n{\n\nbackground-color: rgb(250,250,250,20);\n}\n\nQPushButton:pressed\n{\n\nbackground-color: rgb(0,0,0,30);\n}")


class fadeButton(QtWidgets.QToolButton):
    """Create star-icon on card """

    def __init__(self, parent):
        super(fadeButton, self).__init__()

        self.width = 20
        self.height = 20
        self.opacity = 0.3
        self.endOpacity = 0.7
        self.inAnimDuration = 300
        self.outAnimDuration = 800

        # Create opacity effect
        self.opacityEffect = QtWidgets.QGraphicsOpacityEffect(self)
        self.setGraphicsEffect(self.opacityEffect)
        self.setAutoFillBackground(True)
        self.setOpacity(self.opacity)
        self.activeButton = None

        # Set sizing policy on button
        self.setSizePolicy(QtWidgets.QSizePolicy.Fixed, QtWidgets.QSizePolicy.MinimumExpanding)

        # Set cursor
        self.setCursor(QtCore.Qt.PointingHandCursor)

        # Set sizing of the button
        self.setToolButtonStyle(QtCore.Qt.ToolButtonTextBesideIcon)

        self.setStyleSheet(
            '''QToolButton {color: rgb(250, 250, 250);background-color: rgb(0, 250, 0,0);border-style: None;border-width: 0px;}QToolButton:menu-indicator { image: none; }''')

    def setOpacity(self, opacity):
        self.opacityEffect.setOpacity(opacity)
        self.opacity = opacity

    def setSize(self, width, height):
        self.setIconSize(QtCore.QSize(width, height))

        self.width = width
        self.height = height

    def enterEvent(self, event):
        if self.activeButton is False:
            fadeAnimation(start="current", end=self.endOpacity, duration=self.inAnimDuration,
                                 object=self.opacityEffect)
            # self.setToolButtonStyle(QtCore.Qt.ToolButtonTextBesideIcon)

    def leaveEvent(self, event):
        if self.activeButton is False:
            fadeAnimation(start="current", end=self.opacity, duration=self.outAnimDuration,
                                 object=self.opacityEffect)
