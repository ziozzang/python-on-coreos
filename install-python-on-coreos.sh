#!/bin/bash
VERSIONS=${VERSIONS:-"2.7.8.10"}

# make directory
mkdir -p /opt/bin
cd /opt

wget http://downloads.activestate.com/ActivePython/releases/${VERSIONS}/ActivePython-${VERSIONS}-linux-x86_64.tar.gz
tar -xzvf ActivePython-${VERSIONS}-linux-x86_64.tar.gz

mv ActivePython-${VERSIONS}-linux-x86_64 apy && cd apy && ./install.sh -I /opt/python/

ln -s /opt/python/bin/easy_install /opt/bin/easy_install
ln -s /opt/python/bin/pip /opt/bin/pip
ln -s /opt/python/bin/python /opt/bin/python
ln -s /opt/python/bin/virtualenv /opt/bin/virtualenv
