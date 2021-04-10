select salaries.emp_no, salaries.salary, emp.first_name, emp.last_name, emp.sex, emp.emp_no 
from salaries, emp
where salaries.emp_no=emp.emp_no

select first_name, last_name, hire_date from emp
where hire_date like '%1986'

select distinct departments.dept_name, departments.dept_no, dept_manag.emp_no, emp.first_name, emp.last_name
from departments, dept_manag, emp
where departments.dept_no=dept_manag.dept_no
and dept_manag.emp_no= emp.emp_no

select distinct emp.emp_no, emp.last_name, emp.first_name, departments.dept_name
from departments, emp, dept_emp
where departments.dept_no = dept_emp.dept_no
and emp.emp_no = dept_emp.emp_no

select first_name, last_name, sex from emp
where first_name = 'Hercules'
and last_name like 'B%'

select distinct departments.dept_name, dept_emp.emp_no, emp.first_name, emp.last_name
from departments, dept_emp, emp
where (departments.dept_no=dept_emp.dept_no
and dept_emp.emp_no= emp.emp_no)
and (departments.dept_name = 'Sales')
or (departments.dept_name = 'Development')

Select last_name,count(last_name)as "Last Name Count"
From emp
Group by last_name
Order by last_name desc;