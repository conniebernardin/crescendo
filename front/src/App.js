import { useEffect } from 'react';
import './App.css';
import { BrowserRouter as Router, Route, Routes } from 'react-router-dom';
import PlaylistPage from './Pages/PlaylistPage';
import HomePage from './Pages/HomePage';

function App() {



useEffect(()=>{ fetch("http://localhost:8080/joins/alljoin")
    .then(response => response.json())
    .then(response => console.log(response))
},[])

 
  return(
  <>
  <h1>hiyaaaa</h1>
  <Router>
      <Routes>
          <Route exact path= "/" element={<HomePage />} />
          <Route exact path= "/joinsall" element={<PlaylistPage/>} />
      </Routes>
  </Router>

  </>)
  
}



export default App;
