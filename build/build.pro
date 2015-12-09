#-------------------------------------------------
#
# Project created by QtCreator 2013-10-12T15:43:14
#
#-------------------------------------------------

QT       += core gui widgets serialport xml

TARGET = $$qtLibraryTarget(p_example)

TEMPLATE = lib
CONFIG += plugin

DEFINES += DEFAULT_LIBRARY

# version number from git
include($$PWD/version.pri)

# general build configuration
include($$PWD/config.pri)

# external libraries
include($$PWD/dependencies.pri)

# include paths
INCLUDEPATH += $$PWD/..

# source files
SOURCES += $$PWD/../p_factory.cpp

# header files
HEADERS += $$PWD/../p_factory.h

# other files
OTHER_FILES += $$PWD/../metaInfo.json
