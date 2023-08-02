# sql_challenge

## Overview
This project involves designing tables to hold data from CSV files, importing the CSV files, and performing data analysis on the imported data. The goal is to perform data modeling, data engineering, and data analysis tasks to gain insights from the dataset.

## Data Modeling
The data modeling phase involves designing the tables to represent the data from the CSV files. The tables should accurately capture the structure and relationships of the data. The following tables have been designed for this project:

1. `employees`: Contains employee information such as employee number, first name, last name, etc.
2. `titles`: Holds job title information including title_id and title
3. `salaries`: Stores salary imforamtion of employees.
4. `departments`: Holds department information including department number and department name.
5. `dept_emp`: Represents the relationship between employees and departments, linking employee number and department number.
6. `dept_manager`: Stores the information about department managers, mapping department number and employee number.

## Data Engineering
The data engineering phase involves importing the data from the CSV files into a SQL database. The steps to perform data engineering are as follows:

- Set up a PostgreSQL database to store the data.
- Create the necessary tables based on the data modeling phase.
- Use PgAdmin or to import the CSV files into their corresponding tables.
- Verify the successful import of the data by checking the tables and ensuring the data is correctly captured.

## Data Analysis
The data analysis phase focuses on deriving insights from the imported data.

To perform data analysis, I wrote SQL queries using PgAdmin to execute the queries against the database.

## Conclusion
This project involves data modeling, data engineering, and data analysis tasks. By designing appropriate tables, importing the CSV data, and performing data analysis, valuable insights can be gained from the dataset.
