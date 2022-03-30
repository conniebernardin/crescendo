import { useState, useEffect } from 'react';
import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import PlaylistPage from './Pages/PlaylistPage';
import HomePage from './Pages/HomePage';

function App() {
    
    const [songs, setSongs] = useState([]);
    const [loading, setLoading] = useState(true);


    useEffect(()=>{ 
        fetch("http://localhost:8080/joins/alljoin")
        .then(response => response.json())
        .then(data => console.log(data))
        .then(data => setSongs(data))
        .then(console.log(songs))
        .then(setLoading(false))
    },[])

 
  return(
  <>
  <h1>hiyaaaa</h1>
  {loading ? <h2>Not loaded</h2> : <h2>Has loaded</h2>}
  <Router>
      <Routes>
          <Route exact path= "/" element={<HomePage />} />
          <Route exact path= "/joinsall" element={<PlaylistPage/>} />
      </Routes>
  </Router>

  </>)
  
}



export default App;
