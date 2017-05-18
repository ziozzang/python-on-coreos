#!/bin/bash
VERSION=${VERSION:-"2.7.13.2715-linux-x86_64-glibc-2.12-402695"}

# make directory
mkdir -p /opt/bin
cd /opt

wget -qO - http://downloads.activestate.com/ActivePython/releases/${VERSION%%-*}/ActivePython-${VERSION}.tar.gz | tar -xzvf -

(cd ActivePython-${VERSION} && ./install.sh -I /opt/python/)
rm -rf ActivePython-${VERSION}

ln -sf /opt/python/bin/easy_install /opt/bin/easy_install
ln -sf /opt/python/bin/pip /opt/bin/pip
ln -sf /opt/python/bin/python /opt/bin/python
ln -sf /opt/python/bin/virtualenv /opt/bin/virtualenv
