FROM ubuntu:16.04

RUN apt-get update
RUN apt install -y build-essential re2c python2.7 python-pip valgrind lcov
RUN pip install mock pytest pytest-benchmark cmake
