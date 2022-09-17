#В базе данных shop и sample присутствуют одни и те же таблицы, учебной базы данных.
#Переместите запись id = 1 из таблицы shop.users в таблицу sample.users. Используйте транзакции.
START TRANSACTION;
use shop;

INSERT INTO sample.users * FROM shop.users WHERE id = 2;
DELETE FROM shop.users WHERE id = 2;
commit;


#Создайте представление, которое выводит название name товарной позиции из
# таблицы products и соответствующее название каталога name из таблицы catalogs.
DROP VIEW IF EXISTS cat ;
CREATE VIEW cat AS 
SELECT p.name, c.name as 'название каталога' from products p 
JOIN catalogs c ON p.catalog_id = c.id ;


-- Практическое задание по теме “Хранимые процедуры и функции, триггеры"
-- 1. Создайте хранимую функцию hello(), которая будет возвращать приветствие,
-- в зависимости от текущего времени суток. С 6:00 до 12:00 функция должна 
-- возвращать фразу "Доброе утро", с 12:00 до 18:00 функция должна возвращать 
-- фразу "Добрый день", с 18:00 до 00:00 — "Добрый вечер", 
-- с 00:00 до 6:00 — "Доброй ночи".
DELIMITER //

DROP FUNCTION IF EXISTS hello;

CREATE FUNCTION hello ()
RETURNS TEXT DETERMINISTIC
BEGIN
	RETURN CASE
		WHEN "06:00"<=CURTIME() and CURTIME < "12:00"
	THEN "Добрый день"	
		WHEN "12:00"<=CURTIME() and CURTIME < "18:00"
	THEN "Добрый день"	
		WHEN "18:00"<=CURTIME() and CURTIME < "00:00"
	THEN "Добрый вечер"	
		WHEN "00:00"<=CURTIME() and CURTIME < "06:00"
	THEN "Доброй ночи"		
	END//
END//

DELIMITER ;

-- 2. В таблице products есть два текстовых поля: name с названием товара и 
-- description с его описанием. Допустимо присутствие обоих полей или одно из них. 
-- Ситуация, когда оба поля принимают неопределенное значение NULL неприемлема. 
-- Используя триггеры, добейтесь того, чтобы одно из этих полей или оба поля 
-- были заполнены. При попытке присвоить полям NULL-значение необходимо отменить
-- операцию



CREATE TRIGGER description_name_insert BEFORE INSERT ON products FOR EACH ROW 
BEGIN 
	IF product.name IS NULL AND NEW.description IS NULL 
	    THEN SIGNAL SQLSTATE '45001' SET message_text = "products name or desctiption can not be NULL"
	    ELSE IF product.description IS NULL AND NEW.name IS NULL 
	    THEN SIGNAL SQLSTATE '45001' SET message_text = "products name or desctiption can not be NULL"
	    end if;
END
