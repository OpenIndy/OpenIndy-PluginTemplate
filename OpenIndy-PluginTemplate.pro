
TEMPLATE = subdirs

SUBDIRS = \
    core \
    plugin

# project locations
plugin.subdir = $$PWD/build
core.subdir = $$PWD/lib/OpenIndy-Core

# project dependencies
plugin.depends = core
