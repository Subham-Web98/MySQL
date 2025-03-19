

alter table our_students
change name full_name varchar(40);


alter table our_students
change rollno Roll_No int ;


SELECT 
    *
FROM
    our_students;

DELETE FROM our_students 
WHERE
    marks <= 60;
    
    
 alter table our_students
 drop column student_age;
 
 
