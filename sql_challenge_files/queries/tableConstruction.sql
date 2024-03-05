CREATE table titles(
	title_id VARCHAR(5) NOT NULL PRIMARY KEY,
	title VARCHAR(50) NOT NULL
);


SELECT * FROM titles;


CREATE table employees(
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title VARCHAR(5) NOT NULL,
	birth_date DATE,
	first_name VARCHAR(25) NOT NULL,
	last_name VARCHAR(25) NOT NULL,
	sex VARCHAR(1),
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);


SELECT * FROM employees;


CREATE table salaries(
	emp_no INT NOT NULL,
	salary MONEY NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);


SELECT * FROM salaries;


CREATE table departments(
	dept_no VARCHAR(4) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(50) NOT NULL
);


SELECT * FROM departments;


CREATE table dept_manager(
	dept_no VARCHAR(4) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


SELECT * FROM dept_manager;


CREATE table dept_emp(
	emp_no INT NOT NULL,
	dept_no VARCHAR(4) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);


SELECT * FROM dept_emp;