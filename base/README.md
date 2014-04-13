base
============

Created a base image with core needs for all inheriting modules.

1. supervisord
2. SSH
3. python
4. vagrant user with sudo privileges added
5. curl, lynx, unzip, git, jq, nano, sshpass

One day could be changed to be based off of [phusion/baseimage](https://index.docker.io/u/phusion/baseimage/ "phusion/baseimage").  I'm currently a bit mixed on it as I do think having cron, logrotate, syslog and other niceties would be beneficial but I like having the more standard sudo and supervisord as opposed to [runit](http://smarden.org/runit/) and setuser.