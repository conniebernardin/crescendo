package com.crescendo.playlisthelper.artists;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("artists")
public class ArtistsController {
    private ArtistsService artistsService;

    public ArtistsController(ArtistsService artistsService){
        this.artistsService = artistsService;
    }

    @GetMapping("all")
    public List<Artists> allArtists() {return artistsService.getAllArtists();}
}
