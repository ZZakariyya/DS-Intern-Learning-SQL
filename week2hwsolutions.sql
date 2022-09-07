/*1. Display employees who joined in the month of May.*/

SELECT *
FROM employees
WHERE to_char(hire_date, 'mon')='jan';

/*2. Display employees who joined in the current year.*/

SELECT *
FROM employees
WHERE to_char(hire_date, 'year')='2022';

/*3. Display the number of days between system date and 1st January 2011.*/

select current_timestamp - to_date('01 Jan 2011', 'dd mon yyyy')
from dual;

/*4. Display maximum salary of employees.*/

select max(salary) from employees;

/*5. Display number of employees in each department.*/

select 
    department_id, 
    count(*) 
from employees
group by department_id;

/*6. Display number of employees who joined after 15th of month.*/

SELECT count(employee_id) 
FROM employees 
WHERE TO_CHAR(hire_date,'DD')>15;

/*7. Display average salary of employees in each department who have commission percentage.*/

select 
    department_id,
    avg(salary)
from employees
group by department_id
having COALESCE(commission_pct);

/*8. Display job ID for jobs with average salary more than 10000.*/

select * from employees;

select job_id
from employees
group by job_id
having avg(salary) > 10000;

/*9. Display job ID, number of employees, sum of salary, and difference between the highest salary and the lowest salary of the employees for all jobs.*/

select
    job_id,
    count(employee_id),
    sum(salary),
    max(salary) - min(salary)
from employees
group by job_id;

/*10. Display manager ID and number of employees managed by the manager.*/

select 
    manager_id,
    count(employee_id)
from employees
group by manager_id
having manager_id is not null;

