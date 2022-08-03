const oracledb = require("oracledb");
const express = require("express");
const bodyParser = require("body-parser");
var cors = require("cors");

//VARIABLES DEL SISTEMA
let connection; //objecto que representa la conexion a Oracle
conexionExitosa = false; //variable para llevar el estado de la conexion
const app = express(); //objeto que representa al servidor que escucha en puerto 5000
const port = 5000; //puerto donde se hace la conexion
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());

//FUNCIONES START HERE!!!!

//Funcion principal para conectar a la DB Oracle:
async function connectDB() {
  try {
    connection = await oracledb.getConnection({
      user: "ESTUDIANTE",
      password: "12345",
      connectionString: "localhost:1521/ORCL",
    });
    console.log("Conexion a DB Oracle exitosa");
    conexionExitosa = true;
  } catch (error) {
    console.error(error);
  }
}

//funcion para verificar cual es el usuario actual en la DB:
async function getDBUsuarios() {
  try {
    const usuarios = await connection.execute(`SELECT * From USUARIOS`, []);
    console.log("Usuarios en esta funcion: " + usuarios);
    return usuarios.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//funcion para verificar cual es el usuario actual en la DB:
async function getDBTotalUsuarios() {
  try {
    let plSQL = `
                  DECLARE
                  result NUMBER;
                  BEGIN 
                    :result := TOTALUSUARIOS(); 
                  END; 
                `;
    const totalUsuarios = await connection.execute(plSQL, {
      result: { dir: oracledb.BIND_OUT, type: oracledb.NUMBER },
    });
    console.log("Total de usuarios en DB: " + totalUsuarios.outBinds.result);
    return totalUsuarios.outBinds.result;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//funcion para verificar cual es el usuario actual en la DB:
async function getDBLastUsuario() {
  try {
    let plSQL = `
                  DECLARE
                  result VARCHAR2(100);
                  BEGIN 
                    :result := ULTIMOUSUARIO(); 
                  END; 
                `;
    const ultimoEmpleado = await connection.execute(plSQL, {
      result: { dir: oracledb.BIND_OUT, type: oracledb.STRING, maxSize: 100 },
    });
    console.log("Ultimo usuario en DB: " + ultimoEmpleado.outBinds.result);
    return ultimoEmpleado.outBinds.result;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//funcion para verificar cual es el usuario actual en la DB:
async function addUsuario() {
  try {
    let plSQL = `
                  DECLARE
                  result VARCHAR2(100);
                  BEGIN 
                    :result := ULTIMOUSUARIO(); 
                  END; 
                `;
    const ultimoEmpleado = await connection.execute(plSQL, {
      result: { dir: oracledb.BIND_OUT, type: oracledb.STRING, maxSize: 100 },
    });
    console.log("Ultimo usuario en DB: " + ultimoEmpleado.outBinds.result);
    return ultimoEmpleado.outBinds.result;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//RUTAS START HERE!!!!!!

//ruta principal
app.get("/", (req, res) => {
  res.json({
    conexionExitosa: conexionExitosa, //se llama la variable conexionExitosa
  });
});

//ruta para obtener lista de usuarios
app.get("/listarUsuarios", async (req, res) => {
  const usuarios = await getDBUsuarios(); //se llama la funcion getDBUsuarios
  res.json({
    result: usuarios,
  });
});

//ruta para obtener lista de total de usuarios
app.get("/totalUsuarios", async (req, res) => {
  const total = await getDBTotalUsuarios(); //se llama la funcion getDBTotalUsuarios
  console.log("total: " + total);
  res.json({
    result: total,
  });
});

//ruta para obtener ultimo usuario
app.get("/ultimoUsuario", async (req, res) => {
  const ultimo = await getDBLastUsuario(); //se llama la funcion getDBLastUsuario
  console.log("ultimo usuario: " + ultimo);
  res.json({
    result: ultimo,
  });
});

//ruta para agregar usuario:
app.get("/agregarusuario", async (req, res) => {
  const resultado = await addUsuario(); //se llama la funcion getDBLastUsuario
  console.log("Resultado de usuario agregado: " + resultado);
  res.json({
    result: resultado,
  });
});

// Establecer conexion a DB cuando se ejecuta el servidor:
connectDB();

//Levantar servidor express:
app.listen(port, () =>
  console.log(`El Servidor express esta corriendo en el puerto: ${port}`)
);
