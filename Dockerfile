FROM ubuntu:16.04

RUN apt-get update
RUN apt install -y build-essential re2c python2.7 python-pip valgrind lcov ninja-build nodejs wget
RUN pip install mock pytest pytest-benchmark cmake
RUN wget https://s3.amazonaws.com/mozilla-games/emscripten/releases/emsdk-portable.tar.gz && tar -xvzf emsdk-portable.tar.gz && cd emsdk-portable && ./emsdk update && ./emsdk install latest && ./emsdk activate latest && source ./emsdk_env.sh && cd ..
