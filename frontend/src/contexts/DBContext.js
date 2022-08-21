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
  const [dbEmpleados, setDbEmpleados] = useState([]);
  const [dbProveedores, setDbProveedores] = useState([]);

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

  async function addUsuario(nombre1, nombre2, apellido1, apellido2, cedula) {
    const data = { nombre1, nombre2, apellido1, apellido2, cedula };
    fetch("http://localhost:5000/agregarusuario", {
      method: "POST", // or 'PUT'
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }

  async function deleteUsuario(id) {
    const data = { id };
    // console.log(dbUsuarios.filter(({ 0: n }) => n === id));
    fetch("http://localhost:5000/borrarusuario", {
      method: "POST", // or 'PUT'
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }

  async function UpdateUsuario(
    id,
    nombre1,
    nombre2,
    apellido1,
    apellido2,
    cedula
  ) {
    const data = { id, nombre1, nombre2, apellido1, apellido2, cedula };
    // console.log(dbUsuarios.filter(({ 0: n }) => n === id));
    fetch("http://localhost:5000/actualizarusuario", {
      method: "POST", // or 'PUT'
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    })
      .then((response) => response.json())
      .then((data) => {
        console.log("Success:", data);
      })
      .catch((error) => {
        console.error("Error:", error);
      });
  }

  async function getEmpleados() {
    fetch("http://localhost:5000/listarEmpleados").then((res) => {
      res.json().then((data) => {
        console.log(data.result);
        setDbEmpleados(data.result);
      });
    });
  }

  async function getDbProveedores() {
    fetch("http://localhost:5000/listarProveedores").then((res) => {
      res.json().then((data) => {
        console.log(data.result);
        setDbProveedores(data.result);
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
    dbEmpleados,
    dbProveedores,
    getDBConnection,
    getUsuarios,
    getTodosUsuarios,
    getUltimoUsuario,
    addUsuario,
    deleteUsuario,
    UpdateUsuario,
    getEmpleados,
    getDbProveedores,
  };

  return <DBContext.Provider value={value}>{children}</DBContext.Provider>;
}

export default DBContext;
