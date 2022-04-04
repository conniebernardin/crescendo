const SongCard = ({song, index}) => {

    return ( 
        <section className="song-container">
            <article className="song-card">

                <div className="song">
                    <h1 className="song-title"> {song.songTitle} </h1>

                    <h1 className="artist-name"> {song.artistName}</h1>
                </div>


            </article>

        </section>


    )

}

export default SongCard;
