#!/bin/bash

# Get Version
VERSION_STR=`wget http://downloads.activestate.com/ActivePython/releases/ -q -O - | grep "folder.gif" | head -n 1  | sed -n 's/.*href="\([^"]*\).*$/\1/p'`

VERSIONS=${VERSIONS:-"${VERSION_STR}"}

# make directory
mkdir -p /opt/bin
cd /opt

# Get File Name from sites
FNAME=`wget http://downloads.activestate.com/ActivePython/releases/${VERSIONS}/ -q -O - | grep "linux" | grep "tar.gz"  | head -n 1  | sed -n 's/.*href="\([^"]*\).*$/\1/p'`

# Get Download.
wget http://downloads.activestate.com/ActivePython/releases/${VERSIONS}/${FNAME}
tar -xzvf ${FNAME}

# Rename
mv `find ./ActivePython-* -type d | head -n 1` apy && cd apy && ./install.sh -I /opt/python/

ln -s /opt/python/bin/easy_install /opt/bin/easy_install
ln -s /opt/python/bin/pip /opt/bin/pip
ln -s /opt/python/bin/python /opt/bin/python
ln -s /opt/python/bin/virtualenv /opt/bin/virtualenv
