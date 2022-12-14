// 1. Вывести всех студентов в таблице
select *
from students

// 2. Вывести только Id пользователей
select id 
from students

// 3. Вывести только имя пользователей
select name
from students

// 4. Вывести только email пользователей
select email
from students

// 5. Вывести имя и email пользователей
select name, email
from students

// 6. Вывести id, имя, email и дату создания пользователей
select id, name, email, created_on 
from students 

// 7. Вывести пользователей где password 12333
select *
from students 
where password = '12333'

// 8. Вывести пользователей которые были созданы 2021-03-26 00:00:00
select *
from students 
where created_on = '2021-03-26 00:00:00'

// 9. Вывести пользователей где в имени есть слово Анна
select *
from students 
where name like '%Anna%'

// 10. Вывести пользователей где в имени в конце есть 8
select *
from students 
where name like '%8'

// 11. Вывести пользователей где в имени в есть буква "а"
select *
from students 
where name like '%a%'

// 12. Вывести пользователей которые были созданы 2021-07-12 00:00:00
select *
from students 
where created_on = '2021-07-12 00:00:00'

// 13. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и имеют пароль 1m313
select *
from students 
where created_on = '2021-07-12 00:00:00' and password = '1m313'

// 14. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть слово Andrey
select * 
from students 
where created_on = '2021-07-12 00:00:00' and name like '%Andrey%'

// 15. Вывести пользователей которые были созданы 2021-07-12 00:00:00 и у которых в имени есть цифра 8
select * 
from students 
where created_on  = '2021-07-12 00:00:00' and name like '%8%'

// 16. Вывести пользователя у которых id равен 110
select *
from students 
where id = 110

// 17. Вывести пользователя у которых id равен 153
select *
from students 
where id = 153

// 18. Вывести пользователя у которых id больше 140
select *
from students 
where id > 140

// 19. Вывести пользователя у которых id меньше 130
select *
from students 
where id < 130

// 20. Вывести пользователя у которых id меньше 127 или больше 188
select *
from students 
where id < 127 or id > 188

// 21. Вывести пользователя у которых id меньше либо равно 137
select *
from students 
where id <= 137

// 22. Вывести пользователя у которых id больше либо равно 137
select *
from students 
where id >= 137

// 23. Вывести пользователя у которых id больше 180 но меньше 190
select *
from students 
where id >180 and id < 190

// 24.  Вывести пользователя у которых id между 180 и 190
select *
from students 
where id between 180 and 190

// 25. Вывести пользователей где password равен 12333, 1m313, 123313
select *
from students 
where password in ('12333', '1m313', '123313')

// 26. Вывести пользователей где created_on равен 2020-10-03 00:00:00, 2021-05-19 00:00:00, 2021-03-26 00:00:00
select *
from students 
where created_on in ('2020-10-03 00:00:00', '2021-05-19 00:00:00', '2021-03-26 00:00:00')

// 27. Вывести минимальный id
select min(id)
from students

// 28. Вывести максимальный.
select max(id)
from students 

// 29. Вывести количество пользователей
select count(id)
from students

// 30. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку возрастания даты добавления пользоватлеля.
select id, name, created_on
from students 
order by created_on

// 31. Вывести id пользователя, имя, дату создания пользователя. Отсортировать по порядку убывания даты добавления пользоватлеля.
select id, name, created_on
from students 
order by created_on desc