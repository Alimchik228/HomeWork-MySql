#Практическое задание по теме “Управление БД”
#Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.
#Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.
#Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.
#(по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.




DROP DATABASE IF EXISTS example;
CREATE DATABASE example;
USE example; 

CREATE TABLE users(
  id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY;
  #id2 SERIAL, BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
  name VARCHAR(100)
);

#Спроектируйте базу данных, которая позволяла бы организовать
#хранение медиа-файлов, загружаемых пользователем (фото,
#аудио, видео). Сами файлы будут храниться в файловой
#системе, а база данных будет хранить только пути к файлам,
#названия, описания, ключевых слов и принадлежности
#пользователю.

DROP TABLE IF EXISTS media_types;
CREATE TABLE media_types(
  id SERIAL;
  name VARCHAR(255)
);






CREATE media(
  id SERIAL,
  media_type_id BIGINT UNIGNED NOT NULL,
  user_id BIGINT UNSIGNED NOT NULL,
  body VARCHAR(255),
  #file BLOB,
  filename VARCHAR(255),
  metadata JSON,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (media_type_id) REFERENCES media_types(id)


);