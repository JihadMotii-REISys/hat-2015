#!/usr/bin/env bash

#Build NPM and BOWER dependencies
cd ./src/frontend/
npm install
bower install

docker-compose -f docker-compose.test.yml up
docker-compose -f docker-compose.test.yml stop
docker-compose -f docker-compose.test.yml rm -f

#exit 0