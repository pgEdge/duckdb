# syntax=docker/dockerfile:1.7
FROM ubuntu:24.04

RUN apt-get update -y -qq \
  && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 \
  && apt-get install -y build-essential libreadline-dev zlib1g-dev flex bison libxml2-dev libxslt-dev \
                             libssl-dev libxml2-utils xsltproc pkg-config libc++-dev libc++abi-dev libglib2.0-dev libtinfo5 cmake \
                             libstdc++-12-dev
