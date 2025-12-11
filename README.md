# Overview

This project cleans and analyzes a dataset of electric vehicles (EVs) using a MySQL relational database. It was conducted in 2023 during my time as a student at the University of Maryland. It was a 5 persion team project led by me. The project includes:

* Designing an ERD and database schema
* Cleaning raw CSV data
* Importing data into a structured database
* Writing SQL queries and views to analyze EV trends
* Discussing ethical considerations and potential future research

This repository contains everything needed to recreate the database, run the queries, and review my team's conclusions.

### Repository Structure
* data/ — Contains the raw EV dataset used in the project.
* database/ — SQL scripts to recreate the database, generated views, and the MySQL Workbench ERD.
* docs/ — Contains a detailed written report on the topic, including a description of the database, the data cleaning process, ethical considerations in regards to data use, and future work that could be done to improve our database. An appendix is attached to the end of the report for easy navigation.

### How to Recreate the Database
1. Import the database schema found in the database folder
    * Open MySQL Workbench
    * Go to *Server* -> *Data Import*
    * Select "electric_vehicle_backup.sql"
    * Import schema into a new schema
2. Create view
    * Open "electric_vehicles_queries.sql" in Workbench
    * Run scripts
3. (Optional) If you want to see an ERD of the project to better understand its logical design, download and open "electric_vehicle_logical.mwb" located in database folder.
4. (Optional) If you want to explore the raw data set used for the database we created, download, extract files, and open "electric_vehicle_population.zip" located in raw_data folder.
