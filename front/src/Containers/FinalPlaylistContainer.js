import SongCard from "../Components/SongCard";


const FinalPlaylistContainer = ({finalPlaylist}) => {
    const newSongCard = finalPlaylist.map((song, index) => { 
        return <SongCard song={song} key={index}/>

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