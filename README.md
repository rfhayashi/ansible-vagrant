Role Name
=========

Ansible Role that installs Vagrant

Requirements
------------

None.

Role Variables
--------------

vagrant version:

    vagrant_version: 1.9.1

vagrant plugins - a list of vagrant plugins to be installed, the default
is not to install any plugins, below an example of how to install the
vagrant-cachier plugin with version 1.2.1 and the latest version
of nugrant:

    vagrant_plugins:
      - name: vagrant-cachier
        version: 1.2.1
      - name: nugrant

Dependencies
------------

None.

Example Playbook
----------------

    - hosts: servers
      roles:
         - { role: rfhayashi.vagrant }

License
-------

MIT