# core-web-deploy
Ansible automation for provisioning corporate site

## Setup virtual environment

```pipenv install```

```pipenv shell```

## Test connection with Digital Ocean Droplet

```ansible all -u root -m ping -I hosts```
