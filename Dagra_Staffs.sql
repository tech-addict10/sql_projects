/* 
As a Database Administrator one of the function is to create or edit 
an existing database. In this assignment we are going to build   from 
the scratch. 

Assignment 1
1. create a database for the staffs of the company called Dagra Enterprise
2. create 3 tables linking with each table (Employee, Salary, Employee_population)
3. Populate the tables with any data of your choice.
Note. apply the roles of primary keys and foreign keys.

Assignment 2
Use the following sql syntax to solve the following sql questions 
1. update
2. delete
3. join  
 Question 1
in empl_departm table, we got an email that the department population in human resources is 4 not 2. 
use update syntax to update this information*/

/*question 2a
Using Alter and add command add another row to salary table
2b
use delete systax to delete the updated row
*/

/*Question 3
using join systax return employee id, salary amount and customer name 
*/


/* First create a database and then create table with columns for Dagra staffs */	

CREATE DATABASE DAGRA_STAFFS;
USE DAGRA_STAFFS;
CREATE TABLE employees (
	employee_id int primary key not null,
    first_name varchar(65),
    last_name varchar(65),
    hire_date date,
    phone int);

/* Populate each field with data for 5 roles*/

INSERT INTO employees ( employee_id, first_name, last_name, hire_date, phone)
VALUES (1, 'Ayo', 'David', '2021-01-12', 08123456),
		(2, 'Collins', 'Smith', '2020-12-10', 097927874),
        (3, 'Kaena', 'Zeus', '2019-08-05', 526837879),
        (4, 'Lucky', 'Band', '2019-11-01', 5634749),
        (5, 'Merlin', 'Akioya', '2019-11-01', 9886784);

-- Create a salary table with a foreign key linking the employees table
        
CREATE TABLE salary (
    payment_id INT PRIMARY KEY NOT NULL,
    employee_id INT,
    salary_amount DECIMAL(10 , 2 ),
    payment_date DATE,
    FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id)
);
  
-- Insert values into each salary field

INSERT INTO salary ( payment_id, employee_id, salary_amount, payment_date)
VALUE (1, 1, 1000, '2022-10-12'),
		(2, 2, 500, '2022-10-12'),
        (3, 3, 1300, '2022-10-12'),
        (4, 4, 10700, '2022-10-12'),
        (5, 5, 1500, '2022-10-12');

-- Create a table for the list of departments in the company and link with employees table
 
create table empl_departm(
	department_id int,
    department_name varchar(65),
    employee_id int,
    department_head varchar(65),
    department_population int,
	foreign key (employee_id) references employees ( employee_id));

-- Insert values into empl_departm table

insert into empl_departm (department_id, department_name, employee_id, department_head, department_population)
value (1, 'Human Resource', 2, 'Marry Jones', 2),
		(2, 'field services', 3, 'Hashworth Next', 2),
        (3, 'Warehouse', 1, 'Nick Matt', 2),
        (4, 'Dispatch', 4, 'Ashley clint', 2),
        (5, 'IT', 5, 'Kennedy Oska', 2);
         
-- Query each table to see the values
        
select * from employees;   
select * from salary;
select * from empl_departm;

-- Congratulation you just completed your first project