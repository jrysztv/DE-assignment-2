# Math, Minds, and Meteorology: Analyzing the International Math Olympiad

**Course: Data Engineering 1: SQL and Different Shapes of Data**

**Authors: Aleksandra Krasnokutskaia, Marton Nagy, Istvan Jaray, Giorgi Machavariani**

## Submitted project artifacts

- [Knime workflow file](knime_workflow/);
- [Documentation](Group4_DE1TP2_Documentation.pdf);
- [Presentation PDF](Group4_DE1TP2_Slides.pdf)

Additionally, you can also find in the repository:

- [Images](analysis_images/): a folder containing the analysis images from the Knime workflow, as well as the ER-diagram and a picture of the Knime workflow;
- [Backup workflow(s)](backup_knime_workflows/): additional backup Knime workflow(s) for reproducing our project after our Azure free trial ends;
- [Raw data files and variable descriptions](data/source_data/):
  - [IMO data files and SQL scripts](data/source_data/IMO/): raw CSV files of the IMO database, as well as the SQL script for importing the files in a well-structered relational database, and also a SQL dump file to easily reproduce the database;
  - [Files describing the matching between historic country names](data/source_data/historic_country_names): files containing the mapping between the different country names used in different data sources;
  - [Description on variables used from the World Bank](data/source_data/world-bank-data-desc.txt): a simple description on which World Bank indicators were included in the workflow.

## Reproduction

The results can be easily reproduced by simply downloading the [knime_workflow](knime_workflow/) folder, loading it in Knime, downloading the necessary extensions and running all nodes, as the IMO database is stored in Azure, while all other data sources are fetched from the web. Note, however, that as we have registered to Azure only with a free one-month trial account, loading the IMO database from there might be impossible after 10 December.

Alternatively, after 10 December, you can reproduce the results in the following way.

First, there is a [workflow](backup_knime_workflows/knime_workflow_backup_fromlocal) uploaded which loads the IMO database from a local MySQL database. To use this workflow, you first have to load the IMO database locally by running the [IMO_database_dump_group4.sql](data/source_data/IMO/IMO_database_dump_group4.sql) SQL dump file. Then, you have to manually configure the indicated nodes in the Knime workflow to reflect your local MySQL server username and password correctly.

> [!Note]
> Later, we might also add another backup workflow which uses our CEU provided AWS account to store the IMO database in the cloud. You would be able to use this in the same way as the original Azure one.
