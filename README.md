OpenIndy-PluginTemplate
=======================

This repository contains a template for an [OpenIndy](https://github.com/OpenIndy/OpenIndy) plugin. The instructions for creating your own plugins are described in the [OiPluginTemplate wiki](https://github.com/OpenIndy/OiPluginTemplate/wiki).

IDE
----

OpenIndy-PluginTemplate is developed with the Qt framework (Qt libs + Qt Creator IDE). You can download the framework [here](http://qt-project.org/downloads).


build
-----

The easiest way to build OpenIndy plugins is to use the Qt Creator. You can build OpenIndy plugins in `debug` or `release` mode.  

fork and upstream
------------------

If you want to develop your plugin on github, then simply [fork](https://github.com/OpenIndy/OiPluginTemplate/wiki/Get-Started) this repo!

If you work with a private remote git repo or a repo of the [OpenIndy Organisation](https://github.com/OpenIndy) then you have to add an upstream.

`git remote add upstream https://github.com/OpenIndy/OiPluginTemplate.git`

Use following commands for updating your repo:

`git fetch upstream`

`git merge upstream/master`


