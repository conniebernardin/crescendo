package com.crescendo.playlisthelper.songs;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("songs")
@RestController
public class SongController {

  private SongService songService;

  public SongController (SongService songService){
      this.songService = songService;
  }

    @GetMapping(path = "all")
    public List<Songs> allSongs(){
      return songService.getAllSongs();
    }



}
