import React from "react";
import Card from "@mui/material/Card";
import CardActions from "@mui/material/CardActions";
import CardContent from "@mui/material/CardContent";
import CardMedia from "@mui/material/CardMedia";
import Button from "@mui/material/Button";
import Typography from "@mui/material/Typography";
import imagenBar from "../imagenes/bar-landing.jpg";
import DoneIcon from "@mui/icons-material/Done";
import ErrorIcon from "@mui/icons-material/Error";
import { useDB } from "./../contexts/DBContext";
import { Link } from "react-router-dom";

export default function Conexion() {
  const { DBConnection } = useDB();

  return (
    <Card sx={{ maxWidth: 345, margin: "auto" }}>
      <CardMedia component="img" alt="Bar" height="140" image={imagenBar} />
      <CardContent>
        <Typography gutterBottom variant="h5" component="div">
          Administracion de Base de Datos
        </Typography>
        <Typography variant="body2" color="text.secondary">
          Esta aplicación se utiliza para conectarse y administrar la base de
          datos de Prive Lounge. Si tiene alguna pregunta, comuníquese con el
          administrador del sistema.
        </Typography>
        {DBConnection && (
          <div>
            <Typography sx={{ mt: 2 }} color="Green">
              Conexión a base de datos: Exitosa
            </Typography>
            <DoneIcon color="success" />
          </div>
        )}
        {!DBConnection && (
          <div>
            <Typography sx={{ mt: 2 }} color="Red">
              Conexión a base de datos: Fallida
            </Typography>
            <ErrorIcon color="error" />
          </div>
        )}
      </CardContent>
      <CardActions>
        <Link to="equipo">
          <Button size="small">Más información</Button>
        </Link>
      </CardActions>
    </Card>
  );
}
