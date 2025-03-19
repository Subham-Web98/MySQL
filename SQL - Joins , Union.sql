
-- SQL Joins

SELECT 
    *
FROM
    departments;

SELECT 
    *
FROM
    teachers;

    
create database Join_method;
use Join_method;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(30)
);

insert into students 
(student_id,name)
values 
(101, 'Adam'),
(102,'Bob'),
(103,'Casey');

CREATE TABLE courses (
    student_id INT PRIMARY KEY,
    course VARCHAR(20)
);

insert into courses 
(student_id,course)
values
(101,'BCA'),
(102,'BBA'),
(103,'Btech'),
(104,'BSC'),
(105,'Bcom');

SET SQL_SAFE_UPDATES = 0;

update courses
set student_id = 100
where student_id = 101;

SELECT 
    *
FROM
    students;
    
    
SELECT 
    *
FROM
    courses;
    
-- Inner Joins

SELECT 
    *
FROM
    students
        INNER JOIN
    courses ON students.student_id = courses.student_id;
    
-- alias (alternamte name)
    
  SELECT 
    *
FROM
    students AS stu
        INNER JOIN
    courses AS crs
    ON stu.student_id = crs.student_id;  
    
    
-- Left Joins    
    
SELECT 
    *
FROM
    students AS stu -- table a
        LEFT JOIN
    courses AS crs  -- table b
    ON stu.student_id = crs.student_id;  
    
    
-- Right Jions
 
 SELECT 
    *
FROM
    students AS stu
        RIGHT JOIN
    courses AS crs
    ON stu.student_id = crs.student_id;  
    
-- Full Join / Union

SELECT 
    *
FROM
    students AS stu
        LEFT JOIN
    courses AS crs ON stu.student_id = crs.student_id 
UNION 
SELECT 
    *
FROM
    students AS stu
        RIGHT JOIN
    courses AS crs ON stu.student_id = crs.student_id;
    

-- Left Exclusive Join

SELECT 
    *
FROM
    students AS stu
        LEFT JOIN
    courses AS crs
    ON stu.student_id = crs.student_id
   WHERE
    crs.student_id IS NULL;
    
-- Right Exclusive Join

SELECT 
    *
FROM
    students AS stu
        RIGHT JOIN
    courses AS crs
    ON stu.student_id = crs.student_id
WHERE
    stu.student_id IS NULL;
    
 -- Full exclusive joins

SELECT 
    *
FROM
    students AS stu
        LEFT JOIN
    courses AS crs 
    ON stu.student_id = crs.student_id
WHERE
    crs.student_id IS NULL 
UNION 
SELECT 
    *
FROM
    students AS stu
        RIGHT JOIN
    courses AS crs 
    ON stu.student_id = crs.student_id
WHERE
    stu.student_id IS NULL;
    
    -- Self Joins
 
 CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

insert into employee (id,name , manager_id)
values
(101,'Adam' , 103),
(102,'Bob',104),
(103,'Casey',Null),
(104,'Donald',103);

select * from employee;

SELECT 
    *
FROM
    employee AS a
        JOIN
    employee AS b ON a.id = b.manager_id;
 
 
 SELECT 
    a.name AS manger_name, b.name
FROM
    employee AS a
        JOIN
    employee AS b ON a.id = b.manager_id;

-- Union
 SELECT 
    name
FROM
    employee 
UNION
SELECT 
    name
FROM
    employee;
    
SELECT 
    name
FROM
    employee 
UNION ALL
SELECT 
    name
FROM
    employee;
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    