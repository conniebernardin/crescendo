package com.crescendo.playlisthelper.songs;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Locale;


@Repository("songdb")
public class SongDataAccessService implements SongDao {

    private JdbcTemplate jdbcTemplate;

    public SongDataAccessService(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    private RowMapper <Songs> songsRowMapper = (rs, rowNum) -> {
        Songs song = new Songs(
                rs.getString("song_title"),
                rs.getInt("mood"),
                rs.getInt("tempo"),
                SongGenre.valueOf(rs.getString("genre").toUpperCase()),
                SongLanguage.valueOf(rs.getString("language").toUpperCase()),
                rs.getString("link"),
                rs.getInt("length"));

    return song;
    };

    @Override
    public List<Songs> getAllSongs() {
        String sql = """
                
                SELECT song_id, song_title, mood, tempo, genre, language, link, length
                FROM songs
                
                """;

        List<Songs> playList = jdbcTemplate.query(sql, songsRowMapper);

        return playList;
    }
}
