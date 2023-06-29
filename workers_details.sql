create database org;
use org;
create table Worker(
WORKER_ID int not null primary key auto_increment,
FIRST_NAME char(25),
LAST_NAME char(25),
SALARY int,
JOINING_DATE datetime,
DEPARTMENT char(25));

insert into Worker values(001, 'Monika', 'Arora', 100000, '14-02-20 09:00:00', 'HR'),
(002, 'Niharika', 'Verma', 80000, '14-06-11 09:00:00', 'Admin'),
(003, 'Vishal', 'Singhal', 300000, '14-02-20 09:00:00', 'HR'),
(004, 'Amitabh', 'Singh', 500000, '14-02-20 09:00:00', 'Admin'),
(005, 'Vivek', 'Bhati', 500000, '14-06-11 09:00:00', 'Admin'),
(006, 'Vipul', 'Diwan', 200000, '14-06-11 09:00:00', 'Account'),
(007, 'Satish', 'Kumar', 75000, '14-01-20 09:00:00', 'Account'),
(008, 'Geetika', 'Chauhan', 90000, '14-04-11 09:00:00', 'Admin');

select * from Worker;
 /*Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.*/
select FIRST_NAME as WORKER_NAME from Worker;
 /*write a sql quary to fetch unique values of department from worker table.*/
select distinct DEPARTMENT from Worker;
/* Write an SQL query to print the first three characters of FIRST_NAME from the Worker table.*/
select substring(FIRST_NAME,1,3) as firstname_three_char from Worker;
/* Write an SQL query that fetches the unique values of DEPARTMENT from the Worker table and prints its length.*/
select distinct DEPARTMENT,char_length(DEPARTMENT) as depatment_lenght from Worker;
/* Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.*/
select * from Worker order by FIRST_NAME, DEPARTMENT desc;
/* Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.*/
alter table Worker change DEPARTMENT Admin char(25);
select * from Worker;
/* Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.*/
select * from Worker where SALARY between 100000 and 500000;
/* Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.*/
select concat(FIRST_NAME," ",LAST_NAME) as worker_names, SALARY from Worker where SALARY >=50000 and salary <=100000;
/* Write a sql quary to show only even rows from the worker table.*/
select * from Worker where WORKER_ID%2=0;
/* Write an SQL query to print details of the Workers who joined in Feb’2014.*/
select * from Worker where JOINING_DATE between "2014-02-01" and "2014-02-28";
