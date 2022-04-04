import FinalPlaylistContainer from "../Containers/FinalPlaylistContainer";
import { Link } from 'react-router-dom'
import VideoPlayer from "../Components/VideoPlayer";
import CrescendoLogo from '../images/CrescendoLogo.png'

const PlaylistPage = ({finalPlaylist}) => {
    return(
        <>
           <Link to= "/" className='homepage-btn'>
       <img src = {CrescendoLogo} alt = "Pink and blue crescendo logo" className='logo'></img>

    </Link>
        <div className="playlist-page">

        <div className="playlist-container">
       <FinalPlaylistContainer 
       finalPlaylist={finalPlaylist}
       />
       </div>

    

        <div className="video-container">
    <VideoPlayer playlist={finalPlaylist} className='video-player'/>
    </div>

       </div>
       
       </>

    )
}

export default PlaylistPage;