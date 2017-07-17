andrewrothstein.cassandra
=========================
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-cassandra.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-cassandra)

Installs [Apache Cassandra](http://cassandra.apache.org/)

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: cassandra
  roles:
    - andrewrothstein.cassandra
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
