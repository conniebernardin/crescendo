package com.crescendo.playlisthelper.songs;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;
import org.mockito.Mockito;

import java.util.ArrayList;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.verify;

public class SongServiceTest {
    private SongService underTest;
    private SongDao songDao;

    @BeforeEach
    void setUp(){
        this.songDao = Mockito.mock(SongDao.class);
        this.underTest = new SongService(songDao);
    }

    @Test
    void canReturnAllSongs(){
        // Given
        List<Songs> testSongs = new ArrayList<>();
        Songs testSong1 = new Songs("Butterflies", 5, 120, SongGenre.FOLK, SongLanguage.ENGLISH,
                "https://www.youtube.com/watch?v=LSsJqo35trI", 220);
        Songs testSong2 = new Songs("Moby Duck", 6, 110, SongGenre.FOLK, SongLanguage.ENGLISH,
                "https://www.youtube.com/watch?v=bmpI252DmiI&t=1506s", 180);
        testSongs.add(testSong1);
        testSongs.add(testSong2);
        given(songDao.getAllSongs()).willReturn(testSongs);
        // When
        List<Songs> expected = underTest.getAllSongs();
        // Then
        List<Songs> actual = testSongs;
        assertThat(expected).isEqualTo(actual);
    }
}
