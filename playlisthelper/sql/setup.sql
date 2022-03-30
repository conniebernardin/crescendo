DROP TABLE IF EXISTS artists CASCADE;
DROP TABLE IF EXISTS songs CASCADE;
DROP TABLE IF EXISTS joins CASCADE;

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
   link VARCHAR (255),
   length INT
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
 VALUES ('Rainbow', 5, 130, 'folk', 'american',  'https://www.youtube.com/embed/6OFv566mj7s', 214);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Butterflies', 6, 142, 'folk', 'american', 'https://www.youtube.com/embed/BM5Xa1FvNQQ', 219);

INSERT INTO joins (artist_id, song_id) VALUES (1, 1);
INSERT INTO joins (artist_id, song_id) VALUES (1, 2);
INSERT INTO joins (artist_id, song_id) VALUES (1, 3);
INSERT INTO joins (artist_id, song_id) VALUES (2, 4);
INSERT INTO joins (artist_id, song_id) VALUES (2, 5);

<!-- Additional songs/artists 1-->
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Hoist up the Thing', 7, 116, 'folk', 'english', 'https://www.youtube.com/embed/nO5v2YKpJQc', 180);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Bonny Ship the Diamond', 9, 96, 'folk', 'english', 'https://www.youtube.com/embed/UKMHBC0XrKc', 257);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Moby Duck', 6, 135, 'folk', 'english', 'https://www.youtube.com/embed/xA7e_dxDOCo', 178);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Wellerman', 5, 97, 'folk', 'english', 'https://www.youtube.com/embed/E_8tAyecj2g', 154);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Keelhauled', 1, 110, 'metal', 'english', 'https://www.youtube.com/embed/ta-Z_psXODw', 229);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('The Sunk''n Norwegian', 1, 105, 'metal', 'english', 'https://www.youtube.com/embed/eT85cjyWtR0', 247);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Feed the Machine', 3, 176, 'folk', 'english', 'https://www.youtube.com/embed/Y4HVJvTGbkc', 183);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Give and Take', 2, 95, 'folk', 'english', 'https://www.youtube.com/embed/Ag1cxMBoFcs', 197);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Providence', 2, 105, 'folk', 'english', 'https://www.youtube.com/embed/n9Z98wrRnmw', 183);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Hell''s Comin'' with Me', 3, 235, 'folk', 'english', 'https://www.youtube.com/embed/bTHN1eWN7iU', 235);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Sleep is for the Weak', 6, 142, 'folk', 'english', 'https://www.youtube.com/embed/VRj3LsX54ys', 191);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Roll Northumbria', 4, 180, 'folk', 'english', 'https://www.youtube.com/embed/-d3XHQVMHDM', 229);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Chains Of Destiny', 6, 90, 'metal', 'english', 'https://www.youtube.com/embed/DxM6gD-NUBY', 250);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Magic Signs', 3, 120, 'metal', 'english', 'https://www.youtube.com/embed/SZr6_z9bLTA', 321);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Emerald Sword', 6, 90, 'metal', 'english', 'https://www.youtube.com/embed/oupD5I_CG-s', 263);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Where Dragons Fly', 3, 160, 'metal', 'english', 'https://www.youtube.com/embed/sKkUOgJrKIc', 274);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('The Bard''s Song (In the Forest)', 4, 82, 'metal', 'english', 'https://www.youtube.com/embed/n63UbX5kzAc', 208);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Mirror Mirror', 2, 159, 'metal', 'english', 'https://www.youtube.com/embed/CNGCvI9dpZY', 306);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Valkyries', 2, 144, 'metal', 'english', 'https://www.youtube.com/embed/WoH6JWm7nfQ', 394);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Curse My Name', 3, 180, 'metal', 'english', 'https://www.youtube.com/embed/SJch7UW_z88', 349);

INSERT INTO artists(artist_name)
VALUES ('The Longest Johns');
INSERT INTO artists(artist_name)
VALUES ('Alestorm');
INSERT INTO artists(artist_name)
VALUES ('Poor Man''s Poison');
INSERT INTO artists(artist_name)
VALUES ('The Dreadnoughts');
INSERT INTO artists(artist_name)
VALUES ('Rhapsody of Fire');
INSERT INTO artists(artist_name)
VALUES ('Blind Guardian');

INSERT INTO joins (artist_id, song_id) VALUES (11, 6);
INSERT INTO joins (artist_id, song_id) VALUES (11, 7);
INSERT INTO joins (artist_id, song_id) VALUES (11, 8);
INSERT INTO joins (artist_id, song_id) VALUES (11, 9);
INSERT INTO joins (artist_id, song_id) VALUES (12, 10);
INSERT INTO joins (artist_id, song_id) VALUES (12, 11);
INSERT INTO joins (artist_id, song_id) VALUES (13, 12);
INSERT INTO joins (artist_id, song_id) VALUES (13, 13);
INSERT INTO joins (artist_id, song_id) VALUES (13, 14);
INSERT INTO joins (artist_id, song_id) VALUES (13, 15);
INSERT INTO joins (artist_id, song_id) VALUES (14, 16);
INSERT INTO joins (artist_id, song_id) VALUES (14, 17);
INSERT INTO joins (artist_id, song_id) VALUES (15, 18);
INSERT INTO joins (artist_id, song_id) VALUES (15, 19);
INSERT INTO joins (artist_id, song_id) VALUES (15, 20);
INSERT INTO joins (artist_id, song_id) VALUES (15, 21);
INSERT INTO joins (artist_id, song_id) VALUES (16, 22);
INSERT INTO joins (artist_id, song_id) VALUES (16, 23);
INSERT INTO joins (artist_id, song_id) VALUES (16, 24);
INSERT INTO joins (artist_id, song_id) VALUES (16, 25);