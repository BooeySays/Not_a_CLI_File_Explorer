#!/bin/bash

CDANDLS(){
cd "$@";
#clear;
echo;
ls;
#. $HOME/myscripts/files/whereami.sh; # Removing this because I think it will look better if it's part of the PS1 prompt
}
