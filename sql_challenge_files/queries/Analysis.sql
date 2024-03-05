SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

SELECT first_name, last_name, hire_date 
FROM employees 
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT d.dept_no, d.dept_name, dm.emp_no, e.first_name, e.last_name
FROM departments d
JOIN dept_manager dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no;

SELECT de.dept_no, de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN departments d ON de.dept_no = d.dept_no
JOIN employees e ON de.emp_no = e.emp_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT de.emp_no, e.last_name, e.first_name
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
WHERE dept_no = 'd007';

SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp de
JOIN employees e ON de.emp_no = e.emp_no
JOIN departments d ON de.dept_no = d.dept_no
WHERE de.dept_no = 'd007' OR de.dept_no = 'd005';

SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;