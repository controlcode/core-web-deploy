# core-web-deploy
Ansible automation for provisioning corporate site

## Setup virtual environment

```pipenv install```

```pipenv shell```

## List connections

```ansible -i hosts all --list-hosts```

## Test connection with Digital Ocean Droplet

```ansible all -u root -m ping -i hosts```
