import React from "react"
import SliderContainer from "../Containers/SliderContainer";
import CrescendoLogo from '../images/CrescendoLogo.png'
import { Link } from "react-router-dom";


const HomePage = ({setMood, setTempo, setLength, songFilter, setPlaylist}) => {

    return (
        <>
        <div className="homepage-card">
        <Link to="/" className='homepage-btn'>
                 <img src={CrescendoLogo} alt="Pink and blue crescendo logo" className='logo'></img>
        </Link>

       
        <div className="slider-container">
        
        <SliderContainer 
        setMood={setMood} 
        setLength={setLength} 
        setTempo={setTempo} 
        songFilter={songFilter}
        setPlaylist={setPlaylist}
        />

        </div>
        </div>
        </>
    )


}

export default HomePage;