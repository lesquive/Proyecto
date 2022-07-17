import React from 'react'
import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Toolbar from '@mui/material/Toolbar';
import Typography from '@mui/material/Typography';
import Button from '@mui/material/Button';
import MenuDropDown from './MenuDropDown';


export default function Header() {
    return (
        <Box sx={{ flexGrow: 1, minHeight: '10vh',}}>
          <AppBar position="static">
            <Toolbar>
              <MenuDropDown/>
              <Typography variant="h6" component="div" sx={{ flexGrow: 1 }}>
                Prive Lounge
              </Typography>
              <Button color="inherit">Log Out</Button>
            </Toolbar>
          </AppBar>
        </Box>
      );
}
