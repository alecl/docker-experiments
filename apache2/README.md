apache2
============

> Note: All images in this repo have time saving but NOT production (or any place other than a local VM) environment safe security practices. Use them on your local machine for learning and experiments but know what you're doing and adjust them before taking them outside of there!

First Dockerfile I've made and now updated to be run off a base image and run via [supervisord](http://supervisord.org/ "supervisord").

### build.sh
Easy script to build the image from the Dockerfile

### htdocs/

Copy this folder to be alongside your Vagrantfile for the run-two-servers.sh script

### run-simple.sh

Runs the docker container and redirects port 80 to your container host.  Use your favorite text mode browser or download tool (lynx/curl/wget) to see the test page on http://localhost

### run-two-servers.sh

Starts two docker containers from the image.  This is an actual useful scenario allowing for easier inspection and showcasing how easy it is to start multiple containers.

1. mapping port 80 in container to port 40001 for the first and 40002 for the second
2. mapping an htdocs outside of vagrant (copy htdocs folder to sit in the same folder as your Vagrantfile for this example to work)
3. mapping logs to home directory folder