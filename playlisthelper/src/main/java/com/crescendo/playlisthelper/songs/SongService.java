package com.crescendo.playlisthelper.songs;


import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.Collections;
import java.util.List;

@Service
public class SongService {
    private SongDao songDao;

    public SongService(@Qualifier("songdb") SongDao songDao){
    this.songDao = songDao;
    }

    public List <Songs> getAllSongs (){
        List <Songs> allSongs = songDao.getAllSongs();
        return allSongs;
    }
}
