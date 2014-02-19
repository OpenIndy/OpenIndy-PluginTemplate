OiPluginTemplate
================

This repository includes a template for an [OpenIndy](https://github.com/OpenIndy/OpenIndy) plugin.  

IDE
----
OpenIndy is developed with the Qt framework (Qt libs + Qt Creator IDE). You can download the framework [here](http://qt-project.org/downloads).


build
-----
The easiest way to build OpenIndy plugins is to use the Qt Creator. You can build OpenIndy plugins in `debug` or `release` mode.  

First build the openIndyLib. It includes functionalities such as linear algebra algorithmen.

- Qt Creator ----> `lib/openIndyLib/openIndyLib.pro`

Then develop and build your OpenIndy plugin. 

- Qt Creator ----> `OiTemplatePlugin.pro`
- If the build was successful, you will find your plugin under `bin/debug` or `bin/release`

Now you can use your Plugin in [OpenIndy](https://github.com/OpenIndy/OpenIndy).


