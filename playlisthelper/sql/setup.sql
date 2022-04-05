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
 VALUES ('Hell''s Comin'' with Me', 3, 135, 'folk', 'english', 'https://www.youtube.com/embed/bTHN1eWN7iU', 235);
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
 VALUES ('Mirror Mirror', 2, 178, 'metal', 'english', 'https://www.youtube.com/embed/CNGCvI9dpZY', 306);
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

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Death of the Cog', 2, 172, 'indie', 'english', 'https://www.youtube.com/watch?v=tq7XG4XOJsc', 161);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Burn It Down', 1, 90, 'rock', 'english', 'https://www.youtube.com/watch?v=_ckCo80imFo', 206);
INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Polka Never Dies', 7, 145, 'folk', 'english', 'https://www.youtube.com/watch?v=wGI6x7mNK4o', 167);

INSERT INTO artists(artist_name)
VALUES ('The Cog is Dead');

INSERT INTO joins (artist_id, song_id) VALUES (17, 26);
INSERT INTO joins (artist_id, song_id) VALUES (17, 27);
INSERT INTO joins (artist_id, song_id) VALUES (14, 28);

INSERT INTO artists(artist_name)
 VALUES ('Doja Cat');

INSERT INTO artists(artist_name)
  VALUES ('Silk Sonic');

INSERT INTO artists(artist_name)
  VALUES ('Jon Batiste');

INSERT INTO artists(artist_name)
  VALUES ('Lil Nas X');

INSERT INTO artists(artist_name)
  VALUES ('Olivia Rodrigo');

INSERT INTO artists(artist_name)
 VALUES ('G.E.M');

INSERT INTO artists(artist_name)
 VALUES ('Jay Chou');

INSERT INTO artists(artist_name)
  VALUES ('BTS');

INSERT INTO artists(artist_name)
 VALUES ('Zhou Shen');

INSERT INTO artists(artist_name)
  VALUES ('Dua Lipa');

INSERT INTO artists(artist_name)
  VALUES ('Kris Wu');

INSERT INTO artists(artist_name)
 VALUES ('Faye Wong');

INSERT INTO artists(artist_name)
 VALUES ('LISA');

INSERT INTO artists(artist_name)
 VALUES ('Eason Chan');

INSERT INTO artists(artist_name)
 VALUES ('Lay Zhang');







INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Kiss me more', 8, 111, 'pop', 'english', 'https://www.youtube.com/watch?v=0EVVKs6DQLo&ab_channel=dojacatVEVO'
 , 208);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Leave the door open', 9, 148, 'neosoul', 'english', 'https://www.youtube.com/watch?v=adLGHcj_fmA&ab_channel=BrunoMars'
 , 242);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Freedom', 10, 115, 'neosoul', 'english', 'https://www.youtube.com/watch?v=3YHVC1DcHmo&ab_channel=JonBatisteVEVO', 178);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Montero', 7, 179, 'pop', 'english', 'https://www.youtube.com/watch?v=6swmTBVI83k&ab_channel=LilNasXVEVO', 137);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Good 4 U', 7, 169, 'rock', 'english', 'https://www.youtube.com/watch?v=gNi_6U5Pm_o&ab_channel=OliviaRodrigoVEVO', 178);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Traitor', 2, 101, 'indie', 'english', 'https://www.youtube.com/watch?v=LYeIr2bBdUA&ab_channel=OliviaRodrigo', 169);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('光年之外', 5, 176, 'pop', 'chinese', 'https://www.youtube.com/watch?v=T4SimnaiktU&ab_channel=GEMblog', 236);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('告白气球', 6, 180, 'pop', 'chinese', 'https://www.youtube.com/watch?v=bu7nU9Mhpyo&ab_channel=%E5%91%A8%E6%9D%B0%E5%80%ABJayChou', 215);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Mojito', 10, 115, 'pop', 'chinese', 'https://www.youtube.com/watch?v=-biOGdYiF-I&ab_channel=%E5%91%A8%E6%9D%B0%E5%80%ABJayChou', 185);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('说好不哭', 5, 152, 'pop', 'chinese', 'https://www.youtube.com/watch?v=HK7SPnGSxLM&ab_channel=%E5%91%A8%E6%9D%B0%E5%80%ABJayChou', 222);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Dynamite', 10, 114, 'pop', 'english', 'https://www.youtube.com/watch?v=gdZLi9oWNZg&ab_channel=HYBELABELS', 199);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('错位时空', 2, 134, 'indie', 'chinese', 'https://www.youtube.com/watch?v=mXf3Klcn-sM&ab_channel=EHPMusicChannel', 205);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('大鱼', 2, 139, 'indie', 'chinese', 'https://www.youtube.com/watch?v=-aMdBA00Ijc&ab_channel=BELLAPINGMUSICCHANNEL', 314);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('起风了', 4, 74, 'pop', 'chinese', 'https://www.youtube.com/watch?v=-jN5SUAxNhU&ab_channel=ShowFever%E7%BB%BC%E8%89%BA%E9%A3%8E%E5%90%91%E6%A0%87', 307);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('New Rules', 6, 116, 'pop', 'english', 'https://www.youtube.com/watch?v=k2qgadSvNyU&ab_channel=DuaLipa', 212);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Big Bowl Thick Noodle', 5, 100, 'pop', 'chinese', 'https://www.youtube.com/watch?v=XGxDxwJjMUc&ab_channel=KrisWu', 221);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('红豆', 1, 111, 'pop', 'chinese', 'https://www.youtube.com/watch?v=5wmfXve11rM&ab_channel=FayeWongOfficialChannel', 259);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Crossing Field', 10, 179, 'pop', 'japanese', 'https://www.youtube.com/watch?v=KId6eunoiWk&ab_channel=lxixsxaVEVO', 247);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('炎', 1, 152, 'pop', 'japanese', 'https://www.youtube.com/watch?v=4DxL6IKmXx4&ab_channel=LiSAOfficialYouTube', 301);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('Lonely christmas', 2, 117, 'pop', 'chinese', 'https://www.youtube.com/watch?v=RJbmHG4pXuA&ab_channel=%E8%8B%B1%E7%9A%87%E5%A8%9B%E6%A8%82eegmusic', 281);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('十年', 1, 124, 'pop', 'chinese', 'https://www.youtube.com/watch?v=JM9rx_hN1Ko&ab_channel=%E8%8B%B1%E7%9A%87%E5%A8%9B%E6%A8%82eegmusic', 204);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('好久不见', 1, 114, 'pop', 'chinese', 'https://www.youtube.com/watch?v=wTIcC-OF3mk&ab_channel=EasonChan-Topic', 250);


INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
 VALUES ('莲', 9, 110, 'pop', 'english', 'https://www.youtube.com/watch?v=j4qVhOaRBSY&ab_channel=LAY', 317);



INSERT INTO joins (artist_id, song_id) VALUES (18, 29);
INSERT INTO joins (artist_id, song_id) VALUES (19, 30);
INSERT INTO joins (artist_id, song_id) VALUES (20, 31);
INSERT INTO joins (artist_id, song_id) VALUES (21, 32);
INSERT INTO joins (artist_id, song_id) VALUES (22, 33);
INSERT INTO joins (artist_id, song_id) VALUES (22, 34);


INSERT INTO joins (artist_id, song_id) VALUES (23,35);
INSERT INTO joins (artist_id, song_id) VALUES (24,36);
INSERT INTO joins (artist_id, song_id) VALUES (24,37);
INSERT INTO joins (artist_id, song_id) VALUES (24,38);
INSERT INTO joins (artist_id, song_id) VALUES (25,39);

INSERT INTO joins (artist_id, song_id) VALUES (26,40);
INSERT INTO joins (artist_id, song_id) VALUES (26,41);
INSERT INTO joins (artist_id, song_id) VALUES (26,42);
INSERT INTO joins (artist_id, song_id) VALUES (27,43);



INSERT INTO joins (artist_id, song_id) VALUES (28,44);
INSERT INTO joins (artist_id, song_id) VALUES (29,45);
INSERT INTO joins (artist_id, song_id) VALUES (30,46);
INSERT INTO joins (artist_id, song_id) VALUES (30,47);

INSERT INTO joins (artist_id, song_id) VALUES (31,48);
INSERT INTO joins (artist_id, song_id) VALUES (31,49);
INSERT INTO joins (artist_id, song_id) VALUES (31,50);
INSERT INTO joins (artist_id, song_id) VALUES (32,51);



INSERT INTO artists(artist_name)
VALUES ('Ms. Lauryn Hill');

INSERT INTO artists(artist_name)
VALUES ('India Arie');

INSERT INTO artists(artist_name)
VALUES ('Amy Winehouse');

INSERT INTO artists(artist_name)
VALUES ('NAO');

INSERT INTO artists(artist_name)
VALUES ('Jazmine Sullivan');

INSERT INTO artists(artist_name)
VALUES ('Frank Ocean');

INSERT INTO artists(artist_name)
VALUES ('Giveon');

INSERT INTO artists(artist_name)
VALUES ('Mahalia');

INSERT INTO artists(artist_name)
VALUES ('Summer Walker');

INSERT INTO artists(artist_name)
VALUES ('Alicia Keys');

INSERT INTO artists(artist_name)
VALUES ('Erykah Badu');

