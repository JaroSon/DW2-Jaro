#!/bin/bash

./stop-en-remove-container.sh

docker build --no-cache -t website-image .

docker run -dt --name website-container -p 81:80 website-image
