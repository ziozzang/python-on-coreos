# python-on-coreos
Python on CoreOS. works well with ansible.

this script install Active Python x86_64 binary to CoreOS.
this will works well with ansible, also any 3rd party software. because it hsa pip also. :)

INSTALL
=======
just run the contents of shell-script.

```
wget -qO- https://raw.githubusercontent.com/ziozzang/python-on-coreos/master/install-python-on-coreos.sh | bash
```

RUNNING
=======

/opt/bin/python will works well. :)

if you want to run python in anywhere, just make ~/.bashrc file which contains this.
```
export PATH=$PATH:/opt/bin:/opt/python/bin
```

or just run this command
```
cat > ~/.bashrc << EOF
export PATH=\$PATH:/opt/bin:/opt/python/bin
EOF
```


WITH ANSIBLE
============
check sample-ansible-hosts file. there would be all you need to.

```
ansible -m setup -i hosts core-01
```

this command works like charm.
