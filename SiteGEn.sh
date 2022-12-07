#! /usr/bin/bash

cd page/

cat Layout2.txt >> Site.txt
mv Site.txt Site.md

pandoc -s MyRepo.md -o MyRepo.html 
pandoc -s MyText.md -o MyText.html
pandoc -s MyPosts.md -o MyPosts.html
pandoc -s  Site.md -o Site.html 