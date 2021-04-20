-- Once you have a complete database, do the following:
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employee.emp_no, employee.last_name, employee.first_name, employee.sex, salary.salary
FROM employee
JOIN salaries AS salary
  ON employee.emp_no = salary.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT employee.first_name, employee.last_name, employee.hire_date
FROM employee
where employee.hire_date like '%1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employee.last_name, employee.first_name
from dept_manager
join departments as departments
	on departments.dept_no = dept_manager.dept_no
join employee as employee
	on employee.emp_no = dept_manager.emp_no
	
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
select departments.dept_name, dept_emp.emp_no, employee.last_name, employee.first_name
from dept_emp
join departments as departments
	on departments.dept_no = dept_emp.dept_no
join employee as employee
	on employee.emp_no = dept_emp.emp_no

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.


