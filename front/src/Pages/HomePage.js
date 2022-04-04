import React from "react"
import SliderContainer from "../Containers/SliderContainer";
import CrescendoLogo from '../images/CrescendoLogo.png'


const HomePage = ({setMood, setTempo, setLength, songFilter, setPlaylist}) => {

    return (
        <>

        <h1 className='heading'>crescendo</h1>
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