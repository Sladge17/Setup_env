#!/bin/bash

if [ $# != 2 ]
then
    echo "Need two parameters:
    1 - repository address
    2 - project name"

else
    rm -rf .git
    git clone https://github.com/Sladge17/VSdebug_21.git
    cd VSdebug_21
    cp -r .vscode ./..
    cd ..
    rm -rf VSdebug_21
    git init
    git remote add git_cloud $1
    rm -f setup.sh
fi

