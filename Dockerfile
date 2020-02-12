FROM markpepapa/kali-docker:latest

MAINTAINER markpepapa

# updates, install metasploit, run postgresql services and create initial db
RUN apt-get -y update && apt-get -y dist-upgrade
# RUN apt-get -y install kali-linux-full
RUN apt-get -y install sqlmap
RUN apt-get -y install crackmapexec
RUN apt-get -y install python
RUN apt-get -y install empire
RUN apt-get -y install metasploit-framework
RUN apt-get -y install bettercap
RUN apt-get -y install nikto
RUN apt-get -y install dirb
RUN apt-get -y install hydra
RUN apt-get clean
RUN curl https://bootstrap.pypa.io/get-pip.py | python
RUN pip install impacket
RUN pip install drozer
