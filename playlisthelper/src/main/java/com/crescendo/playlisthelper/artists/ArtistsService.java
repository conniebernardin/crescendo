package com.crescendo.playlisthelper.artists;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArtistsService {
    private ArtistsDao artistsDao;

    public ArtistsService(@Qualifier("artists") ArtistsDao artistsDao){
        this.artistsDao = artistsDao;
    }

    public List<Artists> getAllArtists(){
        return artistsDao.getAllArtists();
    }
}
