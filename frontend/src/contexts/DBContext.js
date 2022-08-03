import { createContext, useContext, useState, useEffect } from "react";

const DBContext = createContext();

export function useDB() {
  return useContext(DBContext);
}

export function DBProvider({ children }) {
  const [DBConnection, setDBConnection] = useState(false);
  const [dbUsuarios, setDbUsuarios] = useState([]);
  const [todosUsuarios, setTodosUsuarios] = useState(0);
  const [ultimoUsuario, setUltimoUsuario] = useState("");

  async function getDBConnection() {
    fetch("http://localhost:5000/").then((res) => {
      res.json().then((data) => {
        console.log(data);
        setDBConnection(data.conexionExitosa);
      });
    });
  }

  async function getUsuarios() {
    fetch("http://localhost:5000/listarUsuarios").then((res) => {
      res.json().then((data) => {
        console.log(data.result);
        setDbUsuarios(data.result);
      });
    });
  }

  async function getTodosUsuarios() {
    fetch("http://localhost:5000/totalUsuarios").then((res) => {
      res.json().then((data) => {
        console.log(data.result);
        setTodosUsuarios(data.result);
      });
    });
  }

  async function getUltimoUsuario() {
    fetch("http://localhost:5000/ultimoUsuario").then((res) => {
      res.json().then((data) => {
        console.log(data.result);
        setUltimoUsuario(data.result);
      });
    });
  }

  useEffect(() => {
    let abortController = new AbortController();
    getDBConnection();
    return () => {
      abortController.abort();
    };
  }, []);

  const value = {
    DBConnection,
    dbUsuarios,
    todosUsuarios,
    ultimoUsuario,
    getDBConnection,
    getUsuarios,
    getTodosUsuarios,
    getUltimoUsuario,
  };

  return <DBContext.Provider value={value}>{children}</DBContext.Provider>;
}

export default DBContext;
