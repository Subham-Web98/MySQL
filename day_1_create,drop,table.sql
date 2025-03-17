CREATE DATABASE day_1;
CREATE DATABASE temp1;
drop database if exists temp1;
DROP DATABASE 	temp1;

create database college;
create database if not exists college;

use college;

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

insert into students values (1,"Subham",26);
insert into students values (2,"Rajnandini",21);
insert into students values (3,"Polo",21);

select * from students; -- database table name 
show databases;
show tables;
 
 
 -- all types of datatypes -- 
 -- CHAR -->FIX (50)
 -- VARCHAR --> VARIABLES (50)
 -- BLOB --> (1000) - STRINGS
 -- INT --> (-100CR TO 100CR)
 -- TINYINT (-128 TO 127)
 -- BIGINT 
 -- BIT 
 -- FLOAT (Decimal values)--(23 digits)
  -- DOUBLE (Decimal values)--(24 TO 53 digits)
  -- BOOLEAN (0 OR 1) (TINYINT)
  -- DATE 
  -- YEAR
  
  
  -- Signed & Unsigned
  -- TINYINT UNSIGNED (0 - 255) --> Positive values
  -- TINYINT (-128 TO 127)
  
-- TYPE OF SQL COMMANDS
-- DDL (Data Defination Language ) --> create , alter ,rename ,truncate & drop
-- DQL (Data Quary Language) --> select
-- DML (Data Manipulation Language) --> insert ,update , delete
-- DCL (Data Control Language) --> 	grant & revoke permission to users
-- TCL  (Transaction Control Language) --> start transaction , commit , rollback ...
 
 
 
 
 
 
 
 




