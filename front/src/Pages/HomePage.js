import React from "react"
import SliderContainer from "../Containers/SliderContainer";
import CrescendoLogo from '../images/CrescendoLogo.png'


const HomePage = ({setMood, setTempo, setLength, songFilter, setPlaylist}) => {

    return (
        <>

        <div className="homepage-card">
        <img src = {CrescendoLogo} alt = "Pink and blue crescendo logo" className='logo'></img>
        <div className="slider-container">
        
        <SliderContainer 
        setMood={setMood} 
        setLength={setLength} 
        setTempo={setTempo} 
        songFilter={songFilter}
        setPlaylist={setPlaylist}
        />

        </div>
        <div class="ocean">
  <div class="wave"></div>
  <div class="wave"></div>
    </div>

    </div>
        </>
    )


}

export default HomePage;