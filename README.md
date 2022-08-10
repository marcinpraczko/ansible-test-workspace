# Ansible Test Workspace

Simple project for testing ansible playbooks / collections / roles.

## Goal of this project

I tried many times to setup proper CI/CD with different tools (Azure Devops / GitLab / GitHub Actions) and so far all of this configuration is
not allowing me testing ansible playbook / configuration as I am expecting to.

This project aims to have simple 'local' testing solution based on VM and docker which allows use simple scripts for testing.

Reason of this is that in many cases learning how to achieve valid result in Azure DevOps / GitLab / GitHub Actions is taking really too much time.
For example - searching for action / task, format in YAML file, not having proper result, failed jobs, triggers when job should run, etc.

Finally I decided to write something which I am really familar with which will allow me test locally things as I want to.

Lets see if this will help me be more productive.


## Quick initial start

### Add SSH Key for accessing GitHub Priv repos

It is strongly recommended to add SSH Keys to SSH Ageant on host before starting Vagrant.
Vagrant is configured to forward SSH keys - so please add this SSH Key which allow pull and push to github repos.


### Start Vagrant

```bash
source workspace-localhost.sh   ## This setup helpers Makefile for wokring on Host (local machine)
make vagrant-up
```

### Create initial snapshot from VM

```bash
make vagrant-snapshot-create-init   ## Create initial snapshot - after all installation
```

### Install required packages on VM

Follow those steps to install required packges on Vagrant VM.

```bash
vagrant ssh
```

- In vagrant

```bash
sudo -i -u root
cd /vagrant
source workspace-vagrant-vm.sh

make init  ## This can take long time as well
```

## Running tests

### Create snapshot before tests

```bash
make vagrant-snapshot-create-before-tests
```

### Test ansible-install-goss

```bash
vagrant ssh
cd /vagrant/tests/ansible-goss-install/test01/
./test.sh
```

### Restore snapshot

If one need to restore snapshot for re-testing - one can do that with following commands:

```bash
make vagrant-snapshot-resotre-before-tests
```
