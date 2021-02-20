-- Select Statements

select * from departments;
select * from dept_emp;
select * from dept_manager;
select * from employees;
select * from salaries;
select * from title;

-- 1

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees join salaries on employees.emp_no = salaries.emp_no;

-- 2

select first_name, last_name, hire_date
from employees where hire_date between '1986-01-01' and '1986-12-31'; 

-- 3

select departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from departments
join dept_manager on departments.dept_no = dept_manager.dept_no
join employees on dept_manager.emp_no = employees.emp_no;

-- 4

select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
from dept_emp
join employees on dept_emp.emp_no = employees.emp_no
join departments on dept_emp.dept_no = departments.dept_no