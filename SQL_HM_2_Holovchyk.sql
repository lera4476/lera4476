SQL_DDL_Joins

Homework_2

Valeria Holovchyk 

--1. Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees (
    id serial primary key,
    employee_name varchar(50) not null
);


 --2. Наполнить таблицу employee 70 строками
insert into employees
values (default, 'Valeria Holovchyk');
create table employees;

--3.Создать таблицу salary
--id. Serial  primary key,
--monthly_salary. Int, not null

create table salary (
		id serial  primary key,
		monthly_salary int not null
);


--4.Наполнить таблицу salary 15 строками:

insert into salary (id, monthly_salary)
values (default, 1000);


--5. Создать таблицу employee_salary
--id. Serial  primary key,
--employee_id. Int, not null, unique
--salary_id. Int, not null


create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--6. Наполнить таблицу employee_salary 40 строками:
  --в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (id, employee_id, salary_id)
values (default,100,6)

insert into employee_salary (id, employee_id, salary_id)
values (default,51,6)


--7. Создать таблицу roles
  --id. Serial  primary key,
   --role_name. int, not null, unique


create table roles (
	id serial  primary key,
	role_name int not null unique
);


--8. Поменять тип столба role_name с int на varchar(30)

	alter table roles 
	alter column role_name type varchar(30)
	using role_name::integer;

--9. Наполнить таблицу roles 20 строками:
	 
	insert into roles (id, role_name)
	values (default, 'Junior Python developer');

--10.  Создать таблицу roles_employee

	create table  roles_employee (
		id serial  primary key,
		employee_id int not null unique,
		role_id Int not null,
		foreign key (employee_id)
			references employees (id),
		foreign key (role_id)
			references roles (id)
);


--11.Наполнить таблицу roles_employee 40 строками:
	
	insert into roles_employee (id, employee_id, role_id)
	values (default, 7,2);