import { useState } from "react";


const SongCard = ({song, songIndex, songCardIndex, setSongIndex, setSongUrl}) => {

const handleButtonClick = ()=> {
    setSongIndex(songCardIndex)
    setSongUrl(song.link)

}
    
    return ( 
        <section className="song-container">
            <article className="song-card" style={songCardIndex === songIndex ?  { background:"#4c0bd1", borderRadius: "1rem"} : {color: "white" }}>


                <div className="song">
                    <div className="song-info">
                    <h1 className="song-title"> {song.songTitle} </h1>

                    <h1 className="artist-name"> {song.artistName}</h1>

                    <h1 className="artist-name">{song.index}</h1>
                    </div>
                    <button className="play-btn" onClick = {handleButtonClick}>&#9658;</button>
                </div>


            </article>

        </section>


    )

}

export default SongCard;
