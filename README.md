# dev-host
Vagrantfile for my development environment

Vagrant's Ansible and shellscript provisioners are used to set up some goodies:
- golang environment
- gcc-toolbox
- git
- c++ debugging tools (gdb and valgrind)
- Catch2 C++ test framework

Bring up the environment with a standard:
```
vagrant up
```
... but the provisioning will take a while to complete, first time around.

# TODO
Add googletest in here as well?