INSERT INTO artists(artist_name)
VALUES ('Macy Gray');

INSERT INTO artists(artist_name)
VALUES ('Tracy Chapman');

INSERT INTO artists(artist_name)
VALUES ('Adele');

INSERT INTO artists(artist_name)
VALUES ('Daniel Merriweather');

INSERT INTO artists(artist_name)
VALUES ('Jhene Aiko');

INSERT INTO artists(artist_name)
VALUES ('Lianne La Havas');

INSERT INTO artists(artist_name)
VALUES ('Snoh Aalegra');

INSERT INTO artists(artist_name)
VALUES ('dvsn');

INSERT INTO artists(artist_name)
VALUES ('Ella Mai');



INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('To Zion', 4, 43, 'neosoul', 'english', 'https://www.youtube.com/embed/1sQjh261rU8', 370);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Killing Me Softly With His Song', 3, 45, 'neosoul', 'english', 'https://www.youtube.com/embed/H-RBJNqdnoM', 298);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Get It Together', 2, 47, 'neosoul', 'english', 'https://www.youtube.com/embed/V7LwmMTD3B4', 294);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Brown Skin', 5, 60, 'neosoul', 'english', 'https://www.youtube.com/embed/12kMTnObZcM', 218);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Back to Black', 1, 31, 'neosoul', 'english', 'https://www.youtube.com/embed/TJAfLE39ZZ8', 240);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Love Is a Losing Game', 2, 20, 'neosoul', 'english', 'https://www.youtube.com/embed/nMO5Ko_77Hk',  168);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Drive and Disconnect', 7, 115, 'neosoul', 'english', 'https://www.youtube.com/embed/FWK5pTukS9s', 210);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('If You Ever' , 7, 120, 'neosoul', 'english', 'https://www.youtube.com/embed/7bRQmZXH6PE', 222);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Bust Your Windows', 1, 54, 'neosoul', 'english', 'https://www.youtube.com/embed/mOzdfaEPaR0', 261);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Dream Big', 9, 110, 'neosoul', 'english', 'https://www.youtube.com/embed/K5w85EWZqKE', 197);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Pink + White', 5, 27, 'neosoul', 'english', 'https://www.youtube.com/embed/uzS3WG6__G4', 184);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Lost', 3, 31, 'neosoul', 'english', 'https://www.youtube.com/embed/J3DWAJGaf7o', 232);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Heartbreak Anniversary', 2, 33, 'neosoul', 'english', 'https://www.youtube.com/embed/nja_0BaQcNg', 198);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Vanish', 2, 44, 'neosoul', 'english', 'https://www.youtube.com/embed/JTCGZCPt7Is', 210);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Sober Jarreau Vandal Remix', 4, 51, 'neosoul', 'english', 'https://www.youtube.com/embed/cRLOgf7ypBY', 220);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('What You Did', 4, 30, 'neosoul', 'english', 'https://www.youtube.com/embed/azA0RJMUK0E', 262);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Girls Need Love', 2, 24, 'neosoul', 'english', 'https://www.youtube.com/embed/1l8vIAvAerE', 153);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Playing Games', 3, 29, 'neosoul', 'english', 'https://www.youtube.com/embed/SDSXLkD74KE', 147);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('No One', 2, 96, 'neosoul', 'english', 'https://www.youtube.com/embed/rywUS-ohqeE', 248);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Empire State of Mind Part Two', 7, 24, 'neosoul', 'english', 'https://www.youtube.com/embed/_W44NZvHc9I', 216);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Love of My Life', 8, 44, 'neosoul', 'english', 'https://www.youtube.com/embed/dNk3R23Twgw', 268);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('On & On', 5, 40, 'neosoul', 'english', 'https://www.youtube.com/embed/TW28iWV7nxE', 226);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('I Try', 3, 38, 'neosoul', 'english', 'https://www.youtube.com/embed/WEQ0l_m3Xm0', 236);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('First Time', 3, 26, 'neosoul', 'english', 'https://www.youtube.com/embed/voO_ZHqq6oY', 201);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Fast Car', 5, 26, 'neosoul', 'english', 'https://www.youtube.com/embed/DwrHwZyFN7M', 296);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Baby Can I hold You', 1, 37, 'neosoul', 'english', 'https://www.youtube.com/watch?v=DqoLMGSBGYc', 194);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Easy On Me', 1, 71, 'neosoul', 'english', 'https://www.youtube.com/embed/X-yIEMduRXk', 225);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Set Fire to the Rain', 1, 110, 'neosoul', 'english', 'https://www.youtube.com/embed/a2giXO6eyuI', 243);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Red', 2, 48, 'neosoul', 'english', 'https://www.youtube.com/embed/o1NCmDYeymo', 252);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Change', 4, 49, 'neosoul', 'english', 'https://www.youtube.com/embed/gvz2PLiHyo4', 202);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Oblivion', 2, 25, 'neosoul', 'english', 'https://www.youtube.com/embed/9gi4lmcgI4k', 350);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('The Worst', 2, 46, 'neosoul', 'english', 'https://www.youtube.com/embed/oEm3lY3trRU', 278);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Bittersweet', 3, 35, 'neosoul', 'english', 'https://www.youtube.com/embed/W6Ak2_TJ5zs', 292);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Green & Gold', 8, 48, 'neosoul', 'english', 'https://www.youtube.com/embed/qnogG7IMj8o', 213);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('I Want You Around', 8, 42, 'neosoul', 'english', 'https://www.youtube.com/embed/4976Fgvf5Ps', 234);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Whoa', 9, 48, 'neosoul', 'english', 'https://www.youtube.com/embed/rzRh6Eon5DQ', 200);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('A Muse', 10, 67, 'neosoul', 'english', 'https://www.youtube.com/embed/R98nW-TfTIk',239);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Between Us', 9, 64, 'neosoul', 'english', 'https://www.youtube.com/embed/YsLCxGP7woA', 206);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Boo"d up', 10, 41, 'neosoul', 'english', 'https://www.youtube.com/embed/6YNZlXfW6Ho', 241);

