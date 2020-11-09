# sql-challenge - Employee Database: A Mystery in Two Parts
SQL Homework - Employee Database: A Mystery in Two Parts

## Background

It has been two weeks since I was hired as a new data engineer at Pewlett Hackard. In this assignment, I designed a SQL table to hold the database from six CSVs that pertained to the 1980s and 1990s (departments.csv, dept_emp.csv, dept_manager.csv, employees.csv, salaries.csv, titles.csv) in PostgresSQL. Additionally, I performed Data Modeling, Data Engineering, and Data Analysis with the imported information. 

## Data Modeling

A sketch of the ERD database is located in the EmployeeSQL/Data Modeling folder. The ERD.png image was created using www.quickdatabasediagrams.com. 

![ERD.png](ERD.png)

## Data Engineering

Using the imported information, I created a table schema for each of the six CSV files (EmployeeSQL/data). I specified data types, primary keys, foreign keys, and other constraints inside the table schema. These tables were created in the correct order, and each CSV was then imported into its corresponding SQL table. This unfortunately, took several attempts. 

## Data Analysis

After completing the database, I answered the following questions in a PostgresSQL query file (SQL). This file and code/s can be located inside this repository (EmployeeSQL/Data Analysis/data analysis_queries.sql). 

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

End of README file. 