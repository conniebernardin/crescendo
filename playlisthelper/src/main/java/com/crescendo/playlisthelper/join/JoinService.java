package com.crescendo.playlisthelper.join;

import com.crescendo.playlisthelper.songs.SongDao;
import com.crescendo.playlisthelper.songs.Songs;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

@Service
public class JoinService {

    private JoinDao joinDao;

    public JoinService(@Qualifier("joindb") JoinDao joinDao){
        this.joinDao = joinDao;
    }

    public List<Joins> getAllJoins (){
        List <Joins> allJoins = joinDao.getAllJoin();
        return allJoins;
    }

    public List<Joins> getAllShuffledJoins (){
        List<Joins> allJoins = joinDao.getAllJoin();
        Collections.shuffle(allJoins);
        return allJoins;
    }
}
