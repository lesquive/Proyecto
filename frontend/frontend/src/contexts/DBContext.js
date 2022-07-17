import { createContext, useContext, useState, useEffect } from "react";

const DBContext = createContext();

export function useDB() {
  return useContext(DBContext);
}

export function DBProvider({ children }) {
  const [DBConnection, setDBConnection] = useState(false);

  async function getDBConnection() {
    fetch("http://localhost:5000/").then((res) => {
      res.json().then((data) => {
        console.log(data);
        setDBConnection(data.conexionExitosa);
      });
    });
  }

  async function getUsuarios() {
    fetch("http://localhost:5000/connectDB").then((res) => {
      res.json().then((data) => {
        console.log(data);
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

  const value = { DBConnection, getDBConnection };

  return <DBContext.Provider value={value}>{children}</DBContext.Provider>;
}

export default DBContext;
