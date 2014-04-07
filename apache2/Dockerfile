# A basic apache server building on the alecl/base image.  Make sure that's run first.

# Simplest usage map port 80 from container to host and start server.  Hit http://localhost to see "Apache Dock in Docker Container"
# sudo docker run -d -p 80:80 alecl/apache2

# Usage example for mapping port 80 in container to port 40001 in host, mapping an htdocs outside of vagrant, mapping logs to home directory folder
# sudo docker run -d -p 40001:80 -name apache-a -v /vagrant/htdocs/apache-a:/var/www -v ~/containerlogs/apache-a:/var/log/apache2 alecl/apache2

# To add a second server is just as easy
# sudo docker run -d -p 40002:80 -name apache-b -v /vagrant/htdocs/apache-b:/var/www -v ~/containerlogs/apache-b:/var/log/apache2 alecl/apache2
FROM alecl/base

MAINTAINER Alec Lazarescu version: 1.0

RUN apt-get update
RUN apt-get install -y apache2 
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

#Add a sample file for easier verification that you're looking at the right web server
ADD index.html /var/www/

EXPOSE 80

# our base image uses supervisord to run sshd for general debugging plus whatever else we throw in this directory
ADD apache-supervisor.conf /etc/supervisor/conf.d/