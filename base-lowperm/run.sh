#!/bin/sh

# Start the base container to confirm you can SSH to it since that's the only service it starts
latestcontainer=`sudo docker run -d -t -P alecl/base-lowperm`
latestcontainerssh=`sudo docker port $latestcontainer 22`
latestcontainerportonly=`echo $latestcontainerssh | awk -F: '{ print $2 }'`

echo For vagrant user with full root sudo access
echo sshpass -p 'docker' ssh localhost -p $latestcontainerportonly -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no
echo For limited permissions lower account
echo sshpass -p 'lowuser' ssh lowuser@localhost -p $latestcontainerportonly -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no