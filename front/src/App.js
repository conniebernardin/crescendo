import { useState, useEffect } from 'react';
import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import PlaylistPage from './Pages/PlaylistPage';
import HomePage from './Pages/HomePage';

function App() {
    
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
    const [length, setLength] = useState(2);
    const [playList, setPlayList] = useState(songs);

 
  return(
  <>
  <h1>hiyaaaa</h1>
  {songs.length === 1 ? <h2>Not loaded</h2> : <h2>Has loaded</h2>}
  <Router>
      <Routes>
          <Route exact path= "/" element={<HomePage />} />
          <Route exact path= "/joinsall" element={<PlaylistPage/>} />
      </Routes>
  </Router>

  </>)
  
}



export default App;
