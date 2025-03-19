-- Aggregate Functions
-- Count() , max () , min () , sum () , avg () 
 
 SELECT 
    MAX(marks)
FROM
    students;
    
    
    
  SELECT 
    MIN(marks)
FROM
    students;
   
   
   
 SELECT 
    SUM(marks)
FROM
    students;
    
    
    
 SELECT 
    AVG(marks)
FROM
    students;
    
    
    
     SELECT 
    COUNT(rollno)
FROM
    students;
    
-- Group By
    
SELECT 
    city, COUNT(rollno)
FROM
    students
GROUP BY city;



SELECT 
    city, avg(marks)
FROM
    students
GROUP BY city 
order by avg(marks) desc;


    
