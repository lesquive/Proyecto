import * as React from "react";
import Box from "@mui/material/Box";
import Grid from "@mui/material/Grid";
import Card from "@mui/material/Card";
import CardActions from "@mui/material/CardActions";
import CardContent from "@mui/material/CardContent";
import Button from "@mui/material/Button";
import Typography from "@mui/material/Typography";
import Avatar from "@mui/material/Avatar";
import fideLogo from "./../imagenes/logo-fidelitas.png";

export default function Equipo() {
  return (
    <Box
      sx={{
        display: "flex",
        flexDirection: "column",
        minHeight: "80vh",
      }}
    >
      <Typography variant="h1" component="div" gutterBottom mb={8}>
        {" "}
        El equipo:
      </Typography>
      <Grid
        container
        spacing={2}
        direction="row"
        justifyContent="center"
        alignItems="center"
      >
        <Grid item>
          <Card sx={{ minWidth: 275, minHeight: 300 }}>
            <CardContent>
              <Typography
                sx={{ fontSize: 14 }}
                color="text.secondary"
                gutterBottom
              >
                Desarollador Oracle
              </Typography>
              <Avatar
                alt="Luis Esquivel"
                src="/static/images/avatar/1.jpg"
                sx={{ width: 56, height: 56, m: "auto" }}
              />

              <Typography variant="body2">
                <br />
                Luis Esquivel.
                <br />
                Estudiante de la fidelitas.
              </Typography>
            </CardContent>
          </Card>
        </Grid>
        <Grid item>
          {" "}
          <Card sx={{ minWidth: 275, minHeight: 300 }}>
            <CardContent>
              <Typography
                sx={{ fontSize: 14 }}
                color="text.secondary"
                gutterBottom
              >
                Desarolladora Oracle
              </Typography>
              <Avatar
                alt="Paula Luna"
                src="/static/images/avatar/1.jpg"
                sx={{ width: 56, height: 56, m: "auto" }}
              />

              <Typography variant="body2">
                <br />
                Paula Luna.
                <br />
                Estudiante de la fidelitas.
              </Typography>
            </CardContent>
          </Card>
        </Grid>
        <Grid item>
          {" "}
          <Card sx={{ minWidth: 275, minHeight: 300 }}>
            <CardContent>
              <Typography
                sx={{ fontSize: 14 }}
                color="text.secondary"
                gutterBottom
              >
                Desarollador Oracle
              </Typography>
              <Avatar
                alt="Camilo Duarte"
                src="/static/images/avatar/1.jpg"
                sx={{ width: 56, height: 56, m: "auto" }}
              />

              <Typography variant="body2">
                <br />
                Camilo Duarte.
                <br />
                Estudiante de la fidelitas.
              </Typography>
            </CardContent>
          </Card>
        </Grid>
        <Grid item>
          {" "}
          <Card sx={{ minWidth: 275, minHeight: 300 }}>
            <CardContent>
              <Typography
                sx={{ fontSize: 14 }}
                color="text.secondary"
                gutterBottom
              >
                Desarollador Oracle
              </Typography>
              <Avatar
                alt="Johan Solis"
                src="/static/images/avatar/1.jpg"
                sx={{ width: 56, height: 56, m: "auto" }}
              />

              <Typography variant="body2">
                <br />
                Johan Solis.
                <br />
                Estudiante de la fidelitas.
              </Typography>
            </CardContent>
          </Card>
        </Grid>
      </Grid>
      <Typography variant="subtitle1" component="div" gutterBottom mt={8}>
        {" "}
        Nosotros somos estudiantes de la Universidad Fidelitas encargados de
        desarrollar una aplicación para el Bar Restaurante Prive Lounge
        utilizando Oracle DB, Node.JS y React.
      </Typography>
      <img
        src={fideLogo}
        alt="Fide logo"
        width={250}
        style={{ alignSelf: "center" }}
      ></img>
    </Box>
  );
}
