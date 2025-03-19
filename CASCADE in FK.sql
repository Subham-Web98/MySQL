-- CASCADING



CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);
 
 insert into departments (id,name)
 values 
 (101, 'English'),
 (102,'Geography'),
 (103,'Math'),
 (104,'Histroy');
 
 SET SQL_SAFE_UPDATES = 0;

 
 SET SQL_SAFE_UPDATES = 0;

 
 UPDATE departments 
SET 
    id = 105
WHERE
    id = 001;
 
 SET SQL_SAFE_UPDATES = 0;

 
 UPDATE departments 
SET 
    name = 'Coding'
WHERE
    name = 'Math';
 
 SELECT 
    *
FROM
    departments;
 
 CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department_id INT NOT NULL,
    FOREIGN KEY (department_id)
        REFERENCES departments (id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

insert into teachers (id, name,department_id) values 
(101, 'Subham',103),
(102,'Polo',101),
(103,'Rajnandini','102'),
(104,'Rohit',103);

SELECT 
    *
FROM
    teachers;
