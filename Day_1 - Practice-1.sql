CREATE TABLE programming_languages (
    ID INT PRIMARY KEY,
    Language VARCHAR(50) NOT NULL UNIQUE
);

insert into programming_languages 
(ID,Language)
values
(101, "Javascript"),
(102,"Python"),
(103,"C++"),
(104,"Go Lang"),
(105,"Java");
select * from programming_languages  ORDER BY ID ASC ;

insert into programming_languages values (106 , "SQL");
insert into programming_languages values (107 , "C#");

-- Question_1

create table company_1(
id int primary key,
name varchar(50),
salary int not null
);

insert into company_1 
(id,name,salary) 
values
(1,"Adam",25000),
(2,"Suman",30000),
(3,"Aniket",45000);

select * from company_1;












