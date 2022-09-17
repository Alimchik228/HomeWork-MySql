DROP TABLE IF EXISTS musics;
CREATE TABLE musics(
  id SERIAL,
  media_id BIGINT unsigned not null,
  music_update DATETIME DEFAULT NOW(),
  FOREIGN KEY (media_id) REFERENCES  media(id)
  
);

DROP TABLE IF EXISTS playlist;
CREATE TABLE playlist(
  id SERIAL,
  users_id BIGINT unsigned not null,
  musics_id BIGINT unsigned not null,
  name VARCHAR(31),
  last_music_update DATETIME DEFAULT NOW(),
  FOREIGN KEY (musics_id) REFERENCES  musics(id),
  FOREIGN KEY (users_id) REFERENCES  users(id)
);

DROP TABLE IF EXISTS post;
CREATE TABLE post( 
  id SERIAL;
  user_id BIGINT UNSIGNED NOT NULL,
  photos_id BIGINT UNSIGNED,
  post_text TEXT,
  post_update DATETIME DEFAULT NOW(),
  FOREIGN KEY (user_id) REFERENCES user(id),
  FOREIGN KEY (photo_id) REFERENCES photos(id)
);

