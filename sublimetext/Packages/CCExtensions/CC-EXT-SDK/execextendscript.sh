#!/bin/bash

appcode=$1

if [ "$appcode" = "ps" ]
then
    app="com.adobe.Photoshop"
    command="do javascript \"#include '$2'\""
elif [ "$appcode" = "ai" ]
then
    app="Adobe Illustrator"
    command="do javascript \"#include '$2'\""
elif [ "$appcode" = "id" ]
then
    app="Adobe InDesign CC 2015"
    command="do script \"#include '$2'\" language javascript"
elif [ "$appcode" = "ae" ]
then
    app="Adobe After Effects CC 2015"
    command="DoScriptFile \"$2\""
fi

osascript <<-AS
tell application "$app"
   $command
end tell
AS
