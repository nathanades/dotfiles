#!/usr/bin/env sh

Wall_Set()
{
    if [ -z $xtrans ] ; then
        xtrans="grow"
    fi

    if [ -z $xpos ] ; then
        xpos="center"
    fi

    swww img $HOME/Pictures/Wallpapers/Marseillaise.png \
    --transition-bezier .43,1.19,1,.4 \
    --transition-type $xtrans \
    --transition-duration 1 \
    --transition-fps 60 \
    --transition-pos $xpos
}

## check swww daemon

swww query
if [ $? -eq 1 ] ; then
    swww init
fi

Wall_Set
