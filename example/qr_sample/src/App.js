import logo from './logo.svg';
import './App.css';
import Qr from './Qr';
import Text from './Text';
import React, { useEffect, useState } from 'react';

function App() {
  var [qr, setQr] = useState(true);
  var [text, setText] = useState(false);
  // after 6 seconds, set qr to false and text to true
  useEffect(() => {
    setTimeout(() => {
      setQr(false);
      setText(true);
    }, 6000);
  }, []);

  return (
    <div className="App">
      {qr ? <Qr /> : null}
      {text ? <Text /> : null}
    </div>
  );
}

export default App;
