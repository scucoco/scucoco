RUN apt-get update && apt-get install -y wget
#install docker
RUN wget -qO- https://get.docker.com/ | sed 's/lxc-docker/lxc-docker-1.8.1/' | sh

#install python, pip, setuptools
RUN apt-get install -y python-pip && wget https://bootstrap.pypa.io/ez_setup.py -O -| python

#install ice
RUN wget https://static-ice.ng.bluemix.net/icecli-3.0.zip && pip install icecli-3.0.zip

#install cf
RUN wget "https://cli.run.pivotal.io/stable?release=linux64-binary&version=6.12.0&source=github-rel" --output-document=cf.tgz && tar -xvf cf.tgz  && mv cf /usr/bin/cf 
