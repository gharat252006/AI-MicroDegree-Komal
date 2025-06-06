create database employee_management;

use employee_management;

create table employees(
employee_id int auto_increment primary key,
name varchar(100) not null,
depertment varchar(50),
salary decimal(10, 2),
hire_date date,
created_at timestamp default current_timestamp
);

insert into employees (name, depertment, salary, hire_date)
values
	('Komal Gharat', 'Finance', 75000, '2020-06-15'),
	('Mansi Patil', 'IT', 45000, '2020-04-10'),
	('Aaku Patil', 'HR', 55000, '2020-03-17'),
	('Bhavika Bhoir', 'sales', 62000, '2020-11-25');
    
select * from employees;



create view high_salary_employees as
select employee_id, name, depertment, salary
from employees
where salary > 50000;


select * from high_salary_employees;


select * from high_salary_employees;


select * from high_salary_employees;


select * from high_salary_employees where depertment = 'Finance';


DELIMITER $$

CREATE PROCEDURE GetEmployeesByDepertment(IN dept_name VARCHAR(50))
BEGIN
select employee_id, name, salary
from employees
where department = dept_name;

END$$

DELIMITER ;

CALL GetEmployeesByDepertment('HR');


CALL GetEmployeesByDepartment('Finace');



DELIMITER $$


create function GetAverageSalary()
returns decimal(10, 2)
deterministic
begin
declare avg_salary decimal(10, 2);
select avg(salary) into avg_salary from employees;
return avg_salary;
end$$

DELIMITER ;


SELECT GetAverageSalary() as average_salary;




























