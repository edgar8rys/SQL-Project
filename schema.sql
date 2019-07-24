CREATE TABLE departments
	(dept_no VARCHAR NOT NULL PRIMARY KEY,
	dept_name VARCHAR NOT NULL);
	
SELECT * FROM departments;

CREATE TABLE dept_emp
	(id INTEGER NOT NULL PRIMARY KEY,
	 emp_no INTEGER NOT NULL,
	 dept_no VARCHAR NOT NULL,
	 from_date TIMESTAMP NOT NULL,
	 to_date TIMESTAMP NOT NULL,
	 FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no));
	
SELECT * FROM dept_emp;
	 
CREATE TABLE employees
	(emp_no INTEGER NOT NULL PRIMARY KEY,
	birth_date TIMESTAMP NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	 gender VARCHAR NOT NULL,
	 hire_date TIMESTAMP NOT NULL);
	 
SELECT * FROM employees;

CREATE TABLE dept_manager
	(dept_no VARCHAR NOT NULL,
	emp_no INTEGER NOT NULL,
	from_date TIMESTAMP NOT NULL,
	to_date TIMESTAMP NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	Foreign Key (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no))
	
SELECT * FROM dept_manager;

CREATE TABLE salaries
	(emp_no INTEGER NOT NULL PRIMARY KEY,
	salary INTEGER NOT NULL,
	from_date TIMESTAMP NOT NULL,
	to_date TIMESTAMP NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
SELECT * FROM salaries;

CREATE TABLE title
	(id INTEGER PRIMARY KEY,
	 emp_no INTEGER NOT NULL,
	title VARCHAR NOT NULL,
	from_date TIMESTAMP NOT NULL,
	to_date TIMESTAMP NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
SELECT * FROM title
