--List the employee number, last name, first name, sex, and salary of each employee
Select * from employees
Select emp_no, last_name, first_name, sex from employees
Select * from salaries
select salary from salaries
--List the first name, last name, and hire date for the employees who were hired in 1986 
select * from employees
select hire_date, first_name, last_name from employees where hire_date = '1986-01-01'  
--List the manager of each department along with their department number, department name, employee number, last name, and first name
select * from departments_manager
select * from employees
SELECT employees.emp_title_id,employees.first_name, employees.last_name, employees.emp_no, departments.dept_name
Into updated_column
FROM employees
INNER JOIN departments_manager ON
employees.emp_no=departments_manager.emp_no
INNER JOIN departments ON
departments.dept_no=departments_manager.dept_no;
select * from updated_column
--List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
--List each employee in the Sales department, including their employee number, last name, and first name (2 points)
SELECT employees.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM employees 
INNER JOIN department_employee 
ON employees.emp_no = department_employee.emp_no
INNER JOIN departments 
ON department_employee.dept_no = departments.dept_no
WHERE departments.dept_name = 'Sales';
--List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
INNER JOIN department_employee AS de ON e.emp_no = de.emp_no
INNER JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';
--List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
SELECT last_name, COUNT(*) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;

