Ansible Role Terraform
=========

[![Build Status](https://travis-ci.org/darkraiden/ansible-role-packer.svg?branch=master)](https://travis-ci.org/darkraiden/ansible-role-packer)

An Ansible Role that installs Packer on Debian and RedHat systems

Requirements
------------

* unzip

Dependencies
--------------

None

Role Variables
--------------

Available variables are listed below, along with default values (see `defaults/main.yml`):

```
packer_version: 0.10.1
packer_os: linux
packer_arch: amd64
packer_ext: zip
packer_url: "https://releases.hashicorp.com/packer/{{ packer_version }}/packer_{{ packer_version }}_{{ packer_os }}_{{ packer_arch }}.{{ packer_ext }}"
packer_package: "packer_{{ packer_version }}_{{ packer_os }}_{{ packer_arch }}.{{ packer_ext }}"
packer_filename: packer
```

Packer download information (version, os and platform architecture), compressed and uncompressed filenames.

Test Kitchen
--------------

### Install Deps

```
$ bundle
```

### VMs

This kitchen configuration comes with different VMs:

* centos7
* centos6
* xenial
* trusty

If you want to test the role using all of those machines, just run the commands below as they are. If you want to test the role on one system only, append to the commands below the VM name.

e.g.

```
$ bundle exec kitchen converge centos7
```

To converge the `centos7` VM only.

### Create the VM

```
$ bundle exec kitchen create
```

### Converge your role

```
$ bundle exec kitchen converge
```

### Run serverspec tests

```
$ bundle exec kitchen verify
```

**NB**: To run `verify` the VM must be converged first.

### Destroy the VM

```
$ bundle exec kitchen destroy
```

### Run Create/Converge/Verify/Destroy in one command

```
$ bundle exec kitchen test
```

### Write your tests

You can write your own test by adding a new file or editing the existing one living in the `test/integration/packer/serverspec/localhost` directory. More info about how to write serverspec test can be found [here](http://serverspec.org/).

Example Playbook
----------------

```
    - hosts: all
      roles:
         - darkraiden.ansible-packer
```

License
-------

BSD

Author Information
------------------

An optional sectiThis role was created in 2017 by [Davide Di Mauro](https://github.com/darkraiden).
