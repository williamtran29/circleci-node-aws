FROM circleci/node:8.4.0
RUN sudo apt-get install -y rsync awscli
RUN sudo npm install -g yarn@1.0.0