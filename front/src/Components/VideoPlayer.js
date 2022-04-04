import React from 'react'
import ReactPlayer from 'react-player/youtube'
import { useState, useEffect} from 'react'

const VideoPlayer=({playlist, songUrl, songIndex, handleEndSong})=>{
   

    setTimeout(()=>{console.log(playlist)},2000);
    

    

    // const [songUrl, setSongUrl]= useState(playlist[0].link);
    // const [songIndex,setSongIndex]=useState(0);

    // if (playlist[0]!== undefined) {
    //     useState(playlist[0].link);
    // }




    // const handleEndSong=()=>{
    //     setSongUrl(playlist[songIndex+1].link)
    //     setSongIndex(songIndex+1)
    //     console.log("song ended")

    // }


    return (
        <>

            {songUrl !== undefined ? <ReactPlayer className="video-player" controls = {true} playing={true} onEnded={handleEndSong} url={songUrl} />:<p>playlist is empty</p>}

        
        </>
        


        


    )


}

export default VideoPlayer;
