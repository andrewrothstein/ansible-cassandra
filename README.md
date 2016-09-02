andrewrothstein.cassandra
=========================

Installs and configures a cassandra cluster across hosts in an Ansible group

Requirements
------------

See [meta/main.yml]

Role Variables
--------------

See [defaults/main.yml]

Dependencies
------------

See [meta/main.yml]

Example Inventory
-----------------
inventory.ini
[cassandra-cluster]
host[1-3].test

group_vars/cassandra-cluster.yml
cassandra_ansible_groupname: cassandra-cluster

Example Playbook
----------------

- hosts: cassandra-cluster
  roles:
    - role: andrewrothstein.cassandra
      cassandra_ansible_groupname: cassandra-cluster

License
-------

MIT

Author Information
------------------

Andrew Rothstein andrew.rothstein@gmail.com
