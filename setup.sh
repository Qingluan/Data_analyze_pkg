#!/bin/sh
DM_NAME="Data_python"
 

pip install virtualenv >& ./error.log
if grep "error" ./error.log;
then 
	cat ./error.log;
	exit;
fi

sudo virtualenv ~/$DM_NAME;

while [ ! -f ~/$DM_NAME/bin/activate ];
do
	echo "create virtualenv .....";
	sleep 5;
done

source ~/$DM_NAME/bin/activate
echo "entry san ...";
sleep 5
echo "$(mkdir -p ~/$DM_NAME/SRC && mv ./install_all.sh  ./inst  ~/$DM_NAME/SRC/)";
cd ~/$DM_NAME/SRC/;

/bin/bash ./inst;

