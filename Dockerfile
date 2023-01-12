FROM ubuntu:22.04

RUN DEBIAN_FRONTEND=noninteractive && apt-get update && \
  apt-get install -y git gnupg flex bison build-essential zip curl zlib1g-dev gcc-multilib g++-multilib \
  libc6-dev-i386 lib32ncurses-dev x11proto-core-dev libx11-dev lib32z1-dev libgl1-mesa-dev libxml2-utils \
  xsltproc unzip fontconfig python3 && \
  update-alternatives --install /usr/bin/python python /usr/bin/python3 1 && update-alternatives --set python /usr/bin/python3 && \
  curl https://storage.googleapis.com/git-repo-downloads/repo > /usr/bin/repo && chmod a+x /usr/bin/repo

WORKDIR /work

CMD /bin/bash
