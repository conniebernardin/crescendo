import FinalPlaylistContainer from "../Containers/FinalPlaylistContainer";
import { Link } from 'react-router-dom'
import VideoPlayer from "../Components/VideoPlayer";
const PlaylistPage = ({finalPlaylist}) => {
    return(
        <>

       <FinalPlaylistContainer 
       finalPlaylist={finalPlaylist}
       />

       <h3>
           this is my playlist page


       </h3>
       <Link to= "/" className='homepage-btn'>
    <button>Home Page</button>
    </Link>
    <VideoPlayer playlist={finalPlaylist}/>

       </>

    )
}

export default PlaylistPage;