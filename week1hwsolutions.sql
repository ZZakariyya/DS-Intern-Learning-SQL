/*1. Display first name and last name as full name, salary, commission pct, and hire date for employees with salary less than 10000.*/

select * from employees;

select 
    first_name||' '||last_name as full_name, 
    salary, 
    commission_pct, 
    hire_date 
from employees
where salary < 10000;

/*2. Display city names (without repeated names) in ascending order from locations table.*/

select * from locations;

select 
    distinct city 
from locations
order by city asc;

/*3. Display the first name, hire date and job ID of the employees who is either IT Programmer or Sales Manager, and hired between 2002 and 2005.*/

select * from employees;

select
    first_name,
    hire_date,
    job_id
from employees
where (job_id = 'IT_PROG' or job_id = 'ST_MAN') and (hire_date between '01-JAN-02' and '31-DEC-05');
    
/*4. Display details from jobs table in the descending order of the job title.*/

select * from jobs;

select * from jobs
order by job_title desc;

/*5. Display details of the employees where commission percentage is null and salary in the range 5000 to 10000 and department id is 30.*/

select * from employees;

select * from employees
where commission_pct is null and (salary between 5000 and 10000) and department_id = 30;

/*6. Display employees who joined after 1st January 2008.*/

select first_name||' '||last_name as full_name
from employees
where hire_date > '01-JAN-08';

/*7. Display details of employees with ID 150, 160 or 170.*/

select * from employees
where employee_id in (150,160,170);

/*8. Display employees where the first name or last name starts with S.*/

select first_name||' '||last_name as full_name
from employees
where first_name like 'S%' or last_name like 'S%';

/*9. Display the length of first name for employees where last name contain character ‘b’ after 3rd position.*/

select 
    first_name,
    length(first_name)
from employees
where first_name like '___%b%';