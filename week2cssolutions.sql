/*1. Show minimum, average and maximum salary in last 15 years according to job id.*/

select 
    min(salary),
    avg(salary),
    max(salary)
from employees
where to_char(hire_date, 'yyyy') between 2006 and 2021
group by job_id;

/*2. How many employees hired after 2005 for each department?*/

select count(*)
from employees
where to_char(hire_date, 'yyyy') > 2005;

/*3. Write a query to show departments in which the difference between maximum and minimum salary is greater than 5000.*/

select department_id
from employees
group by department_id
having MAX(salary) - min(salary) > 5000;

/*4. Display salaries of employees who has not commission pact according to departments (without using where).*/

select * from employees;


select department_id,sum(case
when commission_pct is null then salary
else 0
end)netice from hr.employees group by department_id;


/*5. How many people has job id with average salary between 3000 and 7000?*/

select count(*)
from employees
where job_id is not null
group by job_id
having avg(salary) between 3000 and 7000;

/*6. Find number of employees with same name.*/

select first_name, count(*)
from hr.employees
group by first_name
having count(*) > 1;

/*7. How many people with the same phone code work in departments 50 and 90?*/

select * from hr.employees;

select substr(phone_number,1,3), count(*)
from hr.employees
where department_id between 50 and 90
group by substr(phone_number,1,3)
having count(*)>1;

/*8. Display departments with average number of employees more than 5 in spring and autumn.*/

select department_id, count(employee_id) average_number_of_employees
from hr.employees
where extract(month from hire_date) between 3 and 5 or extract(month from hire_date) between 9 and 11
group by department_id
having count(employee_id)>5

/*9. How many employees work in departments which has maximum salary more than 5000?*/

select department_id, count(*)
from hr.employees
group by department_id
having max(salary) > 5000;

/*10. Change second letter of employees’ names with the last letter and display.*/

-- REPLACE ( string_expression , string_pattern , string_replacement )

select first_name, replace(first_name, substr(first_name, 2,1), substr(first_name, -1,1))
from hr.employees;

select first_name, substr(first_name, 1,1)||''||substr(first_name, -1,1)||''||substr(first_name, 3,length(first_name)-3)||''||substr(first_name, 2,1)
from hr.employees;
