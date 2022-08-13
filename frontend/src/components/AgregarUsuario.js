import React from "react";
import { useDB } from "../contexts/DBContext";
import { useState, useEffect } from "react";
import Box from "@mui/material/Box";
import Typography from "@mui/material/Typography";
import FormControl from "@mui/material/FormControl";
import TextField from "@mui/material/TextField";
import Button from "@mui/material/Button";

export default function AgregarUsuario() {
  const { addUsuario } = useDB();
  const [nombre1, setNombre] = useState("");
  const [nombre2, setNombre2] = useState("");
  const [apellido1, setApellido] = useState("");
  const [apellido2, setApellido2] = useState("");
  const [cedula, setCedula] = useState("");

  const handleCreateNewItem = (e) => {
    console.log("Made it here!");
    e.preventDefault();
    console.log(nombre1, nombre2, apellido1, apellido2, cedula);
    addUsuario(nombre1, nombre2, apellido1, apellido2, cedula);
  };

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
      <Typography variant="h1" component="div" gutterBottom>
        {" "}
        Agregar Usuario:
      </Typography>
      <Box
        sx={{
          display: "flex",
          flexDirection: "column",
          margin: "auto",
        }}
      >
        <FormControl>
          <TextField
            id="nombre"
            label="Nombre"
            variant="standard"
            onChange={(e) => setNombre(e.target.value)}
          />
          <br></br>
          <TextField
            id="nombre2"
            label="Segundo Nombre"
            variant="standard"
            onChange={(e) => setNombre2(e.target.value)}
          />
          <br></br>
          <TextField
            id="apellido"
            label="Apellido"
            variant="standard"
            onChange={(e) => setApellido(e.target.value)}
          />
          <br></br>
          <TextField
            id="apellido2"
            label="Segundo Apellido"
            variant="standard"
            onChange={(e) => setApellido2(e.target.value)}
          />
          <br></br>
          <TextField
            id="cedula"
            label="Cedula"
            variant="standard"
            onChange={(e) => setCedula(e.target.value)}
          />
          <br></br>
          <br></br>
          <Button
            variant="outlined"
            color="success"
            onClick={handleCreateNewItem}
          >
            Listo!
          </Button>
        </FormControl>
      </Box>
    </Box>
  );
}
