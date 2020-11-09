-- #### Data Analysis

-- Once you have a complete database, do the following:

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries on employees.emp_no = salaries.emp_no
ORDER BY employees.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE extract(year from employees.hire_date) = 1986;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments on (dept_manager.dept_no = departments.dept_no)
JOIN employees on (dept_manager.emp_no = employees.emp_no)
ORDER BY dept_manager.dept_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp on (dept_emp.emp_no = employees.emp_no)
JOIN departments on (departments.dept_no = dept_emp.dept_no)
ORDER BY employees.emp_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules'
AND employees.last_name LIKE 'B%'
ORDER BY employees.last_name;

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp on (dept_emp.emp_no = employees.emp_no)
JOIN departments on (departments.dept_no = dept_emp.dept_no)
WHERE departments.dept_name = 'Sales'
ORDER by employees.emp_no;

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp on (dept_emp.emp_no = employees.emp_no)
JOIN departments on (departments.dept_no = dept_emp.dept_no)
WHERE 1=1
AND (departments.dept_name = 'Sales') OR (departments.dept_name = 'Development')
ORDER by employees.emp_no;

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT employees.last_name, COUNT (employees.last_name) AS "Employee Surname Frequency"
FROM employees
GROUP BY employees.last_name
ORDER BY "Employee Surname Frequency" DESC;