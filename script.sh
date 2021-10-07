#!/bin/bash

# enter in repo directory.

echo "Enter Directory Name: "
read -p "Directory: " DIR 
cd $DIR

# delete the .git direcotry

rm -rf .git

# Now push the code in Gitlab

git init
read -p "Enter remote URL: " URL
git config user.email "asingh@netzary.com"   # add your email address here
git remote add origin $URL
git add .
git commit -m "Restoration from Bitbucket"
git push origin master

echo "Repo pushed successfully"