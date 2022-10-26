#!/bin/bash

read -p "Enter the name of remote repository: " name
mkdir ~/rep/$name
cd ~/rep/$name
echo "#$name" >> README.md

git init .
git add .
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/JT-style/$name.git
git push -u origin main

echo "Done"
