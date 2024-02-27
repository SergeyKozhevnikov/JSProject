SELECT todo_id, notes, date_time, status, user_id, datecreate
	FROM public."t_TODO" ORDER BY todo_id; -- Вывел результат
	
INSERT INTO public."t_TODO" as todo (notes, date_time, status, user_id, datecreate) 
VALUES 
('Задание 1','2024-02-26 09:55:27','планирование',1, current_timestamp),
('Задание 2','2024-02-24 11:11:27','планирование',2, current_timestamp),
('Задание 3','2023-06-24 12:11:27','планирование',2, current_timestamp),
('Задание 4','2023-05-24 05:11:27','планирование',2, current_timestamp),
('Задание 5','2024-01-24 09:11:27','планирование',1, current_timestamp),
('Задание 6','2024-01-26 15:12:27','планирование',3, current_timestamp),
('Мастер класс по JS','2024.02.25 18:00:00','выполнил',3, current_timestamp); -- Создал новую строку


UPDATE public."t_TODO"
SET date_time = '2024-02-25 15:37:19'
WHERE todo_id = 2;  -- Обновил дату 

UPDATE public."t_TODO"
SET status = 'в работе'
--планирование, отложен, в работе, выполнил
WHERE todo_id = 3; -- Обновил статус

delete FROM public."t_TODO"
WHERE todo_id = 4; -- Удалил строку

	
INSERT INTO public."t_User" as usr (user_name, user_email, user_tell) 
VALUES
('Sergey Kozhevnikov','kozhevnikov.su@gmail.com','+7 (985) 867 04 89'), -- Создал нового пользователя
('Sidor Sidorov','sidor234@gmail.com','+7 (432) 324 02 11'), -- Создал нового пользователя
('Ivan Ivanov','ivan3423@gmail.com','+7 (985) 342 01 32'); -- Создал нового пользователя

SELECT user_id, user_name, user_email, user_tell
FROM public."t_User" order by user_id ;


INSERT INTO public.t_kurs(kurs_id, kurs_name, user_id, todo_id)
VALUES 
(2,'Курс 2', 2, 2),
(3,'Курс 3', 3, 3),
(4,'Курс 4', 1, 4),
(5,'Курс 5', 2, 5),
(6,'Курс 6', 3, 6);

SELECT kurs_id, kurs_name, user_id, todo_id
FROM public."t_kurs" order by kurs_id ;


INSERT INTO public.t_order(
	order_id, product_name, product_count, product_cost, notes, user_id, date_create)
	VALUES 
	(2,'Товар 2', 11, 1223.28,'Описание товара 2', 2,current_timestamp),
	(3,'Товар 3', 12, 6523.12,'Описание товара 3', 3,current_timestamp),
	(4,'Товар 4', 13, 5561.22,'Описание товара 4', 1,current_timestamp),
	(5,'Товар 5', 14, 45233.3,'Описание товара 5', 2,current_timestamp);


SELECT order_id, product_name, product_count, product_cost, notes, user_id, date_create
FROM public.t_order;

