#!/bin/bash

docker build -f image-jekyll.dockerfile -t jekyll .
docker tag jekyll cristiansulea/jekyll:4.3.3-r0
#docker rmi jekyll
#docker build --platform linux/amd64 -f docker/create-image-jekyll.dockerfile -t jekyll .
#docker tag jekyll cristiansulea/jekyll:jekyll:4.3.3-r0-amd64
#read -p "Press ENTER to continue..."