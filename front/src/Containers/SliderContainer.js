import { useState } from "react"
import ReactSlider from "react-slider";

const SliderContainer = ({setMood, setTempo, setLength, songFilter, setPlaylist}) => {
    
    const [moodSliderValue, setMoodSliderValue] = useState (5)
    const [tempoSliderValue, setTempoSliderValue] = useState (100)
    const [lengthSliderValue, setLengthSliderValue] = useState (5)
   
    const onMoodSlide = (event) => {
        setMoodSliderValue(event)
    }
    const onTempoSlide = (event) => {
        setTempoSliderValue(event)
     }
     const onLengthSlide = (event) => {
        setLengthSliderValue(event)
     }

     const handleFormSubmit = () => { 
        setMood(moodSliderValue)
        setTempo(tempoSliderValue)
        setLength(lengthSliderValue)
        
        setPlaylist(songFilter())
     }

    return(
<>
        <ReactSlider
            onChange= {onMoodSlide}
            className="horizontal-slider"
            marks
            markClassName="example-mark"
            min={1}
            max={10}
            thumbClassName="example-thumb"
            trackClassName="example-track"
            renderThumb={(props, state) => <div {...props}>{state.valueNow}</div>}
        />

        <ReactSlider
            onChange= {onTempoSlide}
            className="horizontal-slider"
            marks
            markClassName="example-mark"
            min={60}
            max={150}
            thumbClassName="example-thumb"
            trackClassName="example-track"
            renderThumb={(props, state) => <div {...props}>{state.valueNow}</div>}
        />

        <ReactSlider
            onChange= {onLengthSlide}
            className="horizontal-slider"
            marks
            markClassName="example-mark"
            min={1}
            max={10}
            thumbClassName="example-thumb"
            trackClassName="example-track"
            renderThumb={(props, state) => <div {...props}>{state.valueNow}</div>}
        />

        <button onClick={handleFormSubmit}>Submit</button>

</>
    )

}

export default SliderContainer


