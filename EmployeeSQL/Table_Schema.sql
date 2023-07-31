CREATE TABLE IF NOT EXISTS departments(
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR  	
)

CREATE TABLE IF NOT EXISTS dept_manager(
	dept_no VARCHAR(4) PRIMARY KEY,
	emp_no INT	
)

CREATE TABLE IF NOT EXISTS dept_emp(
	emp_no INT,  
	dept_no VARCHAR(4),
	PRIMARY KEY(emp_no, dept_no)
)

CREATE TABLE IF NOT EXISTS employees(
	emp_no INT,  PRIMARY KEY
	emp_title_id VARCHAR(5) REFERENCES titles (title_id),
	birth_date DATE,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(1),
	hire_date DATE
)

CREATE TABLE IF NOT EXISTS titles(
	title_id VARCHAR(5), PRIMARY KEY
	title VARCHAR 
)

CREATE TABLE IF NOT EXISTS salaries(
	emp_no INT,
	salary INT
	PRIMARY KEY (emp_no, salary)
)