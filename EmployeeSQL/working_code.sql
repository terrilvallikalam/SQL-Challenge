-- List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM "Salaries" AS s
INNER JOIN "Employees" AS e ON
e.emp_no=s.emp_no;

-- NEED TO FIX List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date FROM "Employees"
ORDER BY hire_date;

SELECT first_name, last_name, EXTRACT(YEAR FROM hire_date) FROM "Employees"
SELECT first_name, last_name FROM "Employees" WHERE date_part = 1986;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name

