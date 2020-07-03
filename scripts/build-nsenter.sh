
#!/bin/bash

# 此项目不通过科学上网下载较慢
git clone git://git.kernel.org/pub/scm/utils/util-linux/util-linux.git util-linux

BASEDIR="$(PWD)"

docker run -v $BASEDIR/util-linux:/util-linux  --rm ubuntu:16.04 \
    bash -c "apt-get update \\
    && apt-get install -y git build-essential libncurses5-dev libslang2-dev gettext zlib1g-dev libselinux1-dev debhelper lsb-release pkg-config po-debconf autoconf automake autopoint libtool bison \\
    && cd /util-linux \\
    && ./autogen.sh \\
    && ./configure --without-python --disable-all-programs --enable-nsenter \\
    && make"

cp ./util-linux/nsenter ./
