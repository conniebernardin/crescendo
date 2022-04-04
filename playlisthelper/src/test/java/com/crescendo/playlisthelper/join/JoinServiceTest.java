package com.crescendo.playlisthelper.join;

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


public class JoinServiceTest {
    private JoinService underTest;
    private JoinDao joinDao;


    @BeforeEach
    void setUp(){
        this.joinDao = Mockito.mock(JoinDao.class);
        this.underTest = new JoinService(joinDao);
    }

    @Test
    void canReturnAllJoins(){
        // Given
        List<Joins> testJoins = new ArrayList<>();
        Joins testJoins1 = new Joins(1,"Butterflies", 5, 120, SongLanguage.ENGLISH,
                "https://www.youtube.com/watch?v=LSsJqo35trI", 220,1 , 1,
                "Rhapsody", SongGenre.FOLK);
        Joins testJoins2 = new Joins(2,"Moby Duck", 6, 110, SongLanguage.ENGLISH,
                "https://www.youtube.com/watch?v=bmpI252DmiI&t=1506s", 180,2 , 2,
                "Longest Johns", SongGenre.FOLK);
        testJoins.add(testJoins1);
        testJoins.add(testJoins2);
        given(joinDao.getAllJoin()).willReturn(testJoins);
        // When
        List<Joins> expected = underTest.getAllJoins();
        // Then
        List<Joins> actual = testJoins;
        assertThat(expected).isEqualTo(actual);
    }
}
