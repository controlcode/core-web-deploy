# core-web-deploy
Ansible automation for provisioning core django site

## Setup virtual environment

```pipenv install```

```pipenv shell```

## List connections

```ansible -i hosts all --list-hosts```

## Test connection with Digital Ocean Droplet

```ansible all -u root -m ping -i hosts```

## Run the Ansible script

```ansible-playbook playbook.yml --ask-become-pass```
