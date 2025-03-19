-- Having Clause 

SELECT 
    COUNT(rollno), city
FROM
    students
GROUP BY city
having max(marks) > 90;


SELECT 
    *
FROM
    students;

-- General Order 
-- 1. Select (columns)
-- 2. From (table_name)
-- 3. Where (condition)
-- 4. Group By (columns)
-- 5. Having (condition)
-- 6. Order By (columns) ASC;



SELECT 
    city, COUNT(rollno)
FROM
    students
WHERE
    marks > 60
GROUP BY city
HAVING city != 'Mumbai'
ORDER BY city DESC;

-- Update 

set sql_safe_updates = 0;

UPDATE students 
SET 
    name = 'Bijay'
WHERE
    name = 'Bijoy';
    
UPDATE students 
SET 
    marks = marks + 5;
    
UPDATE students 
SET 
    marks = marks - 5
WHERE
    marks > 100;

-- Delete

DELETE FROM students 
WHERE
    name = 'Bijay';
    
select * from students;




