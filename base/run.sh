#!/bin/sh

# Start the base container to confirm you can SSH to it since that's the only service it starts
latestcontainer=`sudo docker run -d -t -P alecl/base`
latestcontainerssh=`sudo docker port $latestcontainer 22`
echo SSH -p for port to $latestcontainerssh for $latestcontainer
