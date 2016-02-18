# ansible-sandbox

tested with vagrant 1.8.1

Instructions:

* install vagrant
* create inventory/sandbox file in /opt/ansible-master
* run role-it-up.sh
* ansible-playbook -i inventory/sandbox playbook.yml -u vagrant

To Do:

* use ansible_local provisioner instead of shell
