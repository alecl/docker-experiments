# Base image with supervisord, SSH, and useful test utilities
FROM alecl/base-lowperm

MAINTAINER Alec Lazarescu version: 1.0

# Give the lowuser a bit more permissions so they can get some stuff done but not have full access nonetheless
RUN echo lowuser	ALL=\(root\)NOPASSWD:/usr/bin/apt-get,/usr/bin/apt-cache,/usr/bin/apt-key >> /etc/sudoers
RUN echo lowuser	ALL=\(root\)NOPASSWD:/usr/bin/nano /etc/apt/sources.list >> /etc/sudoers
RUN echo lowuser	ALL=\(root\)NOPASSWD:/usr/bin/nano /etc/apt/sources.list.d/* >> /etc/sudoers
RUN echo lowuser	ALL=\(root\)NOPASSWD:/usr/bin/nano /etc/cassandra/* >> /etc/sudoers
RUN echo lowuser	ALL=\(root\)NOPASSWD:/usr/bin/nano /usr/sbin/update-alternatives >> /etc/sudoers
