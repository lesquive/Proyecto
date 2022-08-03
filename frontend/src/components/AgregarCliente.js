import React from "react";
import { useDB } from "../contexts/DBContext";
import { useState, useEffect } from "react";
import Box from "@mui/material/Box";
import Typography from "@mui/material/Typography";
import FormControl from "@mui/material/FormControl";
import TextField from "@mui/material/TextField";
import FormHelperText from "@mui/material/FormHelperText";
import Divider from "@mui/material/Divider";
import FormLabel from "@mui/material/FormLabel";
import Button from "@mui/material/Button";

export default function AgregarCliente() {
  const {} = useDB();

  useEffect(() => {
    let abortController = new AbortController();
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
        Agregar Cliente:
      </Typography>
      <box
        sx={{
          display: "flex",
          flexDirection: "column",
          margin: "auto",
        }}
      >
        <FormControl>
          <TextField id="nombre" label="Nombre" variant="standard" />
          <br></br>
          <TextField id="nombre2" label="Segundo Nombre" variant="standard" />
          <br></br>
          <TextField id="apellido" label="Apellido" variant="standard" />
          <br></br>
          <TextField
            id="apellido2"
            label="Segundo Apellido"
            variant="standard"
          />
          <br></br>
          <TextField id="cedula" label="Cedula" variant="standard" />
          {/* <FormHelperText id="my-helper-text">
            Ejemplo: Esquivel
          </FormHelperText> */}
          <br></br>
          <br></br>
          <Button variant="outlined" color="success">
            Listo!
          </Button>
        </FormControl>
      </box>
    </Box>
  );
}
