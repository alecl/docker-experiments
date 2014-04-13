# Base image with supervisord, SSH, and useful test utilities
FROM alecl/base

MAINTAINER Alec Lazarescu version: 1.0

# Add an additional user without sudo or other special permissions/group
# Force a password of docker for the vagrant user for experiment/demo purposes.  Obviously DO NOT DO this for shared environments/production.
RUN useradd -m -d /home/lowuser -s /bin/bash -p $(perl -e'print crypt("lowuser", "aaa")') lowuser