INSERT INTO songs (song_title, mood, tempo, genre, language, link, length)
VALUES ('Trip', 8, 44, 'neosoul', 'english', 'https://www.youtube.com/embed/JfGD75vHWrU', 218);

-- joining artist ID and song ID:

INSERT INTO joins (artist_id, song_id) VALUES (33, 52);
INSERT INTO joins (artist_id, song_id) VALUES (33, 53);

INSERT INTO joins (artist_id, song_id) VALUES (34, 54);
INSERT INTO joins (artist_id, song_id) VALUES (34, 55);

INSERT INTO joins (artist_id, song_id) VALUES (35, 56);
INSERT INTO joins (artist_id, song_id) VALUES (35, 57);

INSERT INTO joins (artist_id, song_id) VALUES (36, 58);
INSERT INTO joins (artist_id, song_id) VALUES (36, 59);

INSERT INTO joins (artist_id, song_id) VALUES (37, 60);
INSERT INTO joins (artist_id, song_id) VALUES (37, 61);

INSERT INTO joins (artist_id, song_id) VALUES (38, 62);
INSERT INTO joins (artist_id, song_id) VALUES (38, 63);

INSERT INTO joins (artist_id, song_id) VALUES (39, 64);
INSERT INTO joins (artist_id, song_id) VALUES (39, 65);

INSERT INTO joins (artist_id, song_id) VALUES (40, 66);
INSERT INTO joins (artist_id, song_id) VALUES (40, 67);

INSERT INTO joins (artist_id, song_id) VALUES (41, 68);
INSERT INTO joins (artist_id, song_id) VALUES (41, 69);

INSERT INTO joins (artist_id, song_id) VALUES (42, 70);
INSERT INTO joins (artist_id, song_id) VALUES (42, 71);

INSERT INTO joins (artist_id, song_id) VALUES (43, 72);
INSERT INTO joins (artist_id, song_id) VALUES (43, 73);

INSERT INTO joins (artist_id, song_id) VALUES (44, 74);
INSERT INTO joins (artist_id, song_id) VALUES (44, 75);

INSERT INTO joins (artist_id, song_id) VALUES (45, 76);
INSERT INTO joins (artist_id, song_id) VALUES (45, 77);

INSERT INTO joins (artist_id, song_id) VALUES (46, 78);
INSERT INTO joins (artist_id, song_id) VALUES (46, 79);

INSERT INTO joins (artist_id, song_id) VALUES (47, 80);
INSERT INTO joins (artist_id, song_id) VALUES (47, 81);

INSERT INTO joins (artist_id, song_id) VALUES (48, 82);
INSERT INTO joins (artist_id, song_id) VALUES (48, 83);

INSERT INTO joins (artist_id, song_id) VALUES (49, 84);
INSERT INTO joins (artist_id, song_id) VALUES (49, 85);

INSERT INTO joins (artist_id, song_id) VALUES (50, 86);
INSERT INTO joins (artist_id, song_id) VALUES (50, 87);

INSERT INTO joins (artist_id, song_id) VALUES (51, 88);
INSERT INTO joins (artist_id, song_id) VALUES (51, 89);

INSERT INTO joins (artist_id, song_id) VALUES (52, 90);
INSERT INTO joins (artist_id, song_id) VALUES (52, 91);


