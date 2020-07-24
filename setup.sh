#!/bin/bash

rm -rf .git
git clone https://github.com/Sladge17/VSdebug_21.git
cd VSdebug_21
cp -r .vscode ./..
cd ..
rm -rf VSdebug_21

echo .git > .gitignore
echo .vscode >> .gitignore
echo gitit.sh >> .gitignore
echo ./obj >> gitignore
echo *.o >> .gitignore
echo *.a >> .gitignore
echo a.out >> .gitignore
echo a.out.dSYM >> .gitignore
echo .DS_Store >> .gitignore
echo 00 >> .gitignore

mkdir src includes

if [ $# == 1 ]
then
    git init
    git remote add git_cloud $1
fi
rm -f setup.sh
