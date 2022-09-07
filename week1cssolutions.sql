/*1) Write a query in SQL to display job Title, the difference between minimum and maximum salaries for those jobs which max salary within the range 12000 to 18000.*/

select * from jobs;

select job_title, max_salary - min_salary
from jobs
where max_salary between 12000 and 18000;

/*2) Display the details of the employees who have no commission percentage and whose salary is within the range 7000 to 12000 for those employees who are not working 
in the departments 50,30 and 80.*/

select * from employees;

select * from employees
where commission_pct is null and (salary between 7000 and 12000) and department_id not in (30,50,80);

/*3) Write a query in SQL to display the full name (first name and last name), hire date, commission percentage, email and telephone separated by '-', and salary for 
those employees whose salary is above 11000 and make the result set in a descending order by the full name.*/

select 
    first_name||' '||last_name as full_name,
    hire_date,
    commission_pct,
    email||'-'||phone_number as contact_details,
    salary
from employees
where salary > 11000
order by full_name desc;

/*4) Write a query in SQL to display the first and last name, and salary for those employees whose first name is ending with the letter “m” and they have been hired before 
June 5th, 2010.*/

select 
    first_name, 
    last_name, 
    salary
from employees
where first_name like '%m' and hire_date < '05-JUN-10';

/*5) Display the full name (first and last), the phone number and email separated by hyphen, and salary, for those employees whose salary is not within the range of 9000 and 
17000 and commission is not null. The column headings assign with Full_Name, Contact _Details and Remuneration respectively.*/

select 
    first_name||' '||last_name Full_Name,
    email||'-'||phone_number "Contact _Details and Renumeration",
    salary
from employees
where (salary not between 9000 and 17000) and commission_pct is not null; 

/*6) Write a query in SQL to display all the information about the department Marketing.*/

select * from departments
where department_name = 'Marketing';

/*7) Write a query to display data from job_history and make the result set in descending order by the epmloyee_id and ascending order by start date.*/

select * from job_history
order by employee_id desc, start_date asc;

/*8) Write a query to display job_id and salary of employees whose phone number starts with 515 or 590 and was hired after 2003 by sorting hire_date and salary in ascending way.*/

select * from employees;

select
    job_id,
    salary
from employees
where (phone_number like '515%' or phone_number like '590%') and hire_date >= '01-JAN-03'
order by hire_date, salary asc;

/*9) Write a query to display employees who were hired in 2001.*/

select first_name||' '||last_name as full_name
from employees
where hire_date between '01-JAN-01' and '01-JAN-02';

/*10) Write a query to display employees’ first and last name who were not hired in 2006 and 2007.*/

select 
    first_name, 
    last_name 
from employees
where hire_date not between '01-JAN-06' and '01-JAN-08';

/*11) Write a query to display email, job_id and first name of employees whose hired year was 2007 or hired month was 1.*/

select
    email,
    job_id,
    first_name
from employees
where hire_date like '__-___-07' or hire_date like '__-JAN-__';

/*12) Write a query to display details of employees who was hired after 2007 or salary is less than 10000.*/

select * from employees
where hire_date >= '01-JAN-08' or salary < 10000;
    
