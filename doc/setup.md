# Setup documentation

[Back to main README](../README.md)

## Requirements

>⚠️ Big caveat, these commands have been tested using Mac OS primarily, so might not work perfectly on Windows, ymmv.

* Docker
* [pyenv](https://github.com/pyenv/pyenv#installation)
* [just](https://github.com/casey/just)
  * This is optional, it's a handy tool for running commands defined in the `justfile`
  * If you don't want to install this, you can just look at the `justfile` and run the commands manually

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

More docs on the Metricflow
commands [can be found here](https://docs.getdbt.com/docs/build/metricflow-commands#metricflow-commands), noting you
should be looking at the setup for `dbt Core` (not dbt Cloud).

## Help, I've mucked something up!

Execute `just clean` to nuke things, then restart setup steps from 2