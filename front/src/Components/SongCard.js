const SongCard = ({song, index}) => {

    return ( 
        <article>
            <div>
                <h1>
                {song.songId}
                {song.songTitle}
                </h1>


            </div>

        </article>


    )

}

export default SongCard;
