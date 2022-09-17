use shop;
drop table if exists catalogs;
create table catalogs(
  id INT unsigned not null AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела'
) COMMENT 'Названия разделов';

drop table if exists users;
create table users(
  id INT unsigned not null,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания аккаунта',
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP on update current_timestamp COMMENT 'Дата обновления записи пользователя'
) COMMENT 'Покупатели';

#Пусть в таблице catalogs базы данных shop в строке name могут
#находиться пустые строки и поля принимающие значение NULL.
#Напишите запрос, который заменяет все такие поля на строку
#‘empty’. Помните, что на уроке мы установили уникальность на
#поле name. Возможно ли оставить это условие? Почему?

INSERT INTO catalogs ( name) values ('Одежда');

INSERT INTO catalogs ( name) values (null);

INSERT INTO catalogs ( name) values (null);

UPDATE catalogs SET name = 'empty' WHERE name is null;  

select * from catalogs;

drop table if exists products;
create table products (
  id INT unsigned not null,
  name VARCHAR(255) COMMENT 'Название продукта',
  desription TEXT COMMENT 'описание',
  price DECIMAL (11, 2) COMMENT 'Цена',
  catalog_id int unsigned,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания аккаунта',
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP on update current_timestamp COMMENT 'Дата обновления записи пользователя'
) COMMENT 'Товарные позиции';

drop table if exists orders;
create table orders (
  id INT unsigned not null,
  name VARCHAR(255),
  user_id int unsigned,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания аккаунта',
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP on update current_timestamp COMMENT 'Дата обновления записи пользователя'
)COMMENT 'Заказы';

drop table if exists orders_products;
create table orders_products (
  id INT unsigned not null,
  order_id int unsigned,
  product_id int unsigned,
  total INT unsigned default 1,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания аккаунта',
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP on update current_timestamp COMMENT 'Дата обновления записи пользователя'
);

drop table if exists discounts;
create table discounts (
  id INT unsigned not null,
  user_id INT unsigned,
  product_id int unsigned,
  discount FLOAT unsigned,
  started_at DATETIME,
  finished_at DATETIME,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания аккаунта',
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP on update current_timestamp COMMENT 'Дата обновления записи пользователя'
);

drop table if exists storehouses;
create table storehouses (
  id INT unsigned not null,
  name VARCHAR(255),
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания аккаунта',
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP on update current_timestamp COMMENT 'Дата обновления записи пользователя'
);

drop table if exists storehouses__products;
create table storehouses__products (
  id INT unsigned not null,
  storehouses_id INT unsigned,
  product_id int unsigned,
  value INT unsigned,
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Дата создания аккаунта',
  update_at DATETIME DEFAULT CURRENT_TIMESTAMP on update current_timestamp COMMENT 'Дата обновления записи пользователя'
);