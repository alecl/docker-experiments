#!/bin/bash

imagetag="alecl/perm-limited"

read -p "This will stop & remove all containers based on $imagetag and the image itself. Are you sure? (y/n) " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
      imageid=`docker images | grep $imagetag | awk {'print $3'}`
	  stoplist=`docker ps -a | grep $imagetag | awk {'print $1'}`
	  echo Stopping $stoplist...
	  docker stop $stoplist
	  echo Removing
	  docker rm $stoplist
	  echo Deleting $imagetag
	  docker rmi $imageid
fi