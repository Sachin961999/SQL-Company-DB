-- Q1 : Create a New Database and  Table for Employees
-- Answer 1:
create database Company_db;

Use company_db;

create table Employees
(employee_id Int primary key,
first_name VARCHAR(50),
last_name VARCHAR(50),
department VARCHAR(50),
salary int,
hire_date date)

-- Q2 : Insert Data into Employees Table
-- Answer 2:

insert into Employees
values("101","Amit","sharma","HR","50000","2020-01-15"),
("102","Riya","Kapoor","Sales","75000","2019-03-22"),
("103","Raj","Mehta","IT","90000","2018-07-11"),
("104","Neha","Verma","IT","85000","2021-09-01"),
("105","Arjun","Singh","Finance","60000","2022-02-10");

-- Q3 : Display All Employee Records Sorted by Salary (Lowest to Highest)
-- Answer 3:
Select * from employees order by salary ASC;

-- Q4 : Show Employees Sorted by Department (A–Z) and Salary (High → Low)
-- Answer 4:
select * from employees order by Department ASC, salary desc;

-- Q5 :  List All Employees in the IT Department, Ordered by Hire Date (Newest First)
-- Answer 5:
select * from employees
where department = 'IT'
order by hire_date DESC;

-- Q6 : Create and Populate a Sales Table
-- Answer 6:
create table sales
(sale_id int primary key,
customer_name varchar(30),
Amount int,
sale_date date)

insert into sales
values("1","Aditi","1500","2024-08-01"),
("2","Rohan","2200","2024-08-03"),
("3","Aditi","3500","2024-09-05"),
("4","Meena","2700","2024-09-15"),
("5","Rohan","4500","2024-09-25");

-- Q7 :  Display All Sales Records Sorted by Amount (Highest → Lowest)
-- Answer 7:
Select * from sales order by Amount DESC;

-- Q8 :  Show All Sales Made by Customer “Aditi”
-- Answer 8: 
select * from sales
where customer_name = 'Aditi';