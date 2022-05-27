FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update
RUN apt-get install -y fuse awscli wget curl make

# Goofys
RUN curl -O https://storage.googleapis.com/golang/go1.18.2.linux-amd64.tar.gz && \
	tar -xvf go1.18.2.linux-amd64.tar.gz && \
	mv go /usr/local && \
	ln -s /usr/local/go/bin/go /usr/bin/go && \
	wget http://bit.ly/goofys-latest -O /usr/local/bin/goofys && \
	chmod 755 /usr/local/bin/goofys

# sudo docker run -it --privileged -p 8888:8888 --name nlp --gpus all -v /home/halo/NLP:/root/.jupyter/NLP IMAGE_NAME
# aws configure
# goofys -f S3_BUCKET YOURDIR
