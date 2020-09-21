#!/bin/bash

if [ $# != 1 ]
then
    echo "Need input repository address"
else
    rm -rf .git
    git clone https://github.com/Sladge17/VSdebug_21.git
    cd VSdebug_21
    cp -r .vscode ./..
    cd ..
    rm -rf VSdebug_21
    git init
    git remote add git_cloud $1
    NAME=$(echo $1 | awk -F / '{print $5}' | awk -F . '{print $1}')
    echo "NAME = $NAME" > maketmp
    cat Makefile >> maketmp
    mv maketmp Makefile
    mv ../Setup_env ../$NAME
    rm -f setup.sh
    ./gitit.sh init commit
fi

