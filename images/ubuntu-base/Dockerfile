 # Ubuntu 20.04 
ARG UBUNTU_TAG=focal 
FROM ubuntu:${UBUNTU_TAG}

LABEL MAINTAINER jakub.grzegorczyk1@gmail.com

# Specify user name
ENV USER_NAME=jvkubjg
# Specify lang stuff 
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LANGUAGE=en_US.UTF-8
# Required for clear command to work 
ENV TERM screen-256color

ENV DOCKER_CLI_SHA256 "0a52d21eace395e6077b4c99b8ff96ffb9203ba6be1bdffcfb716bea645f5745"
ENV DOCKER_CLI_VERSION "19.03.5"

RUN apt-get update && \
	apt-get install sudo -y && \
	adduser --disabled-password --gecos '' ${USER_NAME} && \
	adduser ${USER_NAME} sudo && \
    # only on private enviroments
	echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && \ 
	apt-get autoremove -y && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/*


RUN apt-get update && \
	apt-get install -y language-pack-en-base && \
	rm -rf /var/lib/apt/lists/*

# File contains installation for a lot of dependencies and pacakges 
COPY build.sh /tmp/build.sh
RUN bash /tmp/build.sh \
         rm /tmp/build.sh 
    


USER ${USER_NAME}
WORKDIR /home/${USER_NAME}

COPY inputrc /home/${USER_NAME}/.inputrc

RUN sudo chown "${USER_NAME}:${USER_NAME}" "/home/${USER_NAME}/.inputrc"
CMD ["/bin/bash"]



