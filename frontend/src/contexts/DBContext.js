import { createContext, useContext, useState, useEffect } from "react";

const DBContext = createContext();

export function useDB() {
  return useContext(DBContext);
}

export function DBProvider({ children }) {
  const [DBConnection, setDBConnection] = useState(false);
  const [dbEmployees, setDbEmployees] = useState([]);
  const [allEmployeesCount, setAllEmployeesCount] = useState(0);
  const [lastEmployee, setLastEmployee] = useState("");

  async function getDBConnection() {
    fetch("http://localhost:5000/").then((res) => {
      res.json().then((data) => {
        console.log(data);
        setDBConnection(data.conexionExitosa);
      });
    });
  }

  async function getEmployees() {
    fetch("http://localhost:5000/listEmployees").then((res) => {
      res.json().then((data) => {
        console.log(data.result);
        setDbEmployees(data.result);
      });
    });
  }

  async function getAllEmployeesCount() {
    fetch("http://localhost:5000/totalEmployees").then((res) => {
      res.json().then((data) => {
        console.log(data.result);
        setAllEmployeesCount(data.result);
      });
    });
  }

  async function getLastEmployee() {
    fetch("http://localhost:5000/lastEmployee").then((res) => {
      res.json().then((data) => {
        console.log(data.result);
        setLastEmployee(data.result);
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
    dbEmployees,
    allEmployeesCount,
    lastEmployee,
    getDBConnection,
    getEmployees,
    getAllEmployeesCount,
    getLastEmployee,
  };

  return <DBContext.Provider value={value}>{children}</DBContext.Provider>;
}

export default DBContext;
