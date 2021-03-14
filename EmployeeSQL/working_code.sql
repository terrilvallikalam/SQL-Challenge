-- List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM "Salaries" AS s
INNER JOIN "Employees" AS e ON
e.emp_no=s.emp_no;

-- NEED TO FIX List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date FROM "Employees" ORDER BY hire_date;

SELECT first_name, last_name, EXTRACT(YEAR FROM hire_date) FROM "Employees";
SELECT first_name, last_name FROM "Employees" WHERE date_part = 1986;

-- NEED TO FIX List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
SELECT d.dept_no, d.dept_name, n.emp_no, e.first_name, e_last_name
FROM "Departments" AS d
FROM "Employees" AS e
INNER JOIN "Dept_Manager" AS n ON
n.emp_no=e.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM "Employees" WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- NEED TO FIX List all employees in the Sales department, including their employee number, last name, first name, and department name
SELECT * FROM "Dept_Manager"

CREATE VIEW SalesView AS
SELECT FROM Departments.dept_no, Departments.dept_name, Dept_Emp.dept_no, Dept_Emp.emp_no 
WHERE Departments.dept_no = Dept_Emp.dept_no

-- NEED TO DO List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT * FROM "Employees"
SELECT last_name, COUNT (last_name) AS Frequency FROM "Employees" GROUP BY last_name ORDER BY COUNT (last_name) DESC;