#!/bin/bash

docker build -f image-jekyll-build.dockerfile -t jekyll-build .
docker tag jekyll-build cristiansulea/jekyll-build:4.3.3-r0

#docker build --platform linux/amd64 -f docker/create-image-jekyll-build.dockerfile -t jekyll-build .
#docker tag jekyll-build cristiansulea/jekyll-build:1.1-amd64

docker rmi jekyll-build

#read -p "Press ENTER to continue..."