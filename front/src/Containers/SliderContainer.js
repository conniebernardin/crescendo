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
<div className = "slider-card">
<h1 className="mood-heading">Mood</h1>
        <ReactSlider
            onChange= {onMoodSlide}
            className="horizontal-slider"
            // marks
            // markClassName="example-mark"
            min={1}
            max={10}
            thumbClassName="example-thumb"
            trackClassName="example-track1"
            renderThumb={(props, state) => <div {...props}>{state.valueNow}</div>}
            />
<h1 className="tempo-heading">Tempo</h1>
        <ReactSlider
            onChange= {onTempoSlide}
            className="horizontal-slider"
            // marks
            // markClassName="example-mark"
            min={60}
            max={200}
            thumbClassName="example-thumb"
            trackClassName="example-track2"
            renderThumb={(props, state) => <div {...props}>{state.valueNow}</div>}
        />

<h1 className="length-heading">Length</h1>
        <ReactSlider
            onChange= {onLengthSlide}
            className="horizontal-slider"
            // marks
            // markClassName="example-mark"
            min={1}
            max={60}
            thumbClassName="example-thumb"
            trackClassName="example-track3"
            renderThumb={(props, state) => <div {...props}>{state.valueNow}</div>}
        />
  
    <Link to= "/joinsall" className='submit-btn'>
    <button onClick={handleFormSubmit}>&#9658;</button>
    </Link>
       
</div>
    )

}

export default SliderContainer


