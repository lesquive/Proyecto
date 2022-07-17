import React from "react";
import Box from "@mui/material/Box";
import Conexion from "./Conexion";

export default function Body() {
  return (
    <Box
      sx={{
        display: "flex",
        flexDirection: "column",
        minHeight: "80vh",
      }}
    >
      <Conexion />
    </Box>
  );
}
