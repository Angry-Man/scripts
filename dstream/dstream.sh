#!/bin/zsh

#This is a script to make starting livestreams less of a hassle typing out the whole URL

#list of streamers
list=(
tobiasfate
skillspecs
forsen
eduardo_hook
criticalrole
criken
b0aty
"Someone Else")

# Select from List or other
currentstream=$(printf '%s\n' "${list[@]}" | dmenu -p "Which stream are we watching today?")
# Decide if we just use something from the list or manually enter something else

if [ $currentstream=="Someone Else" ]; then
    currentstream=$(printf "" | dmenu -p "Enter stream you want to watch.")
fi

mpv https://www.twitch.tv/$currentstream
