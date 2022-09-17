#ДОБАВИЛ ДВЕ характеристики в user age и is_active

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY, 
    firstname VARCHAR(50),
    lastname VARCHAR(50) COMMENT 'Фамиль', -- COMMENT на случай, если имя неочевидное
    email VARCHAR(120) UNIQUE,
 	password_hash VARCHAR(100), -- 123456 => vzx;clvgkajrpo9udfxvsldkrn24l5456345t
 	age INT,
 	is_active BOOLEAN DEFAULT TRUE,
 	
	phone BIGINT UNSIGNED UNIQUE, 
	
    INDEX users_firstname_lastname_idx(firstname, lastname)
) COMMENT 'юзеры';


SELECT DISTINCT firstname from users;
UPDATE users SET is_active = FALSE WHERE age < 18;
SELECT firstname ,lastname ,age, is_active from users;
SELECT * from messages;
DELETE FROM messages WHERE created_at > '2022-06-18';
SELECT * from messages;

А тут данные

use vk;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('1', 'Shanie', 'Ledner', 'franz61@example.org', '89bff7f9846c20dc70bdf0e4939dcaf0c719c8fa', '89117761995','12');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('2', 'Jaleel', 'McGlynn', 'lesch.wade@example.com', 'cf48a6c5060181f96b846e5df30287a4d9339c70', '89484346214','21');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('3', 'Jessica', 'Jacobson', 'mattie87@example.com', '8021514b0c448cf855805afa0ea5794c70037396', '89064230512','44');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('4', 'Claudia', 'Rohan', 'ovandervort@example.com', '3f0e14217218160e9d39eb85f4f9fcf9c3e593d7', '89732323599','10');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('5', 'Perry', 'Howell', 'arvel57@example.net', '78bfa144549ac8991837e26c1adc17d4f23c81a4', '89955624130','17');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('6', 'Milton', 'Boyer', 'pamela25@example.org', '4c7d775f27992b4331609216d72b78f2418d7b37', '89841406082','16');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('7', 'Duncan', 'Reinger', 'dean.breitenberg@example.org', 'd3dc3992db65c71d5bfc0e5e740a62d11c2952bd', '89722506915','22');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('8', 'Loma', 'Okuneva', 'bahringer.ramona@example.org', '024221ecd007428a7b3b7ac5c5dc7bd7977666f3', '89082510870','77');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('9', 'Rose', 'Davis', 'estefania.stracke@example.com', 'b38ca37ba3cdef3b3a2774fa86178893acdd4294', '89138288498','13');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('10', 'Alverta', 'Anderson', 'beulah.abshire@example.org', 'a00252fba230f33f8b0871e512687dd685cc5516', '89376611298','27');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('11', 'Ellie', 'Reynolds', 'conroy.steve@example.net', '6f0270adcbe0c6a86f9045c6a53d9b65a7d547b0', '89465626074','18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('12', 'Jerrell', 'Lynch', 'wkuhn@example.org', 'cffc61eb0ba1299ecd0e7c3f1592c23cc3043151', '89221551084','21');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('13', 'Myrtice', 'Franecki', 'jaskolski.christy@example.org', 'c5a0e4a333dc0760e7f448cb01830e03ef9cfbba', '89169593551','29');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('14', 'Sigurd', 'Crist', 'mosciski.tyreek@example.org', '76f2abcddc1ad9feefb57c1249db2c80c21faa06', '89834656844','15');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('15', 'Zola', 'Rath', 'eulah29@example.org', '66d7b99a03a23a5a2cbf52ed5ac2088c3acfc4c8', '89060620472','18');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('16', 'Josianne', 'Mraz', 'bosco.donnie@example.com', 'f05042a308fbd1535e76acfa5dc701b02d085091', '89395688558','31');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('17', 'Brennan', 'Frami', 'jdibbert@example.net', '8252b7f676cfb4f21f62193dc475283640efd781', '89843798577','91');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('18', 'Lora', 'Bernier', 'maxie86@example.org', '3173b68a539e7cb3d7a0ceabb2b782a518ff357b', '89022962346','11');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('19', 'Alfredo', 'Daniel', 'gorczany.alda@example.com', '5e7be22929387b924f4f69bf7f80aa10202dcda1', '89388960251','23');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`,`age`) VALUES ('20', 'Alanna', 'Hermann', 'dixie.harris@example.org', '41ed6a6c6859925a242dda771d5448f6fe63b411', '89227365684','20');
 
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('1', 'illo', '1');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('2', 'corporis', '2');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('3', 'ipsa', '3');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('4', 'totam', '4');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('5', 'labore', '5');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('6', 'voluptas', '6');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('7', 'itaque', '7');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('8', 'omnis', '8');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('9', 'sint', '9');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('10', 'blanditiis', '10');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('11', 'dolor', '11');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('12', 'qui', '12');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('13', 'autem', '13');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('14', 'est', '14');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('15', 'sint', '15');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('16', 'eum', '16');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('17', 'nam', '17');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('18', 'blanditiis', '18');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('19', 'eum', '19');
INSERT INTO `communities` (`id`, `name`, `admin_user_id`) VALUES ('20', 'dolores', '20');



INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('1', '1');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('2', '2');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('3', '3');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('4', '4');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('5', '5');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('6', '6');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('7', '7');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('8', '8');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('9', '9');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('10', '10');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('11', '11');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('12', '12');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('13', '13');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('14', '14');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('15', '15');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('16', '16');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('17', '17');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('18', '18');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('19', '19');
INSERT INTO `users_communities` (`user_id`, `community_id`) VALUES ('20', '20');



INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'quo', '1975-02-14 13:15:43', '1997-06-20 02:40:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'assumenda', '1970-07-22 11:08:07', '2019-07-27 09:13:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'laudantium', '1991-09-20 15:41:11', '1977-08-01 08:51:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'vel', '2009-07-05 10:58:39', '1994-10-25 21:55:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'quia', '2005-08-19 22:07:46', '1999-12-30 17:56:42');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'a', '1996-07-15 20:42:47', '2021-05-25 12:09:58');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'eum', '2011-10-07 19:28:18', '1976-01-15 04:46:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'recusandae', '1990-08-21 17:42:37', '2004-05-07 06:27:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'rerum', '1987-05-23 00:40:33', '1989-08-01 13:50:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'dolorem', '2003-08-03 14:17:11', '2016-02-26 10:10:38');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('11', 'commodi', '1980-06-16 20:25:50', '1985-02-07 11:35:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('12', 'eligendi', '1984-06-23 15:10:51', '2011-05-12 06:24:37');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('13', 'mollitia', '1992-07-01 14:28:52', '2017-09-28 02:05:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('14', 'necessitatibus', '1973-09-29 05:29:34', '1985-05-02 10:36:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('15', 'dolores', '2013-10-15 15:13:50', '2009-08-02 01:22:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('16', 'minus', '2010-09-14 21:07:03', '1986-08-03 18:42:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('17', 'nihil', '1974-05-17 08:03:59', '2007-10-05 00:54:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('18', 'libero', '1994-05-25 11:43:54', '2001-12-19 06:40:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('19', 'eius', '1990-06-03 15:26:43', '2015-03-28 16:44:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('20', 'eaque', '2007-10-26 21:19:58', '1980-12-23 04:24:28');


INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1', '1', 'unfriended', '1972-03-26 09:26:02', '2012-11-25 03:32:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('2', '2', 'approved', '2015-07-05 00:52:17', '2003-08-05 11:19:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('3', '3', 'approved', '2007-06-24 21:42:04', '1999-12-05 16:28:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('4', '4', 'requested', '1999-01-17 19:24:23', '1998-05-05 02:45:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('5', '5', 'declined', '1978-06-07 04:44:02', '2019-01-04 18:28:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('6', '6', 'requested', '2000-10-15 06:26:02', '2022-01-02 09:27:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('7', '7', 'unfriended', '1999-01-16 03:13:52', '2015-12-13 06:16:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('8', '8', 'unfriended', '1988-11-13 03:19:20', '1982-10-22 14:30:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('9', '9', 'approved', '2003-07-14 22:38:41', '1987-09-22 02:13:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('10', '10', 'approved', '2018-12-17 23:05:15', '1990-11-19 06:46:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('11', '11', 'approved', '1989-10-23 20:08:51', '2001-03-13 16:44:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('12', '12', 'requested', '1977-08-04 02:37:05', '2019-11-25 10:37:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('13', '13', 'unfriended', '1978-02-20 10:46:49', '1983-08-29 10:45:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('14', '14', 'requested', '1995-08-12 06:34:07', '1980-07-26 03:43:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('15', '15', 'declined', '1996-12-14 19:20:46', '1996-09-23 17:15:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('16', '16', 'requested', '2002-11-08 17:11:43', '2021-08-31 04:39:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('17', '17', 'declined', '1998-09-15 05:01:03', '2013-12-21 14:31:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('18', '18', 'declined', '1984-06-17 11:50:41', '1977-03-19 11:30:56');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('19', '19', 'approved', '2003-08-30 00:26:09', '1979-12-24 16:15:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('20', '20', 'unfriended', '2009-04-28 14:56:37', '1994-06-12 15:59:09');



INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '1', '1', 'Voluptatem quos et voluptatibus quasi et et. Ducimus nesciunt laboriosam at ut. Commodi eos perferendis blanditiis incidunt rerum.', 'quisquam', 6189613, NULL, '1987-12-22 16:23:56', '2002-03-15 10:26:51');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '2', '2', 'Et illum minus possimus laudantium. Ea dolorum et ut doloribus est quasi. Quia eos ratione amet vel sint. Ut amet rerum quis accusantium vel ut omnis.', 'animi', 41479, NULL, '1970-03-01 20:43:16', '2014-02-27 02:52:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '3', '3', 'Voluptates nam totam nihil adipisci ipsum temporibus eum. Sed rerum provident sequi recusandae qui placeat doloribus. Explicabo quaerat architecto magnam ad tempora maiores. Accusamus mollitia ut natus.', 'deleniti', 0, NULL, '2000-01-15 20:51:44', '2013-09-24 13:26:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '4', '4', 'Atque corrupti quaerat quisquam sequi facere reiciendis. Culpa totam voluptatem praesentium quod. Mollitia porro molestias vero quia est voluptatem.', 'eaque', 628, NULL, '2016-11-20 23:19:31', '2003-08-16 07:09:14');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '5', '5', 'Officia quia voluptate dicta sequi totam temporibus. Eos possimus quas accusantium consequatur. Quo et voluptates tempore nemo et ut voluptatem. Dolorem aut enim quia possimus laborum quidem. Dolores ipsa ea error optio quos aliquam rerum.', 'labore', 58206, NULL, '1979-09-03 08:26:50', '1978-01-06 11:09:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '6', '6', 'Sunt quia dignissimos aut esse laborum aspernatur quisquam ut. Aut nam ut quia sed temporibus earum. Inventore saepe aliquam iure dolores itaque aut. Ad expedita ut aut dolor consequuntur non.', 'magni', 3168, NULL, '1975-10-17 03:59:02', '1984-02-01 11:28:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '7', '7', 'Perspiciatis occaecati ut et officiis iure. Quia ea quia eligendi doloribus enim ipsa. Quis qui laborum iste.', 'assumenda', 7057, NULL, '1985-08-26 17:08:12', '2020-09-21 11:03:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '8', '8', 'Quos recusandae praesentium quisquam vel similique eum nobis est. Accusantium ut aut dolorem soluta est doloremque. Cum officia excepturi et ab nulla iste ipsam. Itaque soluta dolores ut molestiae.', 'neque', 275066, NULL, '1993-10-01 12:45:04', '1993-08-28 00:41:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '9', '9', 'Corrupti repellendus neque ut culpa ut sint et. Non odio velit asperiores voluptas mollitia molestiae ex. Quidem rem id est non incidunt sint. Nesciunt nam tempora eos.', 'vel', 0, NULL, '1977-11-21 04:14:45', '2003-07-02 23:45:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '10', '10', 'Enim quo ut necessitatibus nihil eaque facere inventore. Sapiente aliquam eos molestiae. Voluptates veritatis soluta dolores magni perspiciatis.', 'modi', 0, NULL, '2013-11-03 10:18:58', '1978-03-30 04:14:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '11', '11', 'Soluta aspernatur molestiae unde. Cumque perspiciatis dolores qui repudiandae. Eius tempora neque autem. Debitis minima inventore quod voluptatem.', 'odio', 8, NULL, '2016-11-26 22:12:59', '1994-03-14 03:41:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '12', '12', 'Est dolor atque corrupti. Et error in et porro.', 'qui', 90989131, NULL, '2015-11-24 01:50:20', '2016-05-19 13:46:04');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '13', '13', 'Quam aut cumque et ad quia. Est non ut corporis architecto rerum et. Eligendi consequatur quasi qui reiciendis minus harum. Harum sunt consequuntur qui qui officiis voluptatem.', 'consequatur', 61124, NULL, '2002-07-31 08:34:14', '2019-04-29 18:31:31');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '14', '14', 'Omnis corporis aliquam facilis sit quia delectus. Error iste repellat quia commodi voluptas voluptas. Tempore voluptatem magnam quas atque pariatur aliquid. Velit tempore fuga alias aliquam facere.', 'laboriosam', 11958, NULL, '1976-04-19 06:38:21', '1975-05-11 21:55:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '15', '15', 'A molestiae et eius. Deserunt quam consequuntur accusantium eius. Animi consectetur molestias sapiente repudiandae omnis assumenda consectetur.', 'et', 385452, NULL, '1986-12-06 07:16:11', '1987-09-18 23:18:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '16', '16', 'Hic rerum eveniet sint qui provident officiis. Quibusdam consectetur voluptas facere est a. Rerum et repellendus autem et.', 'aliquam', 2, NULL, '1979-12-28 08:37:40', '1977-08-02 18:54:37');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '17', '17', 'Rerum culpa est ut eius. Necessitatibus rerum ut et hic. Quo beatae a aut neque vel. Delectus sequi dolore aut quas culpa assumenda. Cupiditate temporibus vitae veritatis architecto.', 'nostrum', 62615820, NULL, '2003-09-29 12:53:20', '2001-12-19 00:28:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '18', '18', 'Odio et harum a repellendus aut sunt. Modi labore deserunt distinctio inventore velit. Omnis consequuntur itaque pariatur. Vel aut rerum vero quis eaque ut ducimus officia.', 'nam', 923, NULL, '2008-06-23 19:54:34', '1987-01-05 10:20:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '19', '19', 'Sit qui recusandae perferendis. Rerum omnis voluptate quod id qui.', 'dolore', 7845, NULL, '1982-07-13 17:14:21', '2014-12-15 03:22:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '20', '20', 'Voluptas culpa nesciunt voluptatum assumenda occaecati ratione. Culpa perspiciatis magnam veritatis officia quae qui. Eos sunt sed explicabo doloribus voluptatem. Illo dolorem unde ea saepe.', 'ea', 0, NULL, '2006-04-08 08:54:08', '2020-07-04 10:59:52');


INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'm', '1993-04-17', '1', '2006-01-28 11:02:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'm', '1993-09-28', '2', '1990-08-12 22:41:20', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'w', '1991-02-21', '3', '1973-03-07 06:11:11', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'w', '2003-09-02', '4', '1970-03-20 11:06:12', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'w', '2010-07-29', '5', '2019-08-20 21:34:32', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'w', '1983-03-26', '6', '1988-02-10 05:49:02', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'w', '1986-10-12', '7', '1984-05-14 05:17:15', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'w', '2005-05-29', '8', '1986-07-25 16:02:59', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'm', '2022-05-03', '9', '2003-06-01 22:42:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'w', '1986-02-18', '10', '1989-09-18 20:58:33', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'm', '2012-03-16', '11', '2019-02-21 00:50:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'm', '2009-11-15', '12', '2018-08-11 00:07:13', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'm', '2012-04-24', '13', '1977-03-10 01:35:56', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'w', '1975-01-24', '14', '2002-08-27 20:29:58', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'w', '2015-09-06', '15', '2018-07-15 23:56:52', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'w', '1970-03-06', '16', '2007-03-24 05:23:18', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'w', '2007-08-18', '17', '1993-11-16 07:58:51', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'w', '2016-04-27', '18', '1986-05-31 19:59:35', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'w', '1980-07-11', '19', '2021-11-18 06:20:25', NULL);
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'm', '2015-06-25', '20', '2008-08-12 18:27:11', NULL);


INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'molestias', '1');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'qui', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'adipisci', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'aliquid', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'et', '5');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'sed', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'qui', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'amet', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'suscipit', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'asperiores', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'reiciendis', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'fugit', '12');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'et', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'error', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'eius', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'mollitia', '16');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'perferendis', '17');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'voluptatum', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'quas', '19');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'illo', '20');




INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '1', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '2', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '3', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '4', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '5', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '6', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '7', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '8', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '9', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '10', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '11', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '12', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '13', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '14', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '15', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '16', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '17', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '18', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '19', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '20', '20');

INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('1', '20', 'unfriended', '1972-03-26 09:26:02', '2012-11-25 03:32:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('2', '19', 'approved', '2015-07-05 00:52:17', '2003-08-05 11:19:11');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('3', '18', 'approved', '2007-06-24 21:42:04', '1999-12-05 16:28:44');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('4', '17', 'requested', '1999-01-17 19:24:23', '1998-05-05 02:45:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('5', '16', 'declined', '1978-06-07 04:44:02', '2019-01-04 18:28:47');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('6', '15', 'requested', '2000-10-15 06:26:02', '2022-01-02 09:27:38');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('7', '14', 'unfriended', '1999-01-16 03:13:52', '2015-12-13 06:16:40');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('8', '13', 'unfriended', '1988-11-13 03:19:20', '1982-10-22 14:30:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('9', '12', 'approved', '2003-07-14 22:38:41', '1987-09-22 02:13:54');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('10', '11', 'approved', '2018-12-17 23:05:15', '1990-11-19 06:46:18');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('11', '10', 'approved', '1989-10-23 20:08:51', '2001-03-13 16:44:16');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('12', '9', 'requested', '1977-08-04 02:37:05', '2019-11-25 10:37:19');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('13', '8', 'unfriended', '1978-02-20 10:46:49', '1983-08-29 10:45:36');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('14', '7', 'requested', '1995-08-12 06:34:07', '1980-07-26 03:43:34');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('15', '6', 'declined', '1996-12-14 19:20:46', '1996-09-23 17:15:21');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('16', '5', 'requested', '2002-11-08 17:11:43', '2021-08-31 04:39:17');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('17', '4', 'declined', '1998-09-15 05:01:03', '2013-12-21 14:31:37');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('18', '3', 'declined', '1984-06-17 11:50:41', '1977-03-19 11:30:56');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('19', '2', 'approved', '2003-08-30 00:26:09', '1979-12-24 16:15:25');
INSERT INTO `friend_requests` (`initiator_user_id`, `target_user_id`, `status`, `requested_at`, `updated_at`) VALUES ('20', '1', 'unfriended', '2009-04-28 14:56:37', '1994-06-12 15:59:09');

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('1', '1', '20', 'Voluptatum quia dolorum natus enim. Veritatis et quaerat sed aliquid sequi. Et quis laudantium accusantium maxime voluptatem illum aliquam et.', '2025-06-02 08:31:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('2', '2', '19', 'Harum sed est veniam velit. Dicta sint nostrum nihil unde dolorem. Voluptas et error aut rerum qui ut.', '1989-07-03 23:41:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('3', '3', '18', 'Placeat iusto possimus quae dolor quis delectus accusantium nulla. Veritatis voluptas quam voluptas tempore. Modi consequuntur dignissimos id.', '1990-08-25 21:45:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('4', '4', '17', 'Nesciunt excepturi repellat ullam sunt porro rem repellat. Hic qui ut enim id voluptatibus voluptas eveniet. Quo est nemo quia eum dolor molestiae dicta.', '2019-07-23 00:55:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('5', '5', '16', 'Sint alias nostrum et quia et dolores. Illum corporis ea porro perspiciatis. Voluptatem odio alias quia magni illo tempora voluptas.', '2019-10-03 01:19:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('6', '6', '15', 'Optio rerum similique ut. Dignissimos quaerat et sunt non iure et asperiores. Quae facere illo labore est cumque nostrum. Quo at quo est voluptatem delectus est mollitia. Nemo laudantium nesciunt ipsa doloribus cum deleniti.', '1987-07-16 13:56:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('7', '7', '14', 'Eos est ea quisquam suscipit natus. Amet eos laborum dolorum et beatae at. Magni consequatur ipsum eveniet eligendi minima et. Vero possimus dolore id beatae voluptatem. Praesentium et numquam eligendi dignissimos tenetur sunt qui.', '2017-09-24 06:20:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('8', '8', '13', 'Dolores aut veritatis tempora animi et. Sed est iure in non qui et ipsum. Qui nam enim dolorem ut quo ut. Dignissimos aut omnis eum.', '1981-12-27 12:25:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('9', '9', '12', 'Omnis ut aspernatur dolores aspernatur dolores qui vero eveniet. Nesciunt odit animi sed totam eaque labore. Error autem quia autem totam. Omnis minima tempore adipisci sit.', '2222-05-26 16:41:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('10', '10', '11', 'Deleniti officia sint quia dignissimos qui quam. Soluta qui numquam sunt cum voluptatem. Culpa sapiente ut voluptatum recusandae rerum unde natus.', '2099-05-24 15:57:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('11', '11', '10', 'Quaerat quibusdam fugiat eaque doloremque officia dolorum. Quos voluptatibus asperiores sunt occaecati. Et quibusdam rerum rerum voluptas.', '1990-06-04 18:44:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('12', '12', '9', 'Dolor corrupti aut ipsam facilis totam quo. Enim consequuntur eligendi culpa debitis doloremque. Recusandae et odit repudiandae rerum sit ducimus ut cupiditate. Similique necessitatibus amet odit.', '2031-07-02 05:21:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('13', '13', '8', 'Laborum accusamus non maxime ut. Sequi aut eos esse dolorem qui provident hic ut. Voluptas distinctio mollitia omnis aut nulla. Natus aspernatur suscipit eos saepe itaque aut.', '2020-10-24 03:16:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('14', '14', '7', 'Enim molestiae ut ut accusamus magnam dolores et. Qui sit consequuntur non harum vel at. Iure culpa consectetur dignissimos reiciendis nihil non. Perspiciatis cupiditate aut autem quaerat et non maxime possimus.', '1977-07-19 08:38:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('15', '15', '6', 'Exercitationem error tenetur beatae necessitatibus autem. Ut consequatur sed dolorum sit. Officiis suscipit et mollitia qui. Voluptas consequatur consequuntur nostrum ipsum quis quisquam.', '2009-09-27 17:29:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('16', '16', '5', 'Ad laboriosam quo deleniti dolorem. Quibusdam aut sed cum velit atque pariatur. Asperiores cum perferendis iusto ut quia alias. Porro accusamus ut similique veritatis vel eligendi recusandae nam.', '2005-01-20 00:48:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('17', '17', '4', 'Id sit voluptatibus sint voluptate iste. Earum aliquam voluptas id molestiae. Cum corrupti mollitia beatae repellendus possimus consequatur et autem. Ipsum in quasi sapiente similique nobis.', '2024-03-03 03:41:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('18', '18', '3', 'Dolor qui sint in modi voluptatem saepe labore. Dolorum tempore fugit porro aperiam rerum ea. Consequatur tempora doloribus dolores sed officiis vel dolor error.', '1971-01-18 16:34:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('19', '19', '2', 'Illo magnam quia qui voluptas aliquid. Vero assumenda quidem eligendi beatae sit autem. Voluptatem dolorum omnis quisquam consequatur sint quod.', '2002-03-14 05:11:24');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('20', '20', '1', 'Tempore cumque qui exercitationem provident aliquam dolorem et. Vero provident repellat aperiam sed est fuga. Ut ut odio adipisci et. Veniam excepturi dolores quam ea.', '2144-12-04 18:53:28');




INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('1', '20', '1', '2018-07-27 04:59:27');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('2', '19', '2', '1984-08-03 00:49:01');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('3', '18', '3', '1976-09-19 18:46:17');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('4', '17', '4', '2020-11-15 12:55:07');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('5', '16', '5', '2021-02-24 11:52:44');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('6', '15', '6', '2011-02-18 19:12:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('7', '14', '7', '2015-06-27 12:17:54');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('8', '13', '8', '2002-03-28 09:54:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('9', '12', '9', '1991-07-14 05:39:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('10', '11', '10', '1990-03-10 22:48:28');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('11', '10', '11', '2011-02-02 03:51:11');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('12', '9', '12', '1973-08-01 07:32:14');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('13', '8', '13', '2001-08-21 16:27:34');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('14', '7', '14', '2019-07-20 22:24:13');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('15', '6', '15', '2015-11-17 04:34:20');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('16', '5', '16', '1970-12-06 07:53:09');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('17', '4', '17', '1973-12-02 18:59:43');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('18', '3', '18', '1980-06-28 14:42:10');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('19', '2', '19', '2016-05-20 03:52:30');
INSERT INTO `likes` (`id`, `user_id`, `media_id`, `created_at`) VALUES ('20', '1', '20', '2012-12-16 08:19:16');

































