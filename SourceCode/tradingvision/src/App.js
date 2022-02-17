import { BrowserRouter as Router, Route, Routes } from "react-router-dom";
import './App.css';

import Header from '././components/header/Header';
import Homepage from './pages/Homepage';
import Stockpage from './pages/Stockpage';
import { makeStyles } from "@material-ui/core";
import { FooterContainer } from './containers/footer';
import Favorite from "./pages/favorite/Favorite";
import Reminder from "./pages/reminder/Reminder";


const useStyles = makeStyles(()=>({
  App:{
    backgroundColor: "#14161a",
    color: "white",
    minHeight: "100vh",

  },
}));

function App() {
  
  const classes = useStyles() 

  return (
    <div className={classes.App} >
      <Router >
          <Header/>
          <Routes>
            <Route exact path="/" element={<Homepage/>} />
            <Route exact path="/stocks/:ticker" element={<Stockpage/>} />
            <Route path="/favorite" element={<Favorite/>} />
            <Route path="/reminder" element={<Reminder/>} />
          </Routes>
          <FooterContainer />
      </Router>
    </div>
  );
}

export default App;
