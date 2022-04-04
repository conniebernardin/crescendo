import SongCard from "../Components/SongCard";


const FinalPlaylistContainer = ({finalPlaylist, songIndex, setSongIndex, setSongUrl}) => {
    const newSongCard = finalPlaylist.map((song, index) => { 
        return <SongCard song={song} key={index} songIndex = {songIndex} songCardIndex={index} setSongIndex={setSongIndex} setSongUrl={setSongUrl}/>
        
    })




    return (
        <>

        {newSongCard}
        

        </>

    )

}

export default FinalPlaylistContainer;