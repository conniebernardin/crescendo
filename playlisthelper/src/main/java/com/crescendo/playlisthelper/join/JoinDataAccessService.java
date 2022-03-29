package com.crescendo.playlisthelper.join;

import com.crescendo.playlisthelper.songs.SongGenre;
import com.crescendo.playlisthelper.songs.SongLanguage;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository("joindb")
public class JoinDataAccessService implements JoinDao {

    private JdbcTemplate jdbcTemplate;

    public JoinDataAccessService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }




    private RowMapper<Joins> joinRowMapper = (rs, rowNum) -> {
        Joins joins = new Joins(
                rs.getInt("song_id"),
                rs.getString("song_title"),
                rs.getInt("mood"),
                rs.getInt("tempo"),
                SongLanguage.valueOf(rs.getString("language").toUpperCase()),
                rs.getString("link"),
                rs.getInt("length"),
                rs.getInt("join_id"),
                rs.getInt("artist_id"),
                rs.getString("artist_name"),
                SongGenre.valueOf(rs.getString("genre").toUpperCase()));


        return joins;
    };

    @Override
    public List<Joins> getAllJoin() {
        String sql = """
                
                SELECT songs.song_id, song_title, mood, tempo, language, link, length, join_id, artists.artist_id, artist_name, genre
                FROM songs
                INNER JOIN joins ON joins.song_id = songs.song_id
                INNER JOIN artists ON artists.artist_id = joins.artist_id;
                
                """;

        List<Joins> joinList = jdbcTemplate.query(sql, joinRowMapper);

        return joinList;
    }







}
