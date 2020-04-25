FROM nvidia/cuda:10.2-devel
ARG DEBIAN_FRONTEND=noninteractive
ARG FAHC_MAJOR_VER=v7.6

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y --no-install-recommends \
        ocl-icd-libopencl1 clinfo ocl-icd-opencl-dev

RUN mkdir -p /etc/OpenCL/vendors && \
    echo "libnvidia-opencl.so.1" > /etc/OpenCL/vendors/nvidia.icd

WORKDIR /tmp

ADD https://download.foldingathome.org/releases/public/release/fahclient/debian-stable-64bit/${FAHC_MAJOR_VER}/latest.deb fahclient.deb
RUN mkdir -p /usr/share/doc/fahclient
RUN touch /usr/share/doc/fahclient/sample-config.xml
RUN apt-get -y install ./fahclient.deb

WORKDIR /FAHClient
ADD config.xml config.xml

ENTRYPOINT ["/usr/bin/FAHClient"]
