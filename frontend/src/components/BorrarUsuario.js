import * as React from "react";
import Button from "@mui/material/Button";
import Dialog from "@mui/material/Dialog";
import DialogActions from "@mui/material/DialogActions";
import DialogContent from "@mui/material/DialogContent";
import DialogContentText from "@mui/material/DialogContentText";
import DialogTitle from "@mui/material/DialogTitle";
import IconButton from "@mui/material/IconButton";
import { useDB } from "../contexts/DBContext";
import DeleteIcon from "@mui/icons-material/Delete";

export default function BorrarUsuario(props) {
  const [open, setOpen] = React.useState(false);
  const { deleteUsuario } = useDB();

  const handleClickOpen = () => {
    setOpen(true);
  };

  const handleClose = () => {
    setOpen(false);
  };

  const handleDeleteUser = () => {
    deleteUsuario(props.id);
    setOpen(false);
    window.location.reload(false);
  };

  return (
    <div>
      <IconButton aria-label="edit" onClick={handleClickOpen}>
        <DeleteIcon />
      </IconButton>
      <Dialog
        open={open}
        onClose={handleClose}
        aria-labelledby="alert-dialog-title"
        aria-describedby="alert-dialog-description"
      >
        <DialogTitle id="alert-dialog-title">
          ¿Está seguro de que desea eliminar este usuario?
        </DialogTitle>
        <DialogContent>
          <DialogContentText id="alert-dialog-description">
            Al eliminar a este usuario, eliminará los datos de forma permanente
          </DialogContentText>
        </DialogContent>
        <DialogActions>
          <Button onClick={handleClose}>Cancelar</Button>
          <Button onClick={handleDeleteUser} autoFocus>
            Aceptar
          </Button>
        </DialogActions>
      </Dialog>
    </div>
  );
}
