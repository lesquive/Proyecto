import "./App.css";
import Body from "./components/Body";
import Footer from "./components/Footer";
import Header from "./components/Header";
import { DBProvider } from "./contexts/DBContext";
import ReactDOM from "react-dom/client";
import { BrowserRouter, Routes, Route } from "react-router-dom";
import Equipo from "./components/Equipo";
import Employees from "./components/Employees";
import Usuarios from "./components/Usuarios";
import AgregarUsuario from "./components/AgregarUsuario";

function App() {
  return (
    <div className="App">
      <BrowserRouter>
        <DBProvider>
          <Header />
          <Routes>
            <Route path="/" element={<Body />} />
            <Route path="equipo" element={<Equipo />} />
            <Route path="empleados" element={<Employees />} />
            <Route path="usuarios" element={<Usuarios />} />
            <Route path="agregarusuario" element={<AgregarUsuario />} />
          </Routes>
          <Footer />
        </DBProvider>
      </BrowserRouter>
    </div>
  );
}

export default App;
