import SongCard from "../Components/SongCard";


const FinalPlaylistContainer = ({finalPlaylist, songIndex}) => {
    const newSongCard = finalPlaylist.map((song, index) => { 
        return <SongCard song={song} key={index} songIndex = {songIndex} songCardIndex={index}/>
        
    })




    return (
        <>

        {newSongCard}
        

        </>

    )

}

export default FinalPlaylistContainer;