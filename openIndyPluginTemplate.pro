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
