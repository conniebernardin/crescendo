package com.crescendo.playlisthelper.join;

import com.crescendo.playlisthelper.songs.SongGenre;
import com.crescendo.playlisthelper.songs.SongLanguage;

import java.util.Objects;

public class Joins {
    private Integer songId;
    private String songTitle;
    private Integer mood;
    private Integer tempo;
    private SongLanguage language;
    private String link;
    private Integer length;
    private Integer joinId;
    private Integer artistId;
    private String artistName;
    private SongGenre songGenre;

    public Joins(Integer songId, String songTitle, Integer mood, Integer tempo, SongLanguage language, String link, Integer length, Integer joinId, Integer artistId, String artistName, SongGenre songGenre) {
        this.songId = songId;
        this.songTitle = songTitle;
        this.mood = mood;
        this.tempo = tempo;
        this.language = language;
        this.link = link;
        this.length = length;
        this.joinId = joinId;
        this.artistId = artistId;
        this.artistName = artistName;
        this.songGenre=songGenre;
    }

    public Integer getSongId() {
        return songId;
    }

    public void setSongId(Integer songId) {
        this.songId = songId;
    }

    public String getSongTitle() {
        return songTitle;
    }

    public void setSongTitle(String songTitle) {
        this.songTitle = songTitle;
    }

    public Integer getMood() {
        return mood;
    }

    public void setMood(Integer mood) {
        this.mood = mood;
    }

    public Integer getTempo() {
        return tempo;
    }

    public void setTempo(Integer tempo) {
        this.tempo = tempo;
    }

    public SongLanguage getLanguage() {
        return language;
    }

    public void setLanguage(SongLanguage language) {
        this.language = language;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public Integer getLength() {
        return length;
    }

    public void setLength(Integer length) {
        this.length = length;
    }

    public Integer getJoinId() {
        return joinId;
    }

    public void setJoinId(Integer joinId) {
        this.joinId = joinId;
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

    public SongGenre getSongGenre() {
        return songGenre;
    }

    public void setSongGenre(SongGenre songGenre) {
        this.songGenre = songGenre;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Joins joins = (Joins) o;
        return Objects.equals(songId, joins.songId) && Objects.equals(songTitle, joins.songTitle) && Objects.equals(mood, joins.mood) && Objects.equals(tempo, joins.tempo) && language == joins.language && Objects.equals(link, joins.link) && Objects.equals(length, joins.length) && Objects.equals(joinId, joins.joinId) && Objects.equals(artistId, joins.artistId) && Objects.equals(artistName, joins.artistName) && songGenre == joins.songGenre;
    }

    @Override
    public int hashCode() {
        return Objects.hash(songId, songTitle, mood, tempo, language, link, length, joinId, artistId, artistName, songGenre);
    }

    @Override
    public String toString() {
        return "Joins{" +
                "songId=" + songId +
                ", songTitle='" + songTitle + '\'' +
                ", mood=" + mood +
                ", tempo=" + tempo +
                ", language=" + language +
                ", link='" + link + '\'' +
                ", length=" + length +
                ", joinId=" + joinId +
                ", artistId=" + artistId +
                ", artistName='" + artistName + '\'' +
                ", songGenre=" + songGenre +
                '}';
    }


}
