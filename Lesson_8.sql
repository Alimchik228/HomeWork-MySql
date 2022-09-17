#Пусть задан некоторый пользователь.
#Из всех пользователей соц. сети найдите человека, 
#который больше всех общался с выбранным пользователем 
#(написал ему сообщений).
SELECT count(*) as 'кол. сообщений',
       from_user_id,
       concat(u.firstname, ' ', u.lastname) as name
       from messages m
JOIN users u on u.id = m.from_user_id
WHERE to_user_id = 1
GROUP BY from_user_id
ORDER BY count(*) DESC 
LIMIT 1;

#Подсчитать общее количество лайков, которые получили 
#пользователи младше 10 лет..
SELECT count(*) as 'кол. лайков',
       l.user_id,
       concat(u.firstname, ' ', u.lastname) as name
       from likes l 
JOIN users u on u.id = l.user_id
JOIN profiles p on p.user_id = l.user_id 
WHERE TIMESTAMPDIFF(YEAR, p.birthday , now())<10
GROUP BY l.user_id
ORDER BY count(*) DESC 
;
#Определить кто больше поставил лайков (всего):
#мужчины или женщины.

SELECT count(*) as 'кол. лайков',
      
       p.gender
       from likes l 
JOIN profiles p on p.user_id = l.user_id 
GROUP BY p.gender 
ORDER BY count(*) DESC 




