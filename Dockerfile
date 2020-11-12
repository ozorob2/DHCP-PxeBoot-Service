FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y \
    kpartx \
    wget \
    zip

RUN wget -O raspbian_lite.zip https://downloads.raspberrypi.org/raspbian_lite/images/raspbian_lite-2020-02-14/2020-02-13-raspbian-buster-lite.zip
RUN unzip raspbian_lite.zip

RUN mkdir -p /deb/ /ROOTFS/
ADD deb /deb/
ADD ROOTFS /ROOTFS/

COPY release.sh .
