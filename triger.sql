create database if not exists company;
use company;

drop table if exists employees;

create table employees(
id int auto_increment primary key,
name varchar(50) not null,
department varchar(50) not null,
salary decimal(10,2) not null

);


delimiter //
 create trigger update_deparetment
 before insert on employees
 for each row
 begin
 if new.salary>=5000 then
 set new.department ='Mângement';
 elseif new.salary>=3000 then
 set new.department ='Sales';
 else
 set new.department ='Support';
 end if;
 end //
 delimiter ;
 
 insert into employees(name,department, salary)
 values               ('john','A',3500),
                       ('jane smith ','A',2000),
                       ('David Johnson', 'A', 6000);
                       
                       select * from employees;