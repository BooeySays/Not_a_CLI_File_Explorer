#!/bin/bash

CDANDLS(){
cd "$@";
clear;
ls;
. $HOME/myscripts/files/whereami.sh;
}
