import React from "react"
import SliderContainer from "../Containers/SliderContainer";



const HomePage = ({setMood, setTempo, setLength, songFilter, setPlaylist}) => {

    return (
        <>

       
        <div className="slider-container">
        <SliderContainer 
        setMood={setMood} 
        setLength={setLength} 
        setTempo={setTempo} 
        songFilter={songFilter}
        setPlaylist={setPlaylist}
        />

        </div>
        
        </>
    )


}

export default HomePage;