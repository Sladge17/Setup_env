#!/bin/bash

rm -rf .git
git clone https://github.com/Sladge17/VSdebug_21.git
cd VSdebug_21
cp -r .vscode ./..
cd ..
rm -rf VSdebug_21

mkdir src includes

if [ $# == 1 ]
then
    git init
    git remote add git_cloud $1
fi
rm -f setup.sh
