use company_db;

create table employees2
(Empid int primary key,
EmpName varchar (50),
Department varchar (50),
City varchar (50),
Salary int,
HireDate date);

select * from employees2;

insert into employees2
values
(101, "Rahul Mehta", "Sales", "Delhi", 55000, '2020-04-12'),
(102, "Priya Sharma", "HR", "Mumbai", 62000, '2019-09-25'),
(103, "Aman Singh", "IT", "Bengaluru", 72000, '2021-03-10'),
(104, "Neha Patel", "Sales", "Delhi", 48000, '2022-01-14'),
(105, "Karan Joshi", "Marketing", "Pune", 45000, '2018-07-22'),
(106, "Divya Nair", "IT", "Chennai", 81000, '2019-12-11'),
(107, "Raj Kumar", "HR", "Delhi", 60000, '2020-05-28'),
(108, "Simran Kaur", "Finance", "Mumbai", 58000, '2021-08-03'),
(109, "Arjun Reddy", "IT", "Heydrabad", 70000, '2022-02-18'),
(110, "Anjali Das", "Sales", "Kolkata", 51000, '2023-01-15');

select * from employees2;

# Question 1 : Show employees working in either the ‘IT’ or ‘HR’ departments.

select * from employees2
where Department in ("IT", "HR");

# Question 2 : Retrieve employees whose department is in ‘Sales’, ‘IT’, or ‘Finance’.

select * from employees2
where Department in ("Sales", "IT", "Finance");

# Question 3 : Display employees whose salary is between ₹50,000 and ₹70,000.

select *  from employees2
where Salary between 50000 and 70000;

# Question 4 : List employees whose names start with the letter ‘A’.

select * from employees2
where EmpName like "A%";

# Question 5 : Find employees whose names contain the substring ‘an’.

select * from employees2
where EmpName like "%an%";

# Question 6 : Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000.

select * from employees2
where City in ("Delhi", "Mumbai") and  Salary >55000;

# Question 7 : Display all employees except those from the ‘HR’ department.

select * from employees2
where Department <> "HR";

# Question 8 : Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first).

select * from employees2
where HireDate between '2019-01-01' and '2022-12-31'
order by HireDate;