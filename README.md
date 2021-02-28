# sql-challenge
 
## Introduction

This is an analysis of the employees data of a corporation, Pewlett Hackard, from the 1980s and 1990s. In the raw data, we had six CSV files, which contain various information from employee titles, names, departments... all the way to their salaries. In this analysis, we will perform Data Engineering, Data Modeling and Data Analysis using basic and more advanced SQL skills.
<br><br>
## Files to Read

There are several files that may need to be read:

1. [Entity Relationship Diagram (ERD)](https://github.com/Grace-Bijun-Li/sql-challenge/blob/main/ERD.png)
    - This is the diagram that shows the relationships among the *six* CSV files. Six corresponding tables are created with *primary keys* and *foreign keys* set up to link all the information together.
2. [schema.sql](https://github.com/Grace-Bijun-Li/sql-challenge/blob/main/schema.sql)
    - This is the main script of the table schema for each of the six CSV files. Data types, primary keys, foreign keys and other constraints are also shown in here. This file can be another form of readig of the ERD.
3. [queries.sql](https://github.com/Grace-Bijun-Li/sql-challenge/blob/main/queries.sql)
    - In this file, various queries are writen to acquire/sorting employee information from the database.
4. [employee_data_testing.ipynb](https://github.com/Grace-Bijun-Li/sql-challenge/blob/main/employee_data_testing.ipynb)
    - This is the **advanced** analysis based on the SQL queries performed in the files above. In here, SQL database are imported into Pandas, and more interesting discoveries about employee salaries are performed.

