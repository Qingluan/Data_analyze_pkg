#!/bin/sh
DM_NAME="Data_python"
 

pip install virtualenv >& ./error.log
if grep "error" ./error.log;
then 
	cat ./error.log;
	exit;
fi

virtualenv $DM_NAME;
source "~/$DM_NAME/bin/activate"

mkdir -p "~/$DM_NAME/SRC" && mv ./install_all.sh  ./inst  "~/$DM_NAME/SRC/";
cd "~/$DM_NAME/SRC/";

/bin/bash ./inst;

