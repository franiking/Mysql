CREATE table employees (
    emp_id int primary key,
    emp_name varchar(20),
    dept varchar(20),
    salary int,
    city varchar(15) 
);

show tables;

SELECT * from employees;

ALTER Table employees
MODIFY emp_id int NOT NULL AUTO_INCREMENT;


INSERT INTO employees (emp_name,dept,salary,city)
      values('Arun','IT',50000,'chennai'),
            ('Priya','HR',40000,'bangalore'),
            ('Kumar','IT',50000,'chennai'),
            ('Divya','Finance',45000,'Mumbai'),
            ('Ravi','HR',35000,'chennai'),
            ('Meena','IT',70000,'Bangalore'),
            ('Suresh','Finance',55000,'Chennai'),
            ('Nisha','HR',42000,'Mumbai'),
            ('Karthick','Sales',48000,'Hyderabad'),
            ('Anu','Sales',52000,'Chennai');       



--1. Display all employees working in the IT department.
SELECT * FROM employees
where dept='IT';

--2. Find employees earning more than ₹45,000.
SELECT * from employees
WHERE salary>45000;

--3. Display employees who live in Chennai.
SELECT * FROM employees
WHERE city='chennai';

--4. Find employees earning between ₹40,000 and ₹55,000, inclusive.
--Type 1
SELECT * from employees
WHERE salary<>40000 and 55000;
--Type 2
SELECT * from employees
WHERE salary BETWEEN 40000 and 55000;

--5. Display employees who work in HR or Finance.
SELECT * from employees 
WHERE dept = 'HR' or dept = 'Finance';
SELECT * from employees 
WHERE dept IN ('HR','Finance');

--6. Find employees who live in Chennai and earn more than ₹45,000.
SELECT * from employees
where city = 'chennai'
AND salary>45000;

--7. Count the total number of employees.
SELECT COUNT(emp_id) from employees
where dept='HR';

SELECT avg(salary) from employees;



