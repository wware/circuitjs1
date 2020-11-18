FROM centos:7.5.1804

RUN yum update -y
RUN yum install -y \
    sudo epel-release byacc diffstat strace gettext indent gcc gcc-c++ htop \
    wget curl patch patchutils rcs net-tools mlocate python-devel vim telnet \
    git java-1.8.0-openjdk java-1.8.0-openjdk-devel ant unzip
RUN yum install -y python2-pip
RUN pip install --upgrade pip
RUN pip install setuptools

RUN wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/google-web-toolkit/gwt-2.2.0.zip
RUN unzip gwt-2.2.0.zip
RUN (cd gwt-2.2.0; wget https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/gwt-client-storage/gwt-client-store.jar)

RUN git clone https://github.com/wware/circuitjs1.git
WORKDIR /circuitjs1
RUN git checkout docker
