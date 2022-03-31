import { useState } from "react"
import ReactSlider from "react-slider";

const SliderComponent = () => {
    
    const [sliderValue, setSliderValue] = useState (5)
    const onSlide = (event) => {
        // const newValue = event.target.mark 
        // setSliderValue(parseInt(newValue))

        // this.setSliderValue({value : event.target.value})

        console.log("hello" + event.target);

    }



    return(

        <ReactSlider
            onChange={onSlide}
            className="horizontal-slider"
            marks
            markClassName="example-mark"
            min={1}
            max={10}
            thumbClassName="example-thumb"
            trackClassName="example-track"
            renderThumb={(props, state) => <div {...props}>{state.valueNow}</div>}
        />
    )

}

export default SliderComponent


