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
import IconButton from "@mui/material/IconButton";
import AddShoppingCartIcon from "@mui/icons-material/AddShoppingCart";
import Button from "@mui/material/Button";
import Card from "@mui/material/Card";
import CardContent from "@mui/material/CardContent";
import Grid from "@mui/material/Grid";
import Dialog from "@mui/material/Dialog";
import DialogActions from "@mui/material/DialogActions";
import DialogContent from "@mui/material/DialogContent";
import DialogContentText from "@mui/material/DialogContentText";
import DialogTitle from "@mui/material/DialogTitle";
import Divider from "@mui/material/Divider";
import Snackbar from "@mui/material/Snackbar";
import MuiAlert from "@mui/material/Alert";

const Alert = React.forwardRef(function Alert(props, ref) {
  return <MuiAlert elevation={6} ref={ref} variant="filled" {...props} />;
});

export default function Facturar() {
  const { dbInventario, getDbInventario } = useDB();
  const [total, setTotal] = useState(0);
  const [factura, setFactura] = useState([]);
  const [open, setOpen] = React.useState(false);
  const [openFacturaExitosa, setOpenFacturaExitosa] = React.useState(false);

  async function loadInventario() {
    getDbInventario();
  }

  function getFactura() {
    handleClickOpen();
    console.log(factura);
  }

  const handleClickOpen = () => {
    setOpen(true);
  };

  const handleClose = () => {
    setOpen(false);
  };

  const handleClickFacturaExitosa = () => {
    handleClose();
    setOpenFacturaExitosa(true);
  };

  const handleCloseFacturaExitosa = (event, reason) => {
    if (reason === "clickaway") {
      return;
    }

    setOpenFacturaExitosa(false);
  };

  useEffect(() => {
    let abortController = new AbortController();
    loadInventario();
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
        Facturar
      </Typography>
      {total > 1 && (
        <Grid container direction="column" alignItems="center" justify="center">
          <Grid item>
            <Card sx={{ minWidth: 275, mb: 2, maxWidth: 300 }}>
              <CardContent>
                <Typography
                  variant="h5"
                  component="div"
                  gutterBottom
                  sx={{ color: "green" }}
                >
                  {" "}
                  Total: {total}
                </Typography>
                <Button variant="outlined" onClick={getFactura}>
                  Facturar
                </Button>
              </CardContent>
            </Card>
          </Grid>
        </Grid>
      )}
      {dbInventario && (
        <TableContainer component={Paper}>
          <Table sx={{ minWidth: 650 }} aria-label="simple table" size="medium">
            <TableHead>
              <TableRow>
                <TableCell>Descripcion</TableCell>
                <TableCell align="right">Precio</TableCell>
                <TableCell align="right">Agregar</TableCell>
              </TableRow>
            </TableHead>
            <TableBody>
              {dbInventario.map((row) => (
                <TableRow
                  key={row[0]}
                  sx={{ "&:last-child td, &:last-child th": { border: 0 } }}
                >
                  <TableCell component="th" scope="row">
                    {row[0]}
                  </TableCell>
                  <TableCell align="right">{row[1]}</TableCell>
                  <TableCell align="right">
                    <IconButton
                      aria-label="add"
                      color="success"
                      onClick={() => {
                        setTotal(total + row[1]);
                        let tmp = factura;
                        tmp.push([row[0], row[1]]);
                        setFactura(tmp);
                      }}
                    >
                      <AddShoppingCartIcon />
                    </IconButton>
                  </TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </TableContainer>
      )}
      <Dialog
        open={open}
        onClose={handleClose}
        aria-labelledby="alert-dialog-title"
        aria-describedby="alert-dialog-description"
        sx={{ textAlign: "center" }}
      >
        <DialogTitle id="alert-dialog-title">Factura Prive Launge</DialogTitle>
        <DialogContent>
          <DialogContentText id="alert-dialog-description">
            Estos son los artículos que facturaremos a su tarjeta
          </DialogContentText>
          {factura.map((articulo) => (
            <Grid
              container
              direction="row"
              justifyContent="center"
              alignItems="center"
              spacing={1}
              sx={{ mb: 0.5, mt: 0.5 }}
              key={articulo[0]}
            >
              <Grid item>{articulo[0]}</Grid>
              <Grid item>{articulo[1]}</Grid>
            </Grid>
          ))}
          <Divider />
          <DialogContentText id="total" sx={{ textAlign: "right" }}>
            Total: {total}
          </DialogContentText>
        </DialogContent>
        <DialogActions>
          <Button onClick={handleClose}>Cancelar</Button>
          <Button onClick={handleClickFacturaExitosa} autoFocus>
            Finalizar compra
          </Button>
        </DialogActions>
      </Dialog>
      <Snackbar
        open={openFacturaExitosa}
        autoHideDuration={6000}
        onClose={handleClose}
      >
        <Alert
          onClose={handleCloseFacturaExitosa}
          severity="success"
          sx={{ width: "100%" }}
        >
          Facturación exitosa. ¡Gracias por su visita!
        </Alert>
      </Snackbar>
    </Box>
  );
}
