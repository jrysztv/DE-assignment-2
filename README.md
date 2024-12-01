# Math, Minds, and Meteorology: Analyzing the International Math Olympiad

**Course: Data Engineering 1: SQL and Different Shapes of Data**

**Authors: Aleksandra Krasnokutskaia, Marton Nagy, Istvan Jaray, Giorgi Machavariani**

## Reproduction

The results can be easily reproduced by simply downloading the [knime_workflow](knime_workflow/) folder, loading it in Knime, downloading the necessary extensions and running all nodes, as the IMO database is stored in Azure, while all other data sources are fetched from the web. Note, however, that as we have registered to Azure only with a free one-month trial account, loading the IMO database from there might be impossible after 10 December.

Alternatively, after 10 December, you can reproduce the results in two ways.

First, there is a [workflow](backup_knime_workflows/knime_workflow_backup_fromlocal) uploaded which loads the IMO database from a local MySQL database. To use this workflow, you first have to load the IMO database locally by running the [IMO_database_dump_group4.sql](data/source_data/IMO/IMO_database_dump_group4.sql) SQL dump file. Then, you have to manually configure the indicated nodes in the Knime workflow to reflect your local MySQL server username and password correctly.

Second, there is also a backup workflow which uses our CEU provided AWS account to store the IMO database in the cloud. You can use this in the same way as the original Azure one.
