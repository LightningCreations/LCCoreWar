#!/bin/bash -x
git add -A .
git commit
git pull
git push
echo -e "\033[0;34mYou have been\033[0;37mjacked!"