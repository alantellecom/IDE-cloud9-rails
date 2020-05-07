FROM linuxserver/cloud9

#install rvm
RUN apt update
RUN apt-get install -y curl gnupg build-essential -y
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
RUN curl -sSL https://get.rvm.io | bash -s stable

# Install important dependencies for rails
RUN apt-get install nodejs yarn tzdata libsqlite3-dev postgresql-client libpq-dev python imagemagick vim -y

#install ruby on rails by rvm
SHELL ["/bin/bash", "-c"]
RUN source /etc/profile.d/rvm.sh && rvm install ruby-2.6.5 && rvm --default use ruby-2.6.5 && gem install bundler -v 1.16.1 && gem install rails -v '5.2.3' 
RUN echo 'source "/etc/profile.d/rvm.sh"' >> ~/.bashrc





