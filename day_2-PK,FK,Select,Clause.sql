create database day_2;
use day_2;

-- SQL constraints :-
-- 1 . NOT NULL
-- 2 . UNIQUE
-- 3 . PRIMARY KEY
-- 4 . CHECK


-- Foreign key

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50)
);

insert into employee values (1, "subham","jhargram");
SELECT 
    *
FROM
    employee;
 
 CREATE TABLE pk_table (
    id INT,
    fname VARCHAR(50),
    PRIMARY KEY (id)
);
insert into pk_table values (001, "Rajnandini");
select fname from pk_table;

create table combo_pk (
id int,
name varchar(50),
city varchar(50),
job varchar(50),
salary int not null ,
primary key (id,salary)  -- combination is not same (unique)
);

insert into combo_pk values (001,'Deep', 'kolkata','web developer',45000);

select * from combo_pk;

create table default_val (
id int primary key ,
name varchar(50),
salary int default 30000
);

insert into default_val
 (id,name, salary) 
values
 (101,'Raja' ,45000),
 (102,'Rajnadini',50000),
 (103,'John', 12000);
 
 insert into default_val (id,name) values (104,'Deep');
 
 select *from default_val;
 
 create table check_constraint (
 id int primary key,
 name varchar(50),
 age int ,
 constraint age_check check (age <=18)
 );
 
 insert into check_constraint values (101,'Subham',16);
 select *from check_constraint;
 
 
 create database sample_database;
 use sample_database;
 
 CREATE TABLE students (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

insert into students 
(rollno, name, marks,grade,city)
values
(101,'Subham',75,'A','Jhargram'),
(102,'Anil',93,'O','Pune'),
(103,'Chetan',85,'E','Mumbai'),
(104,'Dhruv',25,'F','Mumbai'),
(105,'Frhan',50,'C','Delhi'),
(106,'Rohit',62,'B','Delhi');
 
 select *from students;
 select name,rollno,marks from students;
 
 select * from students where marks >70;
 select *from students where city = 'Delhi' and grade ='C';
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 