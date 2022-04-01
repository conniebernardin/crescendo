import { useState } from "react"
import ReactSlider from "react-slider";
import { Link } from 'react-router-dom'

const SliderContainer = ({setMood, setTempo, setLength, songFilter, setPlaylist}) => {

    const onMoodSlide = (event) => {
        setMood(event)
    }
    const onTempoSlide = (event) => {
        setTempo(event)
     }
     const onLengthSlide = (event) => {
        setLength(event)
     }

     const handleFormSubmit = async (event) => { 
        setPlaylist(songFilter());
     }

    return(
<>
        <ReactSlider
            onChange= {onMoodSlide}
            className="horizontal-slider"
            // marks
            // markClassName="example-mark"
            min={1}
            max={10}
            thumbClassName="example-thumb"
            trackClassName="example-track"
            renderThumb={(props, state) => <div {...props}>{state.valueNow}</div>}
            />

        <ReactSlider
            onChange= {onTempoSlide}
            className="horizontal-slider"
            // marks
            // markClassName="example-mark"
            min={60}
            max={150}
            thumbClassName="example-thumb"
            trackClassName="example-track"
            renderThumb={(props, state) => <div {...props}>{state.valueNow}</div>}
        />

        <ReactSlider
            onChange= {onLengthSlide}
            className="horizontal-slider"
            // marks
            // markClassName="example-mark"
            min={1}
            max={10}
            thumbClassName="example-thumb"
            trackClassName="example-track"
            renderThumb={(props, state) => <div {...props}>{state.valueNow}</div>}
        />
  
    <Link to= "/joinsall" className='playlistpage-btn'>
    <button onClick={handleFormSubmit}>Submit</button>
    </Link>
       
</>
    )

}

export default SliderContainer


