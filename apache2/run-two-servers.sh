#!/bin/sh

# Usage example for mapping port 80 in container to port 40001 in host, mapping an htdocs outside of vagrant, mapping logs to home directory folder
sudo docker run -d -p 40001:80 -name apache-a -v /vagrant/htdocs/apache-a:/var/www -v ~/containerlogs/apache-a:/var/log/apache2 alecl/apache2
# To add a second server is just as easy
sudo docker run -d -p 40002:80 -name apache-b -v /vagrant/htdocs/apache-b:/var/www -v ~/containerlogs/apache-b:/var/log/apache2 alecl/apache2