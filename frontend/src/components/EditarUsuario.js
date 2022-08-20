import { useState } from "react";
import Button from "@mui/material/Button";
import Dialog from "@mui/material/Dialog";
import DialogActions from "@mui/material/DialogActions";
import DialogContent from "@mui/material/DialogContent";
import TextField from "@mui/material/TextField";
import DialogTitle from "@mui/material/DialogTitle";
import IconButton from "@mui/material/IconButton";
import EditIcon from "@mui/icons-material/Edit";
import { useDB } from "../contexts/DBContext";

export default function EditarUsuario(props) {
  const [open, setOpen] = useState(false);
  const [nombre, setNombre] = useState(props.nombre);
  const [segundoNombre, setSegundoNombre] = useState(props.segundoNombre);
  const [apellido, setApellido] = useState(props.apellido);
  const [segundoApellido, setSegundoApellido] = useState(props.segundoApellido);
  const [cedula, setCedula] = useState(props.cedula);
  const { UpdateUsuario } = useDB();

  const handleClickOpen = () => {
    setOpen(true);
  };

  const handleClose = () => {
    setOpen(false);
  };

  const handleUpdateUser = () => {
    console.log(nombre, segundoNombre, apellido, segundoApellido, cedula);
    UpdateUsuario(
      props.id,
      nombre,
      segundoNombre,
      apellido,
      segundoApellido,
      cedula
    );
    setOpen(false);
    window.location.reload(false);
  };

  return (
    <div>
      <IconButton aria-label="edit" onClick={handleClickOpen}>
        <EditIcon />
      </IconButton>
      <Dialog
        open={open}
        onClose={handleClose}
        aria-labelledby="alert-dialog-title"
        aria-describedby="alert-dialog-description"
      >
        <DialogTitle id="alert-dialog-title">Editar Usuario</DialogTitle>
        <DialogContent>
          <TextField
            sx={{ m: 1 }}
            required
            id="outlined-required"
            label="Nombre"
            defaultValue={nombre}
            onChange={(e) => {
              setNombre(e.target.value);
            }}
          />
          <TextField
            sx={{ m: 1 }}
            required
            id="outlined-required"
            label="Segundo Nombre"
            defaultValue={segundoNombre}
            onChange={(e) => {
              setSegundoNombre(e.target.value);
            }}
          />
          <TextField
            sx={{ m: 1 }}
            required
            id="outlined-required"
            label="Apellido"
            defaultValue={apellido}
            onChange={(e) => {
              setApellido(e.target.value);
            }}
          />
          <TextField
            sx={{ m: 1 }}
            required
            id="outlined-required"
            label="Segundo Apellido"
            defaultValue={segundoApellido}
            onChange={(e) => {
              setSegundoApellido(e.target.value);
            }}
          />
          <TextField
            sx={{ m: 1 }}
            required
            id="outlined-required"
            label="Cedula"
            defaultValue={cedula}
            onChange={(e) => {
              setCedula(e.target.value);
            }}
          />
        </DialogContent>
        <DialogActions>
          <Button onClick={handleClose}>Cancelar</Button>
          <Button onClick={handleUpdateUser} autoFocus>
            Guardar
          </Button>
        </DialogActions>
      </Dialog>
    </div>
  );
}
