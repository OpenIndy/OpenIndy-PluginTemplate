#-------------------------------------------------
#
# Project created by QtCreator 2013-10-12T15:43:14
#
#-------------------------------------------------

QT       += gui
QT += widgets
QT += serialport
QT += xml

TEMPLATE = lib
TARGET = $$qtLibraryTarget(p_example)

CONFIG += plugin

DEFINES += DEFAULT_LIBRARY

CONFIG(debug, debug|release) {
    DESTDIR = $$PWD/bin/debug
} else {
    DESTDIR = $$PWD/bin/release
}

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.moc
RCC_DIR = $$DESTDIR/.qrc
UI_DIR = $$DESTDIR/.ui

#--------------------------
# get OpenIndy-Math version
#--------------------------

OpenIndyMath_VERSION = $$system(git --git-dir $$PWD/lib/OpenIndy-Core/lib/OpenIndy-Math/.git --work-tree $$PWD describe --always --tags) # get git version
OpenIndyMath_VERSION = $$replace(OpenIndyMath_VERSION, "-g"{1}\w*, ) # remove commit hash after tag name
OpenIndyMath_VERSION = $$replace(OpenIndyMath_VERSION, "-", ".") # remove remaining hyphen
OpenIndyMath_VERSION = $$replace(OpenIndyMath_VERSION, "\b[0-9a-f]{5,40}\b", ) # remove commit hash (only if no tag has been set yet)

isEmpty(OpenIndyMath_VERSION){
    message("no math version")
}else{
    message(OpenIndy-Math version:)
    message($$OpenIndyMath_VERSION)
}

#--------------------------
# get OpenIndy-Core version
#--------------------------

OpenIndyCore_VERSION = $$system(git --git-dir $$PWD/lib/OpenIndy-Core/.git --work-tree $$PWD describe --always --tags) # get git version
OpenIndyCore_VERSION = $$replace(OpenIndyCore_VERSION, "-g"{1}\w*, ) # remove commit hash after tag name
OpenIndyCore_VERSION = $$replace(OpenIndyCore_VERSION, "-", ".") # remove remaining hyphen
PluginVersion = $$replace(OpenIndyCore_VERSION, "[/.]", )
DEFINES += PLUGIN_INTERFACE_VERSION=$$PluginVersion
OpenIndyCore_VERSION = $$replace(OpenIndyCore_VERSION, "\b[0-9a-f]{5,40}\b", ) # remove commit hash (only if no tag has been set yet)

isEmpty(OpenIndyCore_VERSION){
    message("no core version")
}else{
    message(OpenIndy-Core version:)
    message($$OpenIndyCore_VERSION)
}

#------------------------------------
# get OpenIndy-PluginTemplate version
#------------------------------------

OpenIndyPluginTemplate_VERSION = $$system(git --git-dir $$PWD/.git --work-tree $$PWD describe --always --tags) # get git version
OpenIndyPluginTemplate_VERSION = $$replace(OpenIndyPluginTemplate_VERSION, "-g"{1}\w*, ) # remove commit hash after tag name
OpenIndyPluginTemplate_VERSION = $$replace(OpenIndyPluginTemplate_VERSION, "-", ".") # remove remaining hyphen
OpenIndyPluginTemplate_VERSION = $$replace(OpenIndyPluginTemplate_VERSION, "\b[0-9a-f]{5,40}\b", ) # remove commit hash (only if no tag has been set yet)

isEmpty(OpenIndyPluginTemplate_VERSION){
    message("no plugin version")
}else{
    message(OpenIndy-PluginTemplate version:)
    message($$OpenIndyPluginTemplate_VERSION)
    VERSION = OpenIndyPluginTemplate_VERSION
}

#--------------
# OpenIndy-Core
#--------------

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/OpenIndy-Core/bin/release/ -lopenIndyCore
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/OpenIndy-Core/bin/debug/ -lopenIndyCore
else:unix:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/OpenIndy-Core/bin/release/ -lopenIndyCore
else:unix:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/OpenIndy-Core/bin/debug/ -lopenIndyCore

INCLUDEPATH += -L$$PWD/lib/OpenIndy-Core/bin/debug
DEPENDPATH += -L$$PWD/lib/OpenIndy-Core/bin/debug

INCLUDEPATH += -L$$PWD/lib/OpenIndy-Core/bin/release
DEPENDPATH += -L$$PWD/lib/OpenIndy-Core/bin/release

#--------------
# OpenIndy-Math
#--------------

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/OpenIndy-Core/lib/OpenIndy-Math/bin/release/ -lopenIndyMath
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/OpenIndy-Core/lib/OpenIndy-Math/bin/debug/ -lopenIndyMath
else:unix:CONFIG(release, debug|release): LIBS += -L$$PWD/lib/OpenIndy-Core/lib/OpenIndy-Math/bin/release/ -lopenIndyMath
else:unix:CONFIG(debug, debug|release): LIBS += -L$$PWD/lib/OpenIndy-Core/lib/OpenIndy-Math/bin/debug/ -lopenIndyMath

INCLUDEPATH += -L$$PWD/lib/OpenIndy-Core/lib/OpenIndy-Math/bin/debug
DEPENDPATH += -L$$PWD/lib/OpenIndy-Core/lib/OpenIndy-Math/bin/debug

INCLUDEPATH += -L$$PWD/lib/OpenIndy-Core/lib/OpenIndy-Math/bin/release
DEPENDPATH += -L$$PWD/lib/OpenIndy-Core/lib/OpenIndy-Math/bin/release

INCLUDEPATH += $$PWD/lib/OpenIndy-Core/include
INCLUDEPATH += $$PWD/lib/OpenIndy-Core/include/geometry
INCLUDEPATH += $$PWD/lib/OpenIndy-Core/include/util
INCLUDEPATH += $$PWD/lib/OpenIndy-Core/include/plugin
INCLUDEPATH += $$PWD/lib/OpenIndy-Core/include/plugin/exchange
INCLUDEPATH += $$PWD/lib/OpenIndy-Core/include/plugin/function
INCLUDEPATH += $$PWD/lib/OpenIndy-Core/include/plugin/networkAdjustment
INCLUDEPATH += $$PWD/lib/OpenIndy-Core/include/plugin/sensor
INCLUDEPATH += $$PWD/lib/OpenIndy-Core/include/plugin/simulation
INCLUDEPATH += $$PWD/lib/OpenIndy-Core/include/plugin/tool
INCLUDEPATH += $$PWD/lib/OpenIndy-Core/lib/OpenIndy-Math/include

INCLUDEPATH += $$PWD

SOURCES += p_factory.cpp \

HEADERS += p_factory.h \
    lib/OpenIndy-Core/lib/OpenIndy-Math/include/chooselalib.h \
    lib/OpenIndy-Core/lib/OpenIndy-Math/include/global.h \
    lib/OpenIndy-Core/lib/OpenIndy-Math/include/linearalgebra.h \
    lib/OpenIndy-Core/lib/OpenIndy-Math/include/oimat.h \
    lib/OpenIndy-Core/lib/OpenIndy-Math/include/oivec.h

OTHER_FILES += metaInfo.json
