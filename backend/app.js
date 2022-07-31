const oracledb = require("oracledb");
const express = require("express");
const bodyParser = require("body-parser");
var cors = require("cors");

//variables del sistema:
let connection; //objecto que representa la conexion a Oracle
conexionExitosa = false; //variable para llevar el estado de la conexion
const app = express(); //objeto que representa al servidor que escucha en puerto 5000
const port = 5000; //puerto donde se hace la conexion
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());
app.use(cors());

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
async function getDBEmployees() {
  try {
    const user = await connection.execute(`SELECT * From USUARIOS`, []);
    console.log("users in this function: " + user);
    return user.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//funcion para verificar cual es el usuario actual en la DB:
async function getDBTotalEmployees() {
  try {
    let plSQL = `
                  DECLARE
                  result NUMBER;
                  BEGIN 
                    :result := TOTALEMPLOYEES(); 
                  END; 
                `;
    const totalEmpleados = await connection.execute(plSQL, {
      result: { dir: oracledb.BIND_OUT, type: oracledb.NUMBER },
    });
    console.log("Total users in employees: " + totalEmpleados.outBinds.result);
    return totalEmpleados.outBinds.result;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//ruta principal
app.get("/", (req, res) => {
  res.json({
    conexionExitosa: conexionExitosa, //se llama la variable conexionExitosa
  });
});

//ruta para obtener lista de empleados
app.get("/listEmployees", async (req, res) => {
  const employees = await getDBEmployees(); //se llama la funcion getDBEmployees
  res.json({
    result: employees,
  });
});

//ruta para obtener lista de total de empleados
app.get("/totalEmployees", async (req, res) => {
  const total = await getDBTotalEmployees(); //se llama la funcion getDBTotalEmployees
  console.log("total: " + total);
  res.json({
    result: total,
  });
});

// Establecer conexion a DB cuando se ejecuta el servidor:
connectDB();

//Levantar servidor express:
app.listen(port, () => console.log(`Server is up and running on port ${port}`));
