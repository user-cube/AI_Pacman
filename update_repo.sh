#!/bin/bash 


function sync()
{
    git pull https://github.com/dgomes/iia-ia-pacman
    git push
}


sync
