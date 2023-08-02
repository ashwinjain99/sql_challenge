CREATE TABLE IF NOT EXISTS departments(
	dept_no VARCHAR(4) PRIMARY KEY,
	dept_name VARCHAR NOT NULL
)

CREATE TABLE IF NOT EXISTS dept_manager(
	dept_no VARCHAR(4),
	emp_no INTEGER,
	PRIMARY KEY(dept_no, emp_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
)

CREATE TABLE IF NOT EXISTS dept_emp(
	emp_no INTEGER,  
	dept_no VARCHAR(4),
	PRIMARY KEY(emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
)

CREATE TABLE IF NOT EXISTS employees(
	emp_no INTEGER PRIMARY KEY,
	emp_title_id VARCHAR(5) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR(1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
)

CREATE TABLE IF NOT EXISTS titles(
	title_id VARCHAR(5) PRIMARY KEY,
	title VARCHAR NOT NULL
)

CREATE TABLE IF NOT EXISTS salaries(
	emp_no INTEGER PRIMARY KEY,
	salary BIGINT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
)