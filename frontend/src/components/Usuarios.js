import React from "react";
import { useDB } from "../contexts/DBContext";
import { useState, useEffect } from "react";
import Table from "@mui/material/Table";
import TableBody from "@mui/material/TableBody";
import TableCell from "@mui/material/TableCell";
import TableContainer from "@mui/material/TableContainer";
import TableHead from "@mui/material/TableHead";
import TableRow from "@mui/material/TableRow";
import Paper from "@mui/material/Paper";
import Box from "@mui/material/Box";
import Typography from "@mui/material/Typography";
import EditIcon from "@mui/icons-material/Edit";
import DeleteIcon from "@mui/icons-material/Delete";
import Button from "@mui/material/Button";
import Grid from "@mui/material/Grid";
import { useNavigate } from "react-router-dom";

export default function Usuarios() {
  const {
    getUsuarios,
    dbUsuarios,
    todosUsuarios,
    getTodosUsuarios,
    ultimoUsuario,
    getUltimoUsuario,
  } = useDB();
  let navigate = useNavigate();

  async function loadEmployees() {
    getUsuarios();
    getTodosUsuarios();
    getUltimoUsuario();
  }

  function addUser() {
    console.log("add user clicked!");
    let path = `/agregarusuario`;
    navigate(path);
  }

  useEffect(() => {
    let abortController = new AbortController();
    loadEmployees();
    return () => {
      abortController.abort();
    };
  }, []);

  return (
    <Box
      sx={{
        display: "flex",
        flexDirection: "column",
        minHeight: "80vh",
        ml: 2,
        mr: 2,
      }}
    >
      <Typography variant="h1" component="div" gutterBottom mb={8}>
        {" "}
        Usuarios:
      </Typography>
      <Grid
        container
        direction="row"
        sx={{ mb: 4 }}
        justifyContent="center"
        alignItems="center"
      >
        <Grid item xs={4}>
          <Typography
            variant="body1"
            component="div"
            gutterBottom
            sx={{ color: "green" }}
          >
            Total de Usuarios: {todosUsuarios}
          </Typography>
        </Grid>
        <Grid item xs={4}>
          <Typography
            variant="body1"
            component="div"
            gutterBottom
            sx={{ color: "blue" }}
          >
            Usuario mas Nuevo: {ultimoUsuario}
          </Typography>
        </Grid>
        <Grid item xs={4}>
          <Button variant="contained" color="success" onClick={addUser}>
            Agregar Usuario
          </Button>
        </Grid>
      </Grid>
      {dbUsuarios && (
        <TableContainer component={Paper}>
          <Table sx={{ minWidth: 650 }} aria-label="simple table" size="medium">
            <TableHead>
              <TableRow>
                <TableCell>ID</TableCell>
                <TableCell>Nombre</TableCell>
                <TableCell align="right">Segundo Nombre</TableCell>
                <TableCell align="right">Apellido</TableCell>
                <TableCell align="right">Segundo Apellido</TableCell>
                <TableCell align="right">Cedula</TableCell>
                <TableCell align="right">Editar</TableCell>
                <TableCell align="right">Borrar</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {dbUsuarios.map((row) => (
                <TableRow
                  key={row[0]}
                  sx={{ "&:last-child td, &:last-child th": { border: 0 } }}
                >
                  <TableCell component="th" scope="row">
                    {row[0]}
                  </TableCell>
                  <TableCell component="th" scope="row">
                    {row[1]}
                  </TableCell>
                  <TableCell align="right">{row[2]}</TableCell>
                  <TableCell align="right">{row[3]}</TableCell>
                  <TableCell align="right">{row[4]}</TableCell>
                  <TableCell align="right">{row[5]}</TableCell>
                  <TableCell align="right">{<EditIcon />}</TableCell>
                  <TableCell align="right">{<DeleteIcon />}</TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </TableContainer>
      )}
    </Box>
  );
}
