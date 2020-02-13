FROM markpepapa/kali-docker:latest

MAINTAINER markpepapa

RUN apt-get -y update && apt-get -y dist-upgrade
RUN apt-get -y install kali-linux-full bash-completion
RUN apt-get -y install python
RUN apt-get -y install sqlmap
RUN apt-get -y install crackmapexec
RUN apt-get -y install empire
RUN apt-get -y install metasploit-framework
RUN apt-get -y install bettercap
RUN apt-get -y install nikto
RUN apt-get -y install dirb
RUN apt-get -y install hydra
RUN apt-get -y install gobuster
RUN apt-get install amass
RUN apt-get autoremove -y
RUN apt-get clean
RUN curl https://bootstrap.pypa.io/get-pip.py | python
RUN pip install impacket
RUN pip install drozer
RUN mkdir /data

RUN printf "alias ll='ls $LS_OPTIONS -l'\nalias l='ls $LS_OPTIONS -lA'\n\n# enable bash completion in interactive shells\nif [ -f /etc/bash_completion ] && ! shopt -oq posix; then\n    . /etc/bash_completion\nfi\n" > /root/.bashrc
CMD "/bin/bash"
