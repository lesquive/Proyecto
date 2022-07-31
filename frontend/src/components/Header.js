import React from "react";
import AppBar from "@mui/material/AppBar";
import Box from "@mui/material/Box";
import Toolbar from "@mui/material/Toolbar";
import Typography from "@mui/material/Typography";
import HomeIcon from "@mui/icons-material/Home";
import MenuDropDown from "./MenuDropDown";
import IconButton from "@mui/material/IconButton";
import { useNavigate } from "react-router-dom";

export default function Header() {
  let navigate = useNavigate();

  const routeChange = () => {
    let path = `/`;
    navigate(path);
  };

  return (
    <Box sx={{ flexGrow: 1, minHeight: "10vh" }}>
      <AppBar position="static">
        <Toolbar>
          <MenuDropDown />
          <Typography variant="h6" component="div" sx={{ flexGrow: 1 }}>
            Prive Lounge
          </Typography>
          <IconButton aria-label="home" color="inherit" onClick={routeChange}>
            <HomeIcon />
          </IconButton>
        </Toolbar>
      </AppBar>
    </Box>
  );
}
