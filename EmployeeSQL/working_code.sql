-- List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.first_name, e.last_name, e.sex, s.salary
FROM "Salaries" AS s
INNER JOIN "Employees" AS e ON
e.emp_no=s.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date FROM "Employees" WHERE hire_date >= '19860101' AND hire_date < '19870101' ORDER BY hire_date;

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name
SELECT d.dept_no, d.dept_name, n.emp_no, e.last_name, e.first_name
FROM "Departments" AS d
LEFT JOIN "Dept_Manager" AS n
ON n.dept_no = d.dept_no
LEFT JOIN "Employees" AS e
ON n.emp_no = e.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM "Employees" WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name
CREATE VIEW SalesView AS
SELECT d.dept_name, e.dept_no, e.emp_no, s.last_name, s.first_name
FROM "Departments" as d
LEFT JOIN "Dept_Emp" as e
ON e.dept_no = d.dept_no
LEFT JOIN "Employees" as s
ON s.emp_no = e.emp_no;

SELECT * FROM SalesView WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name
SELECT * FROM SalesView WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name
SELECT * FROM "Employees"
SELECT last_name, COUNT (last_name) AS Frequency FROM "Employees" GROUP BY last_name ORDER BY COUNT (last_name) DESC;