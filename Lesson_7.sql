INSERT INTO orders(id, user_id, name) VALUES 
(1, 1, 'магнитофон'),
(2, 2, 'комп'),
(3, 2, 'проц'),
(4, 3, 'уборщица'),
(5, 4, 'пылесос'),
(6, 2, 'хата');
#Составьте список пользователей users, 
#которые осуществили хотя бы один
#заказ orders в интернет магазине
SELECT count(*) ,
user_id,
(SELECT name from users WHERE id = user_id ) as name
    
from orders
group by user_id;

INSERT INTO catalogs (id, name) VALUES 
(1, 'Компьютеры'),
(2, 'игрушки'),
(3, 'хаты');

INSERT INTO products (id, name, desription, price, catalog_id) VALUES 
(1, 'Asus', 'четкий комп', 223344.22, 1),
(2,  'Aser', 'тоже ничего четкий комп', 44344.22, 1),
(3, 'пентхаус', 'норм домик', 223333344.22, 3);
#Выведите список товаров products 
#и разделов catalogs, который 
#соответствует товару.
SELECT id, name, price,
(SELECT name from catalogs WHERE id = catalog_id) 
from products;