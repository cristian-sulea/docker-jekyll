#!/bin/bash

docker build -f image-jekyll-serve.dockerfile -t jekyll-serve .
docker tag jekyll-serve cristiansulea/jekyll-serve:4.3.3-r0

#docker build --platform linux/amd64 -f docker/create-image-jekyll-serve.dockerfile -t jekyll-serve .
#docker tag jekyll-serve cristiansulea/jekyll-serve:1.0

docker rmi jekyll-serve

#read -p "Press ENTER to continue..."