import './App.css';
import Body from './components/Body';
import Footer from './components/Footer';
import Header from './components/Header';
import {DBProvider} from './contexts/DBContext';

function App() {
  return (
    <div className="App">
      <DBProvider>
      <Header/>
      <Body/>
      <Footer/>
      </DBProvider>
    </div>
  );
}

export default App;
