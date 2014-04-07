#!/bin/sh

# Simplest usage map port 80 from container to host and start server and expose SSH port in case we want to poke around.  Hit http://localhost to see "Apache Dock in Docker Container"
# If you don't have -t you don't get a prompt for the PTTY so your SSH will be funny
sudo docker run -t -d -p 80:80 -p 22 alecl/apache2