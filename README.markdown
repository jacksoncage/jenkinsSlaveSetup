Jenkins Slave Node Setup
====


Overview
--------

Jenkins slave node setup for Debian/Ubuntu


Dependency
-------------------

- [Jenkins Master](http://jenkins-ci.org/ "Jenkins Master") instance
- [Jenkins node configured](https://wiki.jenkins-ci.org/display/JENKINS/Step+by+step+guide+to+set+up+master+and+slave+machines "Slave configuration") on Jenkins master
- [Java](http://wiki.debian.org/Java "Java") installed on node

Usage
------

    git clone git://github.com/jacksoncage/jenkinsSlaveSetup.git
    sudo jenkinsSlaveSetup/setup.sh <node-name> <jenkins-master-fqdn>

The `setup` script has several parameters to assist configuration of the Jenkins slave node.

**Parameters within `setup`**

####`node-name`

Name of Jenkins slave node. Ex. slave01

####`jenkins-master-fqdn` 

Fqdn of Jenkins master. Ex. ci.example.com


Limitations
------------

The module has been tested on:

* Debian 7.0 

Testing on other platforms has been light and cannot be guaranteed. 