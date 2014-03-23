docker-experiments
============

Some quick investigations on learning docker

### Environment Setup and Prerequisites

On a Windows machine this was a bit of fun.  Final install list:

1. [vagrant](http://www.vagrantup.com/)
2. [VirtualBox](https://www.virtualbox.org/)
3. [PuTTY](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)

Aborted attempts:

* [Console2](http://sourceforge.net/projects/console/) and [ConEmu](http://sourceforge.net/projects/conemu/) - Both had issues with terminal emulation with PuTTY/plink
* plink in standard Cmd terminal without Console2 or ConEmu was less full featured than PuTTY so back to PuTTY

### Learning

1. Watched [this](https://www.youtube.com/watch?v=VeiUjkiqo9E&list=WLzotobpjJdnbp-67c6o-rcjEHt6w2MgFm) and [this](https://www.youtube.com/watch?v=Q5POuMHxW-0&list=WLzotobpjJdnbp-67c6o-rcjEHt6w2MgFm) at 2x speed.  It was a decent intro.
2. Started with [Vagrant Cloud image with docker pre-installed](https://vagrantcloud.com/stamm/precise64-docker)
3. Got familiar with the docker commands
4. Tried out some adhoc experiments working through a bash shell "-t -i" and the using commit.
5. Created an image that ran Apache2 

### Repo Contents

#### Apache
1. First attempt at a Dockerfile and it went surprisingly well
2. The hardest part was remembering how to make Apache run in the foreground (apachectl -X).  In the future I will switch this to [Supervisord](http://docs.docker.io/en/latest/examples/using_supervisord/ ) instead anyway.
3. Refactored to keep it generic and pretty standalone
4. Added a sample index.html so it's ready to test out of the box
5. Added some sample scripts that show running multiple instances with linked document roots to vagrant host machine and Apache logs to VM itself for easy viewing
6. Future - Use Supervi

#### Windows Tips/Utils (in progress - not added yet)
1. TODO