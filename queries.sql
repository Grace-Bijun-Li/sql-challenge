-- Select the employee number, last name, first name, sex, and salary of all employees, ordered by employee number
SELECT 
employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM 
employees LEFT JOIN salaries ON employees.emp_no = salaries.emp_no
ORDER BY
employees.emp_no;

-- Select the first name, last name, and hiring date for all employees hired in 1986 
SELECT 
employees.first_name, employees.last_name, employees.hire_date
FROM 
employees 
WHERE
DATE_PART('year', hire_date) = 1986;

-- Select the department number, department name, employee number, last name, and first name of all managers of each department
SELECT 
dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM 
dept_manager 
INNER JOIN departments
	ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees
	ON dept_manager.emp_no = employees.emp_no;

-- Select the employee number, last name, first name, and department of each employee, ordered by employee number
SELECT 
dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM 
dept_emp 
INNER JOIN departments
	ON dept_emp.dept_no = departments.dept_no
LEFT JOIN employees
	ON dept_emp.emp_no = employees.emp_no
ORDER BY 
dept_emp.emp_no;

-- Select first name, last name, birth date, and sex of all employees whose first name is "Hercules" and last name begins with a "B"
SELECT 
employees.first_name, employees.last_name, employees.birth_date, employees.sex
FROM 
employees
WHERE 
employees.first_name = 'Hercules' AND employees.last_name like 'B%';

-- Select employee number, last name, first name, and department name of all employees in the Sales department, ordered by employee number
SELECT 
dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM 
dept_emp
LEFT JOIN employees
	ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments
	ON dept_emp.dept_no = departments.dept_no
WHERE
departments.dept_name = 'Sales'
ORDER BY
dept_emp.emp_no;

-- Select employee number, last name, first name, and department name of all employees in the 'Sales' OR the 'Development' department, ordered by employee number
SELECT 
dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM 
dept_emp
LEFT JOIN employees
	ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments
	ON dept_emp.dept_no = departments.dept_no
WHERE
departments.dept_name in ('Sales', 'Development')
ORDER BY
dept_emp.emp_no;

-- Count the number of employees, grouped by last name
SELECT 
COUNT(employees.emp_no), employees.last_name
FROM 
employees
GROUP BY 
employees.last_name;
