import { useState, useEffect } from 'react';
import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import PlaylistPage from './Pages/PlaylistPage';
import HomePage from './Pages/HomePage';

function App() {

    const test = [ {
        "songId": 5,
        "songTitle": "Butterflies",
        "mood": 6,
        "tempo": 142,
        "language": "AMERICAN",
        "link": "https://www.youtube.com/embed/BM5Xa1FvNQQ",
        "length": 219,
        "joinId": 7,
        "artistId": 2,
        "artistName": "Kacey Musgraves",
        "songGenre": "FOLK"
    },
    {
        "songId": 6,
        "songTitle": "Hoist up the Thing",
        "mood": 7,
        "tempo": 116,
        "language": "ENGLISH",
        "link": "https://www.youtube.com/embed/nO5v2YKpJQc",
        "length": 180,
        "joinId": 8,
        "artistId": 11,
        "artistName": "The Longest Johns",
        "songGenre": "FOLK"
    },
    {
        "songId": 7,
        "songTitle": "Bonny Ship the Diamond",
        "mood": 9,
        "tempo": 96,
        "language": "ENGLISH",
        "link": "https://www.youtube.com/embed/UKMHBC0XrKc",
        "length": 257,
        "joinId": 9,
        "artistId": 11,
        "artistName": "The Longest Johns",
        "songGenre": "FOLK"
    },
    {
        "songId": 8,
        "songTitle": "Moby Duck",
        "mood": 6,
        "tempo": 135,
        "language": "ENGLISH",
        "link": "https://www.youtube.com/embed/xA7e_dxDOCo",
        "length": 178,
        "joinId": 10,
        "artistId": 11,
        "artistName": "The Longest Johns",
        "songGenre": "FOLK"
    },
    {
        "songId": 9,
        "songTitle": "Wellerman",
        "mood": 5,
        "tempo": 97,
        "language": "ENGLISH",
        "link": "https://www.youtube.com/embed/E_8tAyecj2g",
        "length": 154,
        "joinId": 11,
        "artistId": 11,
        "artistName": "The Longest Johns",
        "songGenre": "FOLK"
    }]


    const [songs, setSongs] = useState([]);

    useEffect(()=>{ 
        fetch("http://localhost:8080/joins/alljoin")
        .then(response => response.json())
        .then(data => setSongs(data))
    },[])

    useEffect(() => {
        console.log("Hello: " + songs)
    }, [songs])

    const [mood, setMood] = useState(5);
    const [tempo, setTempo] = useState(100);
    const [length, setLength] = useState(10);
    const [playList, setPlayList] = useState(songs);

    const moodFilter = () => {
        console.log("this is mood: " + mood);
        const moodLowerBound = mood - 1;
        const moodUpperBound = mood + 1;
        let filteredSongs = test.filter(song => {
        return (moodLowerBound <= song.mood && song.mood <= moodUpperBound)
        }
        );
        console.log("filtered songs log:")
        console.log(filteredSongs)
        // setPlayList(filteredSongs)
        return filteredSongs;
    }


    const tempoFilter = () => {
        
        const tempoLowerBound = tempo - 10;
        const tempoUpperBound = tempo + 10;
        let tempoFilteredSongs = listFiltered.filter(song => {
        return (tempoLowerBound <= song.tempo && song.tempo <= tempoUpperBound)
        }
        );
        console.log("filtered songs log:")
        console.log(tempoFilteredSongs)
        // setPlayList(filteredSongs)
        return tempoFilteredSongs;
    }


    const lengthFilter = () => {
        let totalTime=0;
        let finalPlaylist=[];
    
        for (let index = 0; index < test.length; index++) {
            totalTime +=test[index]["length"];
            if (totalTime<length*60) {//just for now
                finalPlaylist.push(test[index]);
            }         
        }
        return finalPlaylist;
    }



  const listFiltered = moodFilter()//get list after mood filter

  const tempoFilteredSongs = tempoFilter()
  const lengthFilterSongs=lengthFilter();

  console.log("this is tempo filtered: " + tempoFilteredSongs);
  console.log("this is length filtered" + lengthFilterSongs);
  console.log(lengthFilterSongs);

  
  return(
  <Router>
       <div className="app">
      {listFiltered!== undefined ? <p>{listFiltered[0].artistName}</p> : <p>not defined</p> }
        <h1>hiyaaaa</h1>
        {songs.length === 1 ? <h2>Not loaded</h2> : <h2>Has loaded</h2>}
        <p>anything</p>



        <Routes>
          <Route exact path= "/" element={<HomePage listFiltered = {listFiltered} songs = {songs}/>} />
          <Route exact path= "/joinsall" element={<PlaylistPage/>} />
        </Routes>
       
      </div>
  
  </Router>
  )
  
}



export default App;
