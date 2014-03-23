#!/bin/sh

# Simplest usage map port 80 from container to host and start server.  Hit http://localhost to see "Apache Dock in Docker Container"
sudo docker run -d -p 80:80 alecl/apache2