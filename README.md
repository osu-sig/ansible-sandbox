# ansible-sandbox

Vagrant environment for testing Ansible deployments to Ubuntu 14.04 and Centos 7 hosts. This will inject your private/public key from ~/.ssh/id_rsa and clone the ansible-master role from github.com/osu-sig. Edit bootstrap_ansible.sh to test new branches, and for testing roles git clone roles into roles/.

tested with vagrant 1.8.1, installs Ansible 2.0.0.2

Instructions:

* install vagrant
* edit bootstrap_ansible.sh if necessary
* vagrant up
