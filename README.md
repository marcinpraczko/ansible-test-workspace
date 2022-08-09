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


## TODO Today

- [X] Setup Vagrant with sync to /vagrant
- [X] Run simple commands - in vagrant
- [ ] Run goss verification that is working


## Quick initial start

```bash
vagrant up  ## Is taking very long time - first time (Upgdate / Install VirtualBox Guest / etc)
```

## Create initial snapshot from VM

```bash
vagrant snapshot save init-after-star   ## Create initial snapshot - after all installation
```

## Install required packages on VM

Follow those steps to install required packges on Vagrant VM.

```bash
vagrant ssh  ## Login to Vagrant as vagrant user

# In vagrant
sudo -i -u root

# in Vagrant as root user
cd /vagrant/provisioning/shell

./01-init-apt-install-required-tools.sh  ## This can take long time as well
```

## Create snapshot before tests

```bash
vagrant snapshot save before-tests
```

## Run tests

### Test ansible-install-goss

```bash
vagrant ssh
cd /vagrant/tests/ansible-goss-install/test01/
./test.sh
```

### Restore snapshot

If one need to restore snapshot for re-testing - one can do that with following commands:

```bash
vagrant snapshot restore before-tests
```
