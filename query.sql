
--List the following details of each employee:
--employee number, last name, first name, gender, and salary.
SELECT salaries.emp_no, first_name, last_name, gender, salary, employees.emp_no
FROM employees
JOIN salaries
	ON employees.emp_no = salaries.emp_no;

--List employees who were hired in 1986.
SELECT EXTRACT(YEAR FROM TIMESTAMP '1986-06-26 00:00:00'),
first_name, last_name
FROM employees;

--List the manager of each department with the following information:
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_no, departments.dept_name, from_date, to_date
FROM dept_manager
JOIN departments
 ON dept_manager.dept_no = departments.dept_no
JOIN employees
	ON dept_manager.emp_no = employees.emp_no

-- List the department of each employee with the following information:
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
 ON dept_emp.emp_no = employees.emp_no
JOIN departments
 ON dept_emp.dept_no = departments.dept_no
 
--List all employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name
FROM employees
WHERE first_name like 'Hercules' AND last_name LIKE 'B%'

-- List all employees in the Sales department, including their:
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
 ON employees.emp_no = dept_emp.emp_no
JOIN departments
 ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'

-- List all employees in the Sales and Development departments including their:
-- employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees
 ON employees.emp_no = dept_emp.emp_no
JOIN departments
 ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name LIKE 'Sales' OR departments.dept_name LIKE 'Development'

-- In descending order, list the frequency count of employee last names
-- i.e., how many employees share each last name.
