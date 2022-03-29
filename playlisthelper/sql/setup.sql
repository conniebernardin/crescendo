CREATE TABLE artists (
    artist_id SERIAL PRIMARY KEY,
    artist_name VARCHAR(255)
    );

 CREATE TABLE songs (
   song_id SERIAL PRIMARY KEY,
   song_title VARCHAR(255),
   mood INT,
   tempo INT,
   genre VARCHAR (255),
   language VARCHAR (255),
   link VARCHAR (255)
);

CREATE TABLE joins (
join_id SERIAL PRIMARY KEY,
artist_id INT REFERENCES artists(artist_id),
song_id INT REFERENCES songs(song_id)
);

 INSERT INTO artists(artist_name)
 VALUES ('Mumford and Sons');

 INSERT INTO artists(artist_name)
 VALUES ('Kacey Musgraves');

 INSERT INTO artists(artist_name)
 VALUES ('The Lumineers');

 INSERT INTO artists(artist_name)
 VALUES ('The Staves');

 INSERT INTO artists(artist_name)
 VALUES ('First Aid Kit');

 INSERT INTO artists(artist_name)
 VALUES ('Simon and Garfunkel');

 INSERT INTO artists(artist_name)
 VALUES ('Dolly Parton');

 INSERT INTO artists(artist_name)
 VALUES ('Joni Mitchell');

 INSERT INTO artists(artist_name)
 VALUES ('The Mamas and Papas');

 INSERT INTO artists(artist_name)
 VALUES ('The Corries');


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Little Lion Man', 4, 139, 'folk', 'english', 'https://www.youtube.com/embed/lLJf9qJHR3E', 257 );

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('I Will Wait', 7, 131, 'folk', 'english', 'https://www.youtube.com/embed/rGKfrgqWcv0', 312 );

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('The Cave', 3, 142, 'folk', 'english',  'https://www.youtube.com/embed/fNy8llTLvuA', 275 );

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Rainbow', 5, 130, 'folk', 'american',  'https://www.youtube.com/watch?v=6OFv566mj7s&ab_channel=KaceyMusgravesVEVO', 214);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Butterflies', 6, 142, 'folk', 'american', 'https://www.youtube.com/embed/BM5Xa1FvNQQ', 219);


INSERT INTO joins (artist_id, song_id) VALUES (1, 1);
INSERT INTO joins (artist_id, song_id) VALUES (1, 2);
INSERT INTO joins (artist_id, song_id) VALUES (1, 3);
INSERT INTO joins (artist_id, song_id) VALUES (2, 4);
INSERT INTO joins (artist_id, song_id) VALUES (2, 5);

