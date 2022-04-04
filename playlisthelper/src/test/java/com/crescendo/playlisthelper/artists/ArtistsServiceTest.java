package com.crescendo.playlisthelper.artists;

import com.crescendo.playlisthelper.songs.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.assertj.core.api.Assertions.assertThat;
import org.mockito.Mockito;

import java.util.ArrayList;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThatThrownBy;
import static org.mockito.BDDMockito.given;
import static org.mockito.Mockito.verify;

public class ArtistsServiceTest {
    private ArtistsService underTest;
    private ArtistsDao artistsDao;

    @BeforeEach
    void setUp(){
        this.artistsDao = Mockito.mock(ArtistsDao.class);
        this.underTest = new ArtistsService(artistsDao);
    }

    @Test
    void canReturnAllArtists(){
        // Given
        List<Artists> testArtists = new ArrayList<>();
        Artists testArtist1 = new Artists(1, "Blind Guardian");
        Artists testArtist2 = new Artists(2, "Rhapsody of Fire");
        testArtists.add(testArtist1);
        testArtists.add(testArtist2);
        given(artistsDao.getAllArtists()).willReturn(testArtists);
        // When
        List<Artists> expected = underTest.getAllArtists();
        // Then
        List<Artists> actual = testArtists;
        assertThat(expected).isEqualTo(actual);
    }
}
