use shop;
DROP TABLE IF EXISTS catalogs;
create table catalogs(
  id INT unsigned not null,
  name VARCHAR(255) COMMENT 'Название раздела'
) COMMENT 'Названия разделов';
DROP TABLE IF EXISTS users;
create table users(
  id INT unsigned not null,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at VARCHAR(255) COMMENT 'Дата создания аккаунта',
  update_at VARCHAR(255) COMMENT 'Дата обновления записи пользователя'
) COMMENT 'Покупатели';


insert into users(id, name, birthday_at) values (1, 'ALIM', '2001-12-02');
select * from users;

DROP TABLE IF EXISTS products;
create table products (
  id INT unsigned,
  name VARCHAR(255) COMMENT 'Название продукта',
  desription TEXT COMMENT 'Дата рождения',
  price DECIMAL (11, 2) COMMENT 'Цена',
  catalog_id int unsigned
) COMMENT 'Товарные позиции';
DROP TABLE IF EXISTS orders;
create table orders (
  id INT unsigned,
  name VARCHAR(255),
  user_id int unsigned
)COMMENT 'Заказы';
DROP TABLE IF EXISTS orders_products;
create table orders_products (
  id INT unsigned,
  order_id int unsigned,
  product_id int unsigned,
  total INT unsigned default 1
);
DROP TABLE IF EXISTS discounts;
create table discounts (
  id INT unsigned,
  user_id INT unsigned,
  product_id int unsigned,
  discount FLOAT unsigned
);
DROP TABLE IF EXISTS storehouses;
create table storehouses (
  id INT unsigned,
  name VARCHAR(255)
);
DROP TABLE IF EXISTS storehouses_products;
create table storehouses_products (
  id INT unsigned,
  storehouses_id INT unsigned,
  product_id int unsigned,
  value INT unsigned
);
INSERT INTO users(id, name, birthday_at) values (2, 'Max', '2001-06-12');
SELECT * from users;
UPDATE users SET update_at = CURRENT_DATE() WHERE update_at IS NULL ;
UPDATE users SET created_at  = CURRENT_DATE() WHERE created_at IS NULL ;
SELECT * from users;
ALTER TABLE users CHANGE update_at update_at DATETIME DEFAULT NOW() ; 
SELECT * from users;
ALTER TABLE users CHANGE created_at created_at DATETIME DEFAULT NOW() ; 
SELECT * from users;

INSERT INTO storehouses_products values 
(1, 1, 1, 6),
(2, 1, 1, 0),
(3, 1, 1, 4),
(4, 1, 5, 1),
(5, 1, 3, 9),
(6, 1, 3, 0);
SELECT *FROM storehouses_products ORDER BY value = 0, value ASC ;  
SELECT * from users;
INSERT INTO users(id, name, birthday_at) values 
(3, 'Daniil', '1990-06-06'),
(4, 'Marat', '2001-01-02'),
(5, 'Egor', '2005-09-02'),
(6, 'lana', '2019-01-03');
SELECT * from users;
ALTER TABLE users 
    ADD birthday_mounth VARCHAR(31);
UPDATE `users` SET birthday_mounth = 'august' WHERE id = 1;
UPDATE `users` SET birthday_mounth = 'may' WHERE id = 2;
UPDATE `users` SET birthday_mounth = 'october' WHERE id = 3;
UPDATE `users` SET birthday_mounth = 'december' WHERE id = 4;
UPDATE `users` SET birthday_mounth = 'november' WHERE id = 5;
UPDATE `users` SET birthday_mounth = 'febrary' WHERE id = 6;
SELECT * from users;
SELECT * from users WHERE birthday_mounth = 'august' OR birthday_mounth = 'may';

SELECT AVG(to_days(now()) - to_days(birthday_at))/365.5
FROM users ;
