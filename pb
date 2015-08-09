#!/usr/bin/zsh

git checkout master
git pull -p
git br | grep -v master | xargs git br -d
