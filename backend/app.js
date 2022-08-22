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
      user: "PRIVE",
      password: "12345",
      connectionString: "localhost:1521/ORCL",
    });
    console.log("Conexion a DB Oracle exitosa");
    conexionExitosa = true;
  } catch (error) {
    console.error(error);
  }
}

//funcion para verificar cuales son los clientes en la DB
async function getDBUsuarios() {
  try {
    const usuarios = await connection.execute(
      `SELECT * From USUARIOS ORDER BY ID_USUARIO DESC`,
      []
    );
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
async function addUsuario(name1, name2, lastname1, lastname2, cedu) {
  try {
    const result = await connection.execute(
      `BEGIN PKG_CREATE_USER.USER_DATA(:NOMBRE1, :NOMBRE2, :APELLIDO1, :APELLIDO2, :CEDULA); END;`,
      {
        NOMBRE1: name1,
        NOMBRE2: name2,
        APELLIDO1: lastname1,
        APELLIDO2: lastname2,
        CEDULA: cedu,
      },
      { autoCommit: true }
    );
    console.log("INSERT exitoso");
  } catch (error) {
    console.error(error);
    return error;
  }
}

async function deleteUsuario(id) {
  try {
    const usuarios = await connection.execute(
      `BEGIN ELIMINAR(:ID_USUARIO);END;`,
      { ID_USUARIO: id },
      { autoCommit: true }
    );
    console.log("Usuario Eliminado");
    return usuarios.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
}

async function updateUsuario(
  id,
  nombre1,
  nombre2,
  apellido1,
  apellido2,
  cedula
) {
  try {
    const usuarios = await connection.execute(
      `BEGIN ACTUALIZAR(:ID_USUARIO,:NOMBRE1, :NOMBRE2, :APELLIDO1, :APELLIDO2, :CEDULAU);END;`,
      {
        ID_USUARIO: id,
        NOMBRE1: nombre1,
        NOMBRE2: nombre2,
        APELLIDO1: apellido1,
        APELLIDO2: apellido2,
        CEDULAU: cedula,
      },
      { autoCommit: true }
    );
    console.log("Usuario ACTUALIZADO");
    return usuarios.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//funcion para verificar cuales son los empleados en la DB
async function getDBEmpleados() {
  try {
    const result = await connection.execute(
      `BEGIN
        GETEMPLEADOS(:cursor);
       END;`,
      {
        cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT },
      }
    );
    const resultSet1 = result.outBinds.cursor;
    const rows1 = await resultSet1.getRows(); // no parameter means get all rows
    return rows1;
    // return usuarios.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//funcion para verificar cuales son los proveedores en la DB
async function getDBProveedores() {
  try {
    const result = await connection.execute(
      `BEGIN
        GETPROVEEDORES(:cursor);
       END;`,
      {
        cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT },
      }
    );
    const resultSet1 = result.outBinds.cursor;
    const rows1 = await resultSet1.getRows(); // no parameter means get all rows
    return rows1;
    // return usuarios.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//funcion para verificar cuales son los inventario en la DB
async function getDBInventario() {
  try {
    const result = await connection.execute(
      `BEGIN
        GETINVENTARIO(:cursor);
       END;`,
      {
        cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT },
      }
    );
    const resultSet1 = result.outBinds.cursor;
    const rows1 = await resultSet1.getRows(); // no parameter means get all rows
    return rows1;
    // return usuarios.rows;
  } catch (error) {
    console.error(error);
    return error;
  }
}

//funcion para verificar cuales son las ordenes en la DB
async function getDBOrden() {
  try {
    const result = await connection.execute(
      `BEGIN
        GETORDEN(:cursor);
       END;`,
      {
        cursor: { type: oracledb.CURSOR, dir: oracledb.BIND_OUT },
      }
    );
    const resultSet1 = result.outBinds.cursor;
    const rows1 = await resultSet1.getRows(); // no parameter means get all rows
    return rows1;
    // return usuarios.rows;
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
app.post("/agregarusuario", async (req, res) => {
  let nombre1 = req.body.nombre1;
  let nombre2 = req.body.nombre2;
  let apellido1 = req.body.apellido1;
  let apellido2 = req.body.apellido2;
  let cedula = req.body.cedula;
  const ultimo = await addUsuario(
    nombre1,
    nombre2,
    apellido1,
    apellido2,
    cedula
  ); //se llama la funcion addUsuario
  console.log("Success");
});

app.post("/borrarusuario", async (req, res) => {
  let ID_USUARIO = req.body.id;
  const ultimo = await deleteUsuario(ID_USUARIO); //se llama la funcion addUsuario
  console.log("Success");
});

app.post("/actualizarusuario", async (req, res) => {
  console.log(req.body);
  let ID_USUARIO = req.body.id;
  let nombre1 = req.body.nombre1;
  let nombre2 = req.body.nombre2;
  let apellido1 = req.body.apellido1;
  let apellido2 = req.body.apellido2;
  let cedula = req.body.cedula;
  const ultimo = await updateUsuario(
    ID_USUARIO,
    nombre1,
    nombre2,
    apellido1,
    apellido2,
    cedula
  ); //se llama la funcion updateUsuario
  console.log("USUARIO ACTUALIZADO");
});

app.get("/listarEmpleados", async (req, res) => {
  const empleados = await getDBEmpleados(); //se llama la funcion getDBUsuarios
  res.json({
    result: empleados,
  });
});

app.get("/listarProveedores", async (req, res) => {
  const proveedores = await getDBProveedores(); //se llama la funcion getDBUsuarios
  res.json({
    result: proveedores,
  });
});

app.get("/listarInventario", async (req, res) => {
  const inventario = await getDBInventario(); //se llama la funcion getDBUsuarios
  res.json({
    result: inventario,
  });
});

app.get("/listarOrden", async (req, res) => {
  const orden = await getDBOrden(); //se llama la funcion getDBUsuarios
  res.json({
    result: orden,
  });
});

// Establecer conexion a DB cuando se ejecuta el servidor:
connectDB();

//Levantar servidor express:
app.listen(port, () =>
  console.log(`El Servidor express esta corriendo en el puerto: ${port}`)
);
