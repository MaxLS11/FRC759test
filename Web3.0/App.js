
import React, { useState } from "react";
import "./App.css";
import Counter from "./components/Counter";

function App() {

  const [value, setValue] = useState("text");
  return (
    <div className="App">
     <Counter/>
    </div>
  );
}
export default App;
