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

## Running dbt

* `dbt run` will run the dbt models
* `dbt test` will run the dbt tests
* `dbt build` will do both

## Using Metricflow

* `mf --help` will show you the available commands
* `mf validate-configs` will, unsurprisingly, validate the configs
* `mf query` can be used to query metrics, grouping by etc
  * e.g. `mf query --metrics deal_count,deal_median_amount --group-by deal__country` will return the deal count and
    median deal amount grouped by country
* `mf list metrics` will list the available metrics (also can list dimensions, dimension values and entities)


## Help, I've mucked something up

Execute `just clean` to nuke things then restart setup steps from 2
