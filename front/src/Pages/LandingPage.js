
import { Link } from "react-router-dom";
import DarkLogo from '../images/DarkLogo.png'
const LandingPage = () => {

    return(
        <>
        <div className="landing-card" >
      
        <img src={DarkLogo} alt="Pink and blue crescendo logo" className='dark-logo'></img>

      <div className="landing-text">
        <p className="intro-text">Are you tired of hitting shuffle on your favourite music streaming app and 
        getting music that doesn’t reflect your mood? Constantly having to listen to music at the wrong tempo? 
        Or are you tired of playlists that are too long or too short for the task at hand? Maybe you’re just 
        in the mood to discover new music! Whatever your reasoning, Crescendo is here to help! </p>

        <p className="intro-text">
        Crescendo is a playlist generator that automatically generates a playlist based on your mood, your tempo 
        preferences and the length of time you need the playlist to run. It’s simple really, you adjust the 
        sliders to your preferences, press play and leave the rest to us. In turn, you get your own personalised 
        playlist alongside the music video for your viewing pleasure! No stress, no fuss.</p>
        </div>
        <Link to='/start'>
        <btn className="start-button">Get Started</btn>
        </Link>
        </div>
        
        </>
    )
}

export default LandingPage;