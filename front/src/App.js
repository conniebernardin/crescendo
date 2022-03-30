import { useEffect } from 'react';
import './App.css';

function App() {



useEffect(()=>{ fetch("http://localhost:8080/joins/alljoin")
    .then(response => response.json())
    .then(response => console.log(response))
},[])

 
  return(
  <>
  <h1>hiyaaaa</h1>
  </>)
  
}

export default App;
