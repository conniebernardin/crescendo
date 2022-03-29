package com.crescendo.playlisthelper.artists;

import java.util.Objects;

public class Artists {
    private Integer artistId;
    private String artistName;

    public Artists(Integer artistId, String artistName) {
        this.artistId = artistId;
        this.artistName = artistName;
    }

    public Integer getArtistId() {
        return artistId;
    }

    public void setArtistId(Integer artistId) {
        this.artistId = artistId;
    }

    public String getArtistName() {
        return artistName;
    }

    public void setArtistName(String artistName) {
        this.artistName = artistName;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Artists artists = (Artists) o;
        return artistId.equals(artists.artistId) && artistName.equals(artists.artistName);
    }

    @Override
    public int hashCode() {
        return Objects.hash(artistId, artistName);
    }

    @Override
    public String toString() {
        return "Artists{" +
                "artistId=" + artistId +
                ", artistName='" + artistName + '\'' +
                '}';
    }
}
