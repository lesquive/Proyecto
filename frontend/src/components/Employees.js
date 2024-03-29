import React from "react";
import { useDB } from "./../contexts/DBContext";
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

export default function Employees() {
  const { dbEmpleados, getEmpleados } = useDB();

  async function loadEmployees() {
    getEmpleados();
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
        Empleados:
      </Typography>
      {dbEmpleados && (
        <TableContainer component={Paper}>
          <Table sx={{ minWidth: 650 }} aria-label="simple table" size="medium">
            <TableHead>
              <TableRow>
                <TableCell>Nombre</TableCell>
                <TableCell align="right">Segundo Nombre</TableCell>
                <TableCell align="right">Salario</TableCell>
                <TableCell align="right">Turno</TableCell>
                <TableCell align="right">Telefono</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {dbEmpleados.map((row) => (
                <TableRow
                  key={row[4]}
                  sx={{ "&:last-child td, &:last-child th": { border: 0 } }}
                >
                  <TableCell component="th" scope="row">
                    {row[0]}
                  </TableCell>
                  <TableCell align="right">{row[1]}</TableCell>
                  <TableCell align="right">{row[2]}</TableCell>
                  <TableCell align="right">{row[3]}</TableCell>
                  <TableCell align="right">{row[4]}</TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </TableContainer>
      )}
    </Box>
  );
}
