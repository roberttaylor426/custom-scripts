#!/usr/bin/zsh

branch_name=$(git symbolic-ref -q HEAD)
branch_name=${branch_name##refs/heads/}
branch_name=${branch_name:-HEAD}
git checkout master
git pull -p
git br -d $branch_name
