FROM markpepapa/kali-docker:latest

MAINTAINER markpepapa

# updates, install metasploit, run postgresql services and create initial db
RUN apt-get -y update && apt-get -y dist-upgrade
RUN apt-get -y install kali-linux-full
