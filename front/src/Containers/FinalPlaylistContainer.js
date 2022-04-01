import SongCard from "../Components/SongCard";


const FinalPlaylistContainer = ({finalPlaylist}) => {
    const newSongCard = finalPlaylist.map(song => { 
        return <SongCard song={song}/>

    })


    return (
        <>
        <p> 
            hello world, final playlist 

        </p>

        {newSongCard}

        </>

    )

}

export default FinalPlaylistContainer;