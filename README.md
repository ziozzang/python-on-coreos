# python-on-coreos
Python on CoreOS.

this script installs Active Python x86_64 binary to CoreOS.
this works well with ansible and any 3rd party software because it also has pip. :)

INSTALL
=======
just run the contents of shell-script.

```
wget -qO- https://raw.githubusercontent.com/ziozzang/python-on-coreos/master/install-python-on-coreos.sh | bash
```

RUNNING
=======

/opt/bin/python works well. :)

recent CoreOS already puts /opt/bin in $PATH.


WITH ANSIBLE
============
check sample-ansible-hosts file. there would be all you need to.

```
ansible -m setup -i hosts core-01
```

this command works like charm.
