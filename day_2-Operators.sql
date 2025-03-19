-- Arithmetic ( + , - , * , / , % )
-- Comparision ( = , != , > , < , >= ,<= )
-- Logical ( and , or , not , in ,between , all , like , any )
-- Bitwise ( & , | )
-- Limit Clause

select * from students where marks+10 > 100;
select * from students where marks-10 < 60;
select * from students where marks/2 > 40;
select * from students where marks%2 = 0;
select * from students where marks%2 != 0;


SELECT 
    *
FROM
    students
WHERE
    marks > 50 AND city = 'Delhi';
    
SELECT 
    *
FROM
    students
WHERE
    marks > 80 OR city = 'pune';
    
    
SELECT 
    *
FROM
    students
WHERE
    marks BETWEEN 70 AND 90;
    
    SELECT 
    name,rollno
FROM
    students
WHERE
    city IN ('Delhi' , 'jhargram','Goa');
    
    SELECT 
    *
FROM
    students
WHERE
    city NOT IN ('delhi' , 'UP');
    
SELECT 
    *
FROM
    students
WHERE
    marks > 80
LIMIT 3;

SELECT 
    *
FROM
    students
ORDER BY city ASC;

SELECT 
    *
FROM
    students
ORDER BY marks DESC;

SELECT 
    *
FROM
    students
ORDER BY name asc;