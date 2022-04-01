import FinalPlaylistContainer from "../Containers/FinalPlaylistContainer";

const PlaylistPage = ({finalPlaylist}) => {
    return(
        <>

       <FinalPlaylistContainer 
       finalPlaylist={finalPlaylist}
       />

       <h3>
           this is my playlist page


       </h3>
       
       </>

    )
}

export default PlaylistPage;