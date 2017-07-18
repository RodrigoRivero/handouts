#!/bin/sh

## Configure git

git config --global user.name RodrigoRivero
git config --global user.email rodrigoriverocastro@gmail.com

## Change the "origin" remote URL and push
git remote set-url origin git@github.com:RodrigoRivero/handouts.git

## Set upstream
git remote add upstream https://github.com/sesync-ci/handouts
git pull upstream master
