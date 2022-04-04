import { useState, useEffect } from 'react';
import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import PlaylistPage from './Pages/PlaylistPage';
import HomePage from './Pages/HomePage';
import LandingPage from './Pages/LandingPage';


function App() {


    const [songs, setSongs] = useState([]);

    useEffect(()=>{ 
        fetch("http://localhost:8080/joins/shuffledlist")
        .then(response => response.json())
        .then(data => setSongs(data))
    },[])

    useEffect(() => {
        console.log("Hello: " + songs)
    }, [songs])

    const [mood, setMood] = useState(5);
    const [tempo, setTempo] = useState(100);
    const [length, setLength] = useState(60);
    const [playList, setPlaylist] = useState(songs);

    const songFilter = () => {
        console.log("this is the mood" + mood)
        const moodLowerBound = mood - 1;
        const moodUpperBound = mood + 1;
        let moodFilteredSongs = songs.filter(song => {
        return (moodLowerBound <= song.mood && song.mood <= moodUpperBound)
        }
        );
        console.log("this is tempo" + tempo)
        const tempoLowerBound = tempo - 20;
        const tempoUpperBound = tempo + 20;
        let tempoFilteredSongs = moodFilteredSongs.filter(song => {
        return (tempoLowerBound <= song.tempo && song.tempo <= tempoUpperBound)
        }
        );
        let totalTime=0;
        let finalPlaylist=[];
    
        for (let index = 0; index < tempoFilteredSongs.length; index++) {
            totalTime +=tempoFilteredSongs[index]["length"];
            if (totalTime<length*60) {//just for now
                finalPlaylist.push(tempoFilteredSongs[index]);
            }         
        }
        console.log("this is lenght" + length)
        return finalPlaylist;
    }

    // const moodFilter = () => {
    //     console.log("this is mood: " + mood);
    //     const moodLowerBound = mood - 1;
    //     const moodUpperBound = mood + 1;
    //     let moodFilteredSongs = songs.filter(song => {
    //     return (moodLowerBound <= song.mood && song.mood <= moodUpperBound)
    //     }
    //     );
    //     console.log("mood filtered songs log:")
    //     console.log(moodFilteredSongs)
    //     // setPlayList(filteredSongs)
    //     return moodFilteredSongs;
    // }


    // const tempoFilter = () => {
        
    //     const tempoLowerBound = tempo - 10;
    //     const tempoUpperBound = tempo + 10;
    //     let tempoFilteredSongs = listFiltered.filter(song => {
    //     return (tempoLowerBound <= song.tempo && song.tempo <= tempoUpperBound)
    //     }
    //     );
    //     console.log("tempo filtered songs log:")
    //     console.log(tempoFilteredSongs)
    //     // setPlayList(filteredSongs)
    //     return tempoFilteredSongs;
    // }


    // const lengthFilter = () => {
    //     let totalTime=0;
    //     let finalPlaylist=[];
    
    //     for (let index = 0; index < songs.length; index++) {
    //         totalTime +=songs[index]["length"];
    //         if (totalTime<length*60) {//just for now
    //             finalPlaylist.push(songs[index]);
    //         }         
    //     }
    //     return finalPlaylist;
    // }

//   const listFiltered = moodFilter()//get list after mood filter

//   const tempoFilteredSongs = tempoFilter()
//   const lengthFilterSongs=lengthFilter();

//   console.log("this is tempo filtered: " + tempoFilteredSongs);
//   console.log("this is length filtered" + lengthFilterSongs);
//   console.log(lengthFilterSongs);

  
  return(
  <Router>
       <div className= "app">
      {/* {listFiltered!== undefined ? <p>{listFiltered[0].artistName}</p> : <p>not defined</p> } */}
    
        {/* <h1 className='heading'>crescendo</h1> */}
        {/* {songs.length === 1 ? <h2 className='loading'>Not loaded</h2> : <h2 className='loading'>Has loaded</h2>}
        <p>anything</p> */}



        <Routes>
          <Route exact path = "/" element = {<LandingPage/>} />
          <Route exact path= "/start" element={<HomePage 
        //   listFiltered = {listFiltered} 
          songs = {songs} 
          setMood={setMood} 
          setLength={setLength} 
          setTempo={setTempo} 
          songFilter={songFilter}
          setPlaylist={setPlaylist}/>} />
          <Route exact path= "/joinsall" element={<PlaylistPage finalPlaylist = {playList}/>} />
        </Routes>
       
      </div>
  
  </Router>
  )
  
}



export default App;
