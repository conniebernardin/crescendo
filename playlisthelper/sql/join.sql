SELECT songs.song_id, song_title, mood, tempo, language, link, length, join_id, artists.artist_id, artist_name
FROM songs
INNER JOIN joins ON joins.song_id = songs.song_id
INNER JOIN artists ON artists.artist_id = joins.artist_id;