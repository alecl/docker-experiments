#!/bin/bash

docker images | grep "<none>" | awk '{print $3}'
echo
read -p "This will delete all untagged images above. Are you sure? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
  docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi
fi