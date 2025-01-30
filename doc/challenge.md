# Further details on the challenge/data

Refer to the Notion doc for the specifics of the challenge.

You're provided some sample/dummy data for this challenge in the `seeds` directory:

* Hubspot is a sales & marketing CRM we use at ProcurePro, data provided:
  * deals
* Intercom is customer support software we use at ProcurePro, data provided:
  * companies
  * contacts
  * conversations
* Planhat is customer success software we use at ProcurePro, data provided:
  * companies
* ProcurePro product data is provided from both a AU and UK region:
  * projects
  * trades
  * users
  * organisations

The data is all provided in CSV format - it's pretty primitive random data, so don't expect to uncover any deep insights
from it.

For the purpose of this challenge, we propose using dbt seeds to load the data into Postgres. In practice, this is the
wrong tool for the job - usually seeds are used for largely static data, such as a list of countries or currencies.
However, for the purpose of this challenge, it's sufficient - reducing the need for some other ETL tool.

We've set up a dbt project for you to use - refer to [doc/setup.md](./setup.md) for instructions on how to set it up and
generally use the project.

This has been setup to show you how to use dbt seeds to load the Hubspot deal data into Postgres & build some Metricflow
metrics ontop of it. You'll need to repeat similar for your own data models as you see fit.

We've generally tried to follow
the [dbt best practices](https://docs.getdbt.com/best-practices/how-we-structure/1-guide-overview) for how to structure
dbt projects with a "staging", "intermediate" and "marts" layers - but even they admit that if you're using Metricflow
(aka Semantic
Layer), [then you can build semantic models (aka metrics) directly ontop of staging models](https://docs.getdbt.com/best-practices/how-we-build-our-metrics/semantic-layer-9-conclusion#best-practices).
So realistically, we're not pedantic about the structure of your dbt models in layers etc (if necessary?) but expect
that you have some rhyme and reason to it.