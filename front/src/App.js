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

    const [mood, setMood] = useState(2);
    const [tempo, setTempo] = useState(100);
    const [length, setLength] = useState(2);
    const [playList, setPlayList] = useState(songs);

    const moodFilter = () => {
        
        console.log("this is mood: " + mood);
        let filteredSongs = songs.filter(songs => {
        return (songs.mood === mood || songs.mood === mood +1 || songs.mood === mood -1)
        }
        );
        console.log("filtered songs log:")
        console.log(filteredSongs)
        return filteredSongs;
    }

  const listFiltered = moodFilter()

  return(
  <>
    {/* {listFiltered!== undefined ? <p>{listFiltered[0].artistName}</p> : <p>not defined</p> } */}
  <h1>hiyaaaa</h1>
  {songs.length === 1 ? <h2>Not loaded</h2> : <h2>Has loaded</h2>}
  <p>anything</p>
  <Router>
      <Routes>
          <Route exact path= "/" element={<HomePage />} />
          <Route exact path= "/joinsall" element={<PlaylistPage/>} />
      </Routes>
  </Router>
  
  </>)
  
}



export default App;
