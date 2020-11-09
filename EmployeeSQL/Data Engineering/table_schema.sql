-- SQL Homework - Employee Database: A Mystery in Two Parts

-- 1. Data Engineering

-- Create table for departments and import departments.csv 

CREATE TABLE "departments" (
    "dept_no" VARCHAR(255) NOT NULL,
    "dept_name" VARCHAR(255) NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * FROM departments;

-- Create table for titles and import titles.csv 

CREATE TABLE "titles" (
    "title_id" VARCHAR(255) NOT NULL,
    "title" VARCHAR(255) NOT NULL,
    PRIMARY KEY (title_id)
);

SELECT * FROM titles;

-- Create table for employees and import employees.csv 

CREATE TABLE "employees" (
    "emp_no" INT NOT NULL,
    "emp_title_id" VARCHAR(255) NOT NULL,
    "birth_date" DATE NOT NULL,
    "first_name" VARCHAR(255) NOT NULL,
    "last_name" VARCHAR(255) NOT NULL,
    "sex" VARCHAR(255) NOT NULL,
    "hire_date" DATE NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_title_id) REFERENCES titles (title_id)
);

SELECT * FROM employees;

-- Create table for dept_emp and import dept_emp.csv 

CREATE TABLE "dept_emp" (
    "emp_no" INT NOT NULL,
    "dept_no" VARCHAR(255) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

-- Create table for dept_manager and import dept_manager.csv 

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(255) NOT NULL,
    "emp_no" INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager

-- Create table for salaries and import salaries.csv 

CREATE TABLE "salaries" (
    "emp_no" INT NOT NULL,
    "salary" INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;