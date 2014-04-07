usermod -a -G docker vagrant
docker version
su - vagrant -c "echo alias dl='docker ps -l -q' >> ~/.bash_aliases"
