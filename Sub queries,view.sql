-- Sub queries

SELECT 
    *
FROM
    our_students;

-- 1st step 
SELECT 
    AVG(marks)
FROM
    our_students;
    
 -- 2nd step   
 SELECT 
    full_name, marks
FROM
    our_students
WHERE
    marks > 85.50;
    
    
-- -- -- 

SELECT 
    full_name, marks
FROM
    our_students
WHERE
    marks > (SELECT 
            AVG(marks)
        FROM
            our_students);
    

SELECT 
    Roll_No, full_name
FROM
    our_students
WHERE
    Roll_No % 2 = 0;



SELECT 
    full_name , Roll_No
FROM
    our_students
WHERE
    Roll_No IN (
        SELECT 
            Roll_No
        FROM
            our_students
        WHERE
            Roll_No % 2 = 0);
            

SELECT 
    *
FROM
    our_students
WHERE
    city = 'Jhargram';
    
SELECT 
    MAX(marks)
FROM
    (SELECT 
        *
    FROM
        our_students
    WHERE
        city = 'jhargram') as max_in_Jhargram;
        
-- views

CREATE VIEW class_student AS
    SELECT 
        Roll_No, marks, full_name
    FROM
        our_students;

SELECT 
    *
FROM
    class_student;
    
drop view class_student;
        
        
    