#!/bin/bash

apt-get update

apt-get install git -y

wget -q0- https://get.docker.com/ | sudo sh

apt-get install python-pip -y

pip install docker-compose
