CREATE TABLE payment_data (
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(40) NOT NULL,
    city VARCHAR(20)
);

insert into payment_data 
(customer_id,customer,mode,city)
values 
(1, 'John Doe', 'CreditCard', 'New York'),
    (2, 'Jane Smith', 'NetBanking', 'Los Angeles'),
    (3, 'Michael Johnson', 'DebitCard', 'Chicago'),
    (4, 'Emily Davis', 'CreditCard', 'Houston'),
    (5, 'Daniel Brown', 'NetBanking', 'Phoenix'),
    (6, 'Sophia Wilson', 'DebitCard', 'Philadelphia'),
    (7, 'Liam Martinez', 'CreditCard', 'San Antonio'),
    (8, 'Olivia Anderson', 'NetBanking', 'San Diego'),
    (9, 'James Thomas', 'DebitCard', 'Dallas'),
    (10, 'Emma White', 'CreditCard', 'San Jose');
    
select * from payment_data;    

select mode , count(mode)
from payment_data
group by mode;


select grade ,count(rollno) 
from students
group by grade ;



insert into students values (107, 'Jojo',72,'A','Jhargram');
insert into students values (108, 'Bijoy',94,'O','Mumbai');

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    