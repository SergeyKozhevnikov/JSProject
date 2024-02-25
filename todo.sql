CREATE TABLE "TABLE_TODO"
(
	todo_id integer NOT NULL   DEFAULT NEXTVAL(('"table_todo_todo_id_seq"'::text)::regclass),
	note text NULL,
	date_time time without time zone NULL,
	status varchar(50) NULL,	-- планирование, отложен, в работе, выполнил
	author varchar(50) NULL,
	datecreate timestamp without time zone NULL
)
-- EA_PLACEHOLDER:; --Создал таблицу
CREATE SEQUENCE table_todo_todo_id_seq INCREMENT 1 START 1
--Создал автогенерацию ключа
ALTER TABLE "TABLE_TODO" ADD CONSTRAINT "PK_Table TODO"
	PRIMARY KEY (todo_id)
-- EA_PLACEHOLDER:; -- Создал ключ


INSERT INTO public."TABLE_TODO" as todo (note, date_time, status, author,datecreate) 
VALUES ('Сделать задание №2','2022-02-25 09:15:27','планирование','Sergey Kozhevnikov', now()); -- Создал новую строку

INSERT INTO public."TABLE_TODO" as todo (note, date_time, status, author,datecreate) 
VALUES ('Мастер класс по JS №2','2024.02.26 18:00:00','планирование','Sergey Kozhevnikov', current_timestamp); -- Создал новую строку

UPDATE public."TABLE_TODO"
SET date_time = '2024-02-25 15:37:19.723985'
WHERE todo_id = 1;  -- Обновил дату 

UPDATE public."TABLE_TODO"
SET status = 'выполнил'
--планирование, отложен, в работе, выполнил
WHERE todo_id = 1; -- Обновил статус

delete FROM public."TABLE_TODO"
WHERE todo_id = 4; -- Удалил строку

SELECT todo_id, note, date_time, status, author, datecreate
FROM public."TABLE_TODO" ORDER BY todo_id; -- Вывел результат

	
	