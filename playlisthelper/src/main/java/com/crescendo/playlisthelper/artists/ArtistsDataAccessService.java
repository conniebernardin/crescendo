package com.crescendo.playlisthelper.artists;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("artists")
public class ArtistsDataAccessService implements ArtistsDao {
    private JdbcTemplate jdbcTemplate;

    public ArtistsDataAccessService(JdbcTemplate jdbcTemplate){
        this.jdbcTemplate = jdbcTemplate;
    }

    private RowMapper<Artists> artistsRowMapper = (rs, rowNum) -> {
        Artists artist = new Artists(
                rs.getInt("artist_id"),
                rs.getString("artist_name")
        );
        return artist;
    };
    @Override
    public List<Artists> getAllArtists() {
        String sql = """
                
                SELECT artist_id, artist_name
                FROM artists
                
                """;

        List<Artists> artists = jdbcTemplate.query(sql, artistsRowMapper);

        return artists;
    }
}
