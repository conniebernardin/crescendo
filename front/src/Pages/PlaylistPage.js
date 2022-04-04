import FinalPlaylistContainer from "../Containers/FinalPlaylistContainer";
import { Link } from 'react-router-dom'
import VideoPlayer from "../Components/VideoPlayer";
import CrescendoLogo from '../images/CrescendoLogo.png'
import { useState } from "react";


const PlaylistPage = ({finalPlaylist}) => {
    const [songUrl, setSongUrl]= useState(finalPlaylist[0].link);
    const [songIndex,setSongIndex]=useState(0);


    const handleEndSong=()=>{
        setSongUrl(finalPlaylist[songIndex+1].link)
        setSongIndex(songIndex+1)
        console.log("song ended")

    }


    return(
        <>
           <Link to= "/" className='homepage-btn'>
       <img src = {CrescendoLogo} alt = "Pink and blue crescendo logo" className='logo'></img>

    </Link>
        <div className="playlist-page">

        <div className="playlist-container">
       <FinalPlaylistContainer 
       finalPlaylist={finalPlaylist} songIndex={songIndex}
       />
       </div>

    

        <div className="video-container">
    <VideoPlayer playlist={finalPlaylist} className='video-player' songUrl = {songUrl} songIndex = {songIndex} handleEndSong={handleEndSong}/>
    </div>

       </div>
       
       </>

    )
}

export default PlaylistPage;