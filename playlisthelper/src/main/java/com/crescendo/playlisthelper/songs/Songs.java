package com.crescendo.playlisthelper.songs;

import java.util.Objects;

public class Songs {

    private String songTitle;
    private Integer mood;
    private Integer tempo;
    private SongGenre genre;
    private SongLanguage language;
    private String link;
    private Integer length;

    public Songs(String songTitle, Integer mood, Integer tempo, SongGenre genre, SongLanguage language, String link, Integer length) {
        this.songTitle = songTitle;
        this.mood = mood;
        this.tempo = tempo;
        this.genre = genre;
        this.language = language;
        this.link = link;
        this.length = length;
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

    public SongGenre getGenre() {
        return genre;
    }

    public void setGenre(SongGenre genre) {
        this.genre = genre;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Songs songs = (Songs) o;
        return Objects.equals(songTitle, songs.songTitle) && Objects.equals(mood, songs.mood) && Objects.equals(tempo, songs.tempo) && genre == songs.genre && language == songs.language && Objects.equals(link, songs.link) && Objects.equals(length, songs.length);
    }

    @Override
    public int hashCode() {
        return Objects.hash(songTitle, mood, tempo, genre, language, link, length);
    }

    @Override
    public String toString() {
        return "Songs{" +
                "songTitle='" + songTitle + '\'' +
                ", mood=" + mood +
                ", tempo=" + tempo +
                ", genre=" + genre +
                ", language=" + language +
                ", link='" + link + '\'' +
                ", length=" + length +
                '}';
    }
}
