FROM ubuntu:16.04
MAINTAINER pUck
RUN apt-get -qq  update
RUN apt-get install xinetd -qqy
RUN apt-get install gcc-multilib -qqy
RUN useradd -m ctf_puck
RUN chmod 774 /tmp
RUN chmod -R 774 /var/tmp
RUN chmod -R 774 /dev
RUN chmod -R 774 /run
RUN chmod 1733 /tmp /var/tmp /dev/shm
CMD ["/usr/sbin/xinetd","-dontfork"]
