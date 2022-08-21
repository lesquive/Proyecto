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

export default function Proveedores() {
  const { dbProveedores, getDbProveedores } = useDB();

  async function loadProveedores() {
    getDbProveedores();
  }

  useEffect(() => {
    let abortController = new AbortController();
    loadProveedores();
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
        Proveedores
      </Typography>
      {dbProveedores && (
        <TableContainer component={Paper}>
          <Table sx={{ minWidth: 650 }} aria-label="simple table" size="medium">
            <TableHead>
              <TableRow>
                <TableCell>Proveedor</TableCell>
                <TableCell align="right">Email</TableCell>
                <TableCell align="right">Fecha Inicio</TableCell>
                <TableCell align="right">Horario</TableCell>
                <TableCell align="right">Telefono</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {dbProveedores.map((row) => (
                <TableRow
                  key={row[4]}
                  sx={{ "&:last-child td, &:last-child th": { border: 0 } }}
                >
                  <TableCell component="th" scope="row">
                    {row[0]}
                  </TableCell>
                  <TableCell align="right">{row[1]}</TableCell>
                  <TableCell align="right">{row[2]}</TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </TableContainer>
      )}
    </Box>
  );
}
