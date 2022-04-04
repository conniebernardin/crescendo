import Crescendo from '../assets/Crescendo.png';
import { Link } from "react-router-dom";
const LandingPage = () => {

    return(
        <>
        <div className="landing-card" >
      
        <img className="landing-logo" src={Crescendo}/>
      
        <Link to='/start'>
        <btn className="start-button">Start</btn>
        </Link>
        </div>
        
        </>
    )
}

export default LandingPage;