// 1. Первая часть.

Таблица employees

Создать таблицу employees
- id. serial,  primary key,
- employee_name. Varchar(50), not null
Наполнить таблицу employee 70 строками.


create table employees(
id serial primary key,
employee_name varchar(50) not null)


insert into employees(employee_name)
values ('ilya_1'),
       ('ilya_2'),
       ('ilya_3'),
       ('ilya_4'),
       ('ilya_5'),
       ('ilya_6'),
       ('ilya_7'),
       ('ilya_8'),
       ('ilya_9'),
       ('ilya_10'),
       ('ilya_11'),
       ('ilya_12'),
       ('ilya_13'),
       ('ilya_14'),
       ('ilya_15'),
       ('ilya_16'),
       ('ilya_17'),
       ('ilya_18'),
       ('ilya_19'),
       ('ilya_20'),
       ('ilya_21'),
       ('ilya_22'),
       ('ilya_23'),
       ('ilya_24'),
       ('ilya_25'),
       ('ilya_26'),
       ('ilya_27'),
       ('ilya_28'),
       ('ilya_29'),
       ('ilya_30'),
       ('ilya_31'),
       ('ilya_32'),
       ('ilya_33'),
       ('ilya_34'),
       ('ilya_35'),
       ('ilya_36'),
       ('ilya_37'),
       ('ilya_38'),
       ('ilya_39'),
       ('ilya_40'),
       ('ilya_41'),
       ('ilya_42'),
       ('ilya_43'),
       ('ilya_44'),
       ('ilya_45'),
       ('ilya_46'),
       ('ilya_47'),
       ('ilya_48'),
       ('ilya_49'),
       ('ilya_50'),
       ('ilya_51'),
       ('ilya_52'),
       ('ilya_53'),
       ('ilya_54'),
       ('ilya_55'),
       ('ilya_56'),
       ('ilya_57'),
       ('ilya_58'),
       ('ilya_59'),
       ('ilya_60'),
       ('ilya_61'),
       ('ilya_62'),
       ('ilya_63'),
       ('ilya_64'),
       ('ilya_65'),
       ('ilya_66'),
       ('ilya_67'),
       ('ilya_68'),
       ('ilya_69'),
       ('ilya_70')

	   
// Таблица salary

Создать таблицу salary
- id. Serial  primary key,
- monthly_salary. Int, not null
Наполнить таблицу salary 15 строками:
- 1000
- 1100
- 1200
- 1300
- 1400
- 1500
- 1600
- 1700
- 1800
- 1900
- 2000
- 2100
- 2200
- 2300
- 2400
- 2500


create table salary(
id serial primary key,
monthly_salary int not null)

insert into salary(monthly_salary)
values (1000),
       (1100),
       (1200),
       (1300),
       (1400),
       (1500),
       (1600),
       (1700),
       (1800),
       (1900),
       (2000),
       (2100),
       (2200),
       (2300),
       (2400),
       (2500)
	   
	   
// Таблица employee_salary

Создать таблицу employee_salary
- id. Serial  primary key,
- employee_id. Int, not null, unique
- salary_id. Int, not null
Наполнить таблицу employee_salary 40 строками:
- в 10 строк из 40 вставить несуществующие employee_id


create table employee_salary(
id serial primary key,
employees_id int not null unique,
salary_id int not null)

insert into employee_salary(employees_id, salary_id)
values (1,7),
       (2,4),
       (3,9),
       (4,13),
       (5,4),
       (6,2),
       (7,10),
       (8,13),
       (9,4),
       (10,1),
       (11,7),
       (12,8),
       (13,9),
       (14,14),
       (15,1),
       (16,3),
       (17,2),
       (18,5),
       (19,5),
       (20,4),
       (21,12),
       (22,14),
       (23,11),
       (24,7),
       (25,1),
       (26,7),
       (27,8),
       (28,6),
       (29,11),
       (30,2),
       (300,1),
       (310,2),
       (320,3),
       (330,4),
       (340,5),
       (350,6),
       (360,7),
       (370,8),
       (380,9),
       (390,10),
       (400,11)


// Таблица roles

Создать таблицу roles
- id. Serial  primary key,
- role_name. int, not null, unique
Поменять тип столба role_name с int на varchar(30)
Наполнить таблицу roles 20 строками:

id
role_name
1
Junior Python developer
2
Middle Python developer
3
Senior Python developer
4
Junior Java developer
5
Middle Java developer
6
Senior Java developer
7
Junior JavaScript developer
8
Middle JavaScript developer
9
Senior JavaScript developer
10
Junior Manual QA engineer
11
Middle Manual QA engineer
12
Senior Manual QA engineer
13
Project Manager
14
Designer
15
HR
16
CEO
17
Sales manager
18
Junior Automation QA engineer
19
Middle Automation QA engineer
20
Senior Automation QA engineer


create table roles(
id serial primary key,
role_name varchar(30) not null unique)

insert into roles(role_name)
values ('Junior_Python_developer'),
       ('Middle_Python_developer'),
       ('Senior_Python_developer'),
       ('Junior_Java_developer'),
       ('Middle_Java_developer'),
       ('Senior_Java_developer'),
       ('Junior_JavaScript_developer'),
       ('Middle_JavaScript_developer'),
       ('Senior_JavaScript_developer'),
       ('Junior_Manual_QA_engineer'),
       ('Middle_Manual_QA_engineer'),
       ('Senior_Manual_QA_engineer'),
       ('Project_Manager'),
       ('Designe'),
       ('HR'),
       ('CEO'),
       ('Sales_manager'),
       ('Junior_Automation_QA_engineer'),
       ('Middle_Automation_QA_engineer'),
       ('Senior_Automation_QA_engineer')


// Таблица roles_employee

Создать таблицу roles_employee
- id. Serial  primary key,
- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
Наполнить таблицу roles_employee 40 строками:

id         employee_id        role_id
1              7                 2
20             2                 4 
3              3                 9
5              4                 13 
23             5                 4
11             6                 2
10             7                 9
22             8                 13
21             9                 3  
34             10                4  
6              11                7  
...            ...              ...


create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key ( employee_id)
      references employees(id),
foreign key (role_id)
      references roles(id)
)

insert into roles_employee(employee_id, role_id)
values (1,2),
       (2,4),
       (3,9),
       (4,13),
       (5,4),
       (6,2),
       (7,9),
       (8,13),
       (9,3),
       (10,4),
       (11,7),
       (12,9),
       (13,10),
       (14,6),
       (15,3),
       (16,6),
       (17,1),
       (18,4),
       (19,5),
       (20,10),
       (21,11),
       (22,19),
       (23,17),
       (24,20),
       (25,12),
       (26,17),
       (27,13),
       (28,10),
       (29,19),
       (30,14),
       (31,12),
       (32,18),
       (33,13),
       (34,2),
       (35,7),
       (36,8),
       (37,9),
       (38,15),
       (39,11),
       (40,12)	   