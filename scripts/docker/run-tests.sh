#!/usr/bin/env bash

docker-compose -f ../../docker-compose.test.yml up
docker-compose -f ../../docker-compose.test.yml stop
docker-compose -f ../../docker-compose.test.yml rm -f

exit 0