FROM    ubuntu:14.04
MAINTAINER Thoughtworks <bstrydo@thoughtworks.com>

RUN apt-get update
RUN apt-get -qqy install curl
RUN apt-get -qqy install git
RUN apt-get -qqy install sudo
RUN git clone https://github.com/bstrydo/codedInBraam.git
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
run curl -L https://get.rvm.io | bash -s stable --ruby
RUN /usr/local/rvm/bin/rvm get stable --autolibs=enable
RUN /usr/local/rvm/bin/rvm install ruby 2.2.3
RUN /usr/local/rvm/bin/rvm --default use ruby-2.2.3
#COPY entryPoint.sh /bin/entryPoint.sh
RUN chmod 755 /bin/entryPoint.sh
