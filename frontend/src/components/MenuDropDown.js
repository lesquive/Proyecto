import React from "react";
import Menu from "@mui/material/Menu";
import MenuItem from "@mui/material/MenuItem";
import MenuIcon from "@mui/icons-material/Menu";
import IconButton from "@mui/material/IconButton";
import { useNavigate } from "react-router-dom";

export default function MenuDropDown() {
  const [anchorEl, setAnchorEl] = React.useState(null);
  const open = Boolean(anchorEl);
  let navigate = useNavigate();

  const RutaEmpleados = () => {
    let path = `/empleados`;
    navigate(path);
    handleClose();
  };

  const RuteClientes = () => {
    let path = `/usuarios`;
    navigate(path);
    handleClose();
  };

  const RutaProveedores = () => {
    let path = `/proveedores`;
    navigate(path);
    handleClose();
  };

  const handleClick = (event) => {
    setAnchorEl(event.currentTarget);
  };

  const handleClose = () => {
    setAnchorEl(null);
  };

  return (
    <div>
      <IconButton
        size="large"
        edge="start"
        color="inherit"
        aria-label="menu"
        sx={{ mr: 2 }}
        id="basic-button"
        aria-controls={open ? "basic-menu" : undefined}
        aria-haspopup="true"
        aria-expanded={open ? "true" : undefined}
        onClick={handleClick}
      >
        <MenuIcon />
      </IconButton>
      <Menu
        id="basic-menu"
        anchorEl={anchorEl}
        open={open}
        onClose={handleClose}
        MenuListProps={{
          "aria-labelledby": "basic-button",
        }}
      >
        <MenuItem onClick={RuteClientes}>Usuarios</MenuItem>
        <MenuItem onClick={RutaEmpleados}>Empleados</MenuItem>
        <MenuItem onClick={handleClose}>Inventario</MenuItem>
        <MenuItem onClick={handleClose}>Facturas</MenuItem>
        <MenuItem onClick={RutaProveedores}>Proveedores</MenuItem>
      </Menu>
    </div>
  );
}
