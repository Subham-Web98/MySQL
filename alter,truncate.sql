-- Alter (change the schemas)

SELECT 
    *
FROM
    students;
    
    
SET SQL_SAFE_UPDATES = 0;

update students
set grade = 'O'
where grade = '';

alter table students 
add column age int not null; 

UPDATE students 
SET 
    age = 20
WHERE
    age = 0;
    
 alter table students
 add column gender varchar (10);
 
 alter table students
 drop column gender;
 
 -- Rename Table 
 -- Change column name
 -- Modify Column (datatype / constraint)
 
 alter table students
 modify column age int not null default 21;
 
 update students
 set age = 21
 where age = 20;
 
 insert into students 
 (rollno,name,marks,grade,city,age)
 values (111, 'Rohan',81 ,'A', 'UP',22);
 
 insert into students 
 (rollno,name,marks,grade,city,age)
 values (112, 'Rohan',81 ,'A', 'UP',100);
 
 delete from students
 where age = 100;
 
 alter table students
 change age student_age int;
 
 alter table students
 rename to Our_Students;
 
 select * from our_students;
 
 
 -- Truncate table 
 
 CREATE TABLE truncate_use (
    id INT PRIMARY KEY,
    student_name VARCHAR(20)
);

insert into truncate_use (id,student_name) values 
(1,'Subham'),
(2,'Rohit'),
(3,'Rahul');

select *from truncate_use;

truncate table truncate_use;
 


