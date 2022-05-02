FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

# Install supporting packages
RUN apt-get update
RUN apt-get install -yq git make cmake
RUN apt-get install -yq libblas-dev liblapack-dev
RUN apt-get install -yq gcc g++ gfortran 
RUN apt-get install -yq openmpi-bin libopenmpi-dev

# Add non-root user and set up home directory
# RUN useradd -ms /bin/bash test
# RUN adduser test sudo
# USER test

WORKDIR /home/test

RUN git clone https://github.com/SimVascular/svFSI

# Compile svFSI source code
RUN mkdir Build && \
    cd Build && \
    cmake ../svFSI && \
    make

ENV PATH=$PATH:/home/test/Build/svFSI-build/bin