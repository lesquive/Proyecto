const oracledb = require("oracledb");
const express = require("express");
const bodyParser = require("body-parser");
var cors = require("cors");

//variables del sistema:
let connection; //objecto que representa la conexion a Oracle
conexionExitosa = false; //variable para llevar el estado de la conexion
const app = express(); //objeto que representa al servidor que escucha en puerto 5000
const port = 5000;
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
async function getDBUser() {
  try {
    const user = await connection.execute(`SELECT * From USUARIOS`, []);
    console.log(user);
    return user.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//funcion para la ruta /
app.get("/", (req, res) => {
  res.json({
    conexionExitosa: conexionExitosa,
  });
});

//funcion para hacer la conexion a Oracle /
app.get("/connectDB", async (req, res) => {
  const user = await getDBUser();
  res.json({
    result: user,
  });
});

// Establecer conexion a DB:
connectDB();

//Levantar servidor express:
app.listen(port, () => console.log(`Server is up and running on port ${port}`));
