FROM kalilinux/kali-rolling:latest

MAINTAINER markpepapa

RUN apt-get -y update && apt-get -y dist-upgrade
RUN apt-get -y install bash-completion
RUN apt-get -y install offsec-awae
RUN apt-get -y install offsec-pwk
RUN apt-get -y install crackmapexec
RUN apt-get -y install empire
RUN apt-get autoremove -y
RUN apt-get clean
RUN mkdir /data

RUN printf "alias ll='ls $LS_OPTIONS -l'\nalias l='ls $LS_OPTIONS -lA'\n\n# enable bash completion in interactive shells\nif [ -f /etc/bash_completion ] && ! shopt -oq posix; then\n    . /etc/bash_completion\nfi\n" > /root/.bashrc
CMD "/bin/bash"
