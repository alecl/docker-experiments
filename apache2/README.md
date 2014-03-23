apache2
============

First Dockerfile

### build.sh
Easy script to build the image from the Dockerfile

### htdocs/

Copy this folder to be alongside you Vagrantfile for the run-two-servers.sh script

### run-simple.sh

Runs the docker container and redirects port 80

### run-two-servers.sh

Starts two docker containers from the image.  This is an actual useful scenario allowing for easier inspection and showcasing how easy it is to start multiple containers.

1. mapping port 80 in container to port 40001 for the first and 40002 for the second
2. mapping an htdocs outside of vagrant (copy htdocs folder to sit in the same folder as your Vagrantfile for this example to work)
3. mapping logs to home directory folder