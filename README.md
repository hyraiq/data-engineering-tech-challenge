# ProcurePro Data Engineering Tech Challenge

## Requirements

* Docker
* [pyenv](https://github.com/pyenv/pyenv#installation)
* [just](https://github.com/casey/just) - optional, but makes life easier!

## Setup

1. Clone the repository
2. Run `docker-compose up -d` to start the services (Postgres)
3. Run `just virtualenv` to create a Python virtual environment
4. Run `source .venv/bin/activate` to activate the virtual environment
5. Run `just install` to install the Python dependencies
6. Check you can run dbt locally with `dbt --version`

## Seeding the database with data

1. Run `just seed` to seed the database with data

## Help, I've mucked something up

Execute `just clean` to nuke things then restart setup steps from 2
