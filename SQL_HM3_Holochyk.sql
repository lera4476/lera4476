SQL HomeWork 3. Joins

Valeria Holovchyk

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary
from employees
join employee_salary es on employees.id = es.employee_id
join salary s on s.id = es.salary_id;


--2. Вывести всех работников у которых ЗП меньше 2000.
	
select e.employee_name, s.monthly_salary
from employees e 
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where s.monthly_salary < 2000;

-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select  es.employee_id, e.employee_name, s.monthly_salary from employee_salary es 
full JOIN employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
where e.employee_name isnull;

--4.  Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select es.employee_id, e.employee_name, s.monthly_salary from employee_salary es 
full join employees e on es.employee_id = e.id
join salary s  on es.salary_id = s.id 
where e.employee_name isnull and s.monthly_salary <2000

--5. Найти всех работников кому не начислена ЗП.
select es.employee_id, e.employee_name, s.monthly_salary from employee_salary es 
join employees e on es.employee_id = e.id 
full join salary s on es.salary_id = s.id 
where s.monthly_salary isnull;

-- 6. Вывести всех работников с названиями их должности.
select e.employee_name, r.role_name from employees e
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id


--7.  Вывести имена и должность только Java разработчиков.
select e.employee_name, r.role_name from employees e
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '%Java developer%';

--8. Вывести имена и должность только Python разработчиков.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Python developer%';

-- 9.  Вывести имена и должность всех QA инженеров.
select  e.employee_name, r.role_name from employees e 
full join roles_employee re on e.id = re.employee_id 
full join roles r on r.id = re.role_id 
where r.role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Manual QA engineer%';

-- 11. Вывести имена и должность автоматизаторов QA
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '% Automation QA engineer%';

-- 12.Вывести имена и зарплаты Junior специалистов
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.employee_id 
join employee_salary es on es.salary_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior%';

-- 13.Вывести имена и зарплаты Middle специалистов
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.employee_id 
join employee_salary es on es.salary_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.employee_id 
join employee_salary es on es.salary_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select s.monthly_salary, r.role_name  from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where r.role_name like '%Java %'; 

-- 16. Вывести зарплаты Python разработчиков
select s.monthly_salary, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.employee_id = s.id 
where r.role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Junior Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Middle JS%';


-- 19.Вывести имена и зарплаты Senior Java разработчиков
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Senior Java%';

-- 20. Вывести зарплаты Junior QA инженеров
select s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Junior QA%';


-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(s.monthly_salary) as Avg_Junior_Salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Junior%';

-- 22.Вывести сумму зарплат JS разработчиков
select sum(s.monthly_salary) as Sum_JS_Developer from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%JavaScript%';

--23.  Вывести минимальную ЗП QA инженеров
select min(s.monthly_salary) as Min_qa_eng from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%QA%';

-- 24.Вывести максимальную ЗП QA инженеров

select max(s.monthly_salary) as Max_qa_eng from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%QA%';

--25.Вывести количество QA инженеров
select count(re.employee_id) as count_qa from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%QA%';

--26. Вывести количество Middle специалистов
select count(re.employee_id) as count_middle from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Middle%';

--27. Вывести количество разработчиков
select count(re.employee_id) as count_developer from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%developer%';


-- 28.Вывести фонд (сумму) зарплаты разработчиков.
select sum(s.monthly_salary) as sum_developer from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select e.employee_name, r.role_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id
order by s.monthly_salary;

--30.Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where monthly_salary > 1700 and monthly_salary < 2300;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where monthly_salary < 2300;


-- 32.  Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where monthly_salary in (1100, 1500, 2000);
