import React, {useEffect, useState} from 'react'
import Dialog from '@mui/material/Dialog';
import DialogActions from '@mui/material/DialogActions';
import DialogContent from '@mui/material/DialogContent';
import DialogContentText from '@mui/material/DialogContentText';
import DialogTitle from '@mui/material/DialogTitle';
import Button from '@mui/material/Button';
import DeleteForeverIcon from '@mui/icons-material/DeleteForever';
import axios from 'axios';
import { ToastContainer, toast, Slide } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import useStyles from './style'

const ReminderDelete = (props) => {
  const classes = useStyles()


  

  return (
    <Dialog
              open={props.open}
              onClose={props.onClose}
              aria-labelledby="alert-dialog-title"
              aria-describedby="alert-dialog-description"
              BackdropProps={{
                style: { backgroundColor: "rgba(0,0,0,0.10)" },
              }}
            >
             
              <DialogTitle id="alert-dialog-title" color = '#f12323' align = "center">
              <DeleteForeverIcon
                align = "center" 
                sx = {{
                  fontSize:80,
                  color:'#f12323',}}/> <br/>
               You are about to delete {props.ticker}
              </DialogTitle>
              <DialogContent>
                <DialogContentText id="alert-dialog-description" align = "center">
                  This will delete {props.ticker} from favorite list. <br/>Are you sure?
                </DialogContentText>
              </DialogContent>
              <DialogActions>
                <Button 
                  onClick={()=>{props.deleteFavoriteStock(props.rowID); props.onClose()}}
                  sx = {{
                    color: 'white',
                    backgroundColor:'#f12312',
                    "&:hover":{
                      backgroundColor:"#D11A2A",
                    }
                  }}>Delete</Button>
                  
                <Button 
                  onClick={()=>{props.onClose()}}
                  sx = {{
                    color: 'white',
                    backgroundColor:'#c1c1c1',
                    "&:hover":{
                      backgroundColor:"#AAAAAA",
                    }
                  }}
                  >
                  Cancel
                </Button>
              </DialogActions>
            </Dialog>
  )
}

export default ReminderDelete