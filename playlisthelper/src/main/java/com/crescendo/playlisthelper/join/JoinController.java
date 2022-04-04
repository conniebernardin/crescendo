package com.crescendo.playlisthelper.join;

import com.crescendo.playlisthelper.songs.SongService;
import com.crescendo.playlisthelper.songs.Songs;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RequestMapping("joins")
@RestController
public class JoinController {

    private JoinService joinService;

    public JoinController (JoinService joinService){
        this.joinService = joinService;
    }

    @GetMapping(path = "alljoin")
    public List<Joins> allSongs(){
        return joinService.getAllJoins();
    }
    @GetMapping(path = "shuffledlist")
    public List<Joins> allShuffledSongs(){
        return joinService.getAllShuffledJoins();
    }



}
