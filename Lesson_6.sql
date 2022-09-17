#Пусть задан некоторый пользователь. Из всех пользователей соц. 
#сети найдите человека, который больше
#всех общался с выбранным пользователем (написал ему сообщений).
SELECT count(*),
       from_user_id,
       to_user_id = 1
from messages
group by from_user_id 
order by count(*) DESC ;

SELECT * from messages;


#Подсчитать общее количество лайков, 
#которые получили пользователи младше 10 лет..
SELECT count(*), 
       user_id = 
       (SELECT user_id from profiles WHERE TIMESTAMPDIFF(YEAR, birthday, now()) < 10) 
from likes
group by user_id
order by count(*) DESC ;

SELECT user_id ,TIMESTAMPDIFF(YEAR, birthday, now())
   
from profiles
WHERE TIMESTAMPDIFF(YEAR, birthday, now()) < 10;
#Определить кто больше поставил лайков (всего): мужчины или женщины.
SELECT count(*)
from likes
group by user_id = 
(SELECT user_id from profiles WHERE gender = 'm') 
or
user_id = 
(SELECT user_id from profiles WHERE gender = 'w')  
order by count(*) DESC ;