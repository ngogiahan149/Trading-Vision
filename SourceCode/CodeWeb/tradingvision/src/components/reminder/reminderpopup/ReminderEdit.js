import React, {useState, useEffect} from 'react'
import useStyles from '../style'

import {Button,
        
        Dialog,
        DialogActions,
        DialogContent,
        DialogContentText ,
        DialogTitle,
        Typography,
       
} from '@material-ui/core';
import AdapterDateFns from '@mui/lab/AdapterDateFns';
import LocalizationProvider from '@mui/lab/LocalizationProvider';
import DateTimePicker from '@mui/lab/DateTimePicker';
import TextField from '@mui/material/TextField';
import { useForm, Form } from '../useForm';
import Autocomplete from '@mui/material/Autocomplete';
import axios from 'axios'



const ReminderEdit = (props) => {
    const classes = useStyles()
    const [date, setDate] = React.useState(new Date());
    const {open, onClose} = props
    
    const initialFValues = {
        id: props.id,
        title: props.title,
        content: props.content,
        ticker: props.ticker,
        date: props.time,
    }
    const handleClose = () => {
      resetForm()
      
      onClose()
    };
    const validate = (fieldValues = values) => {
      let temp = { ...errors }
      if ('title' in fieldValues)
          temp.title = fieldValues.title ? "" : "This field is required."
      if ('content' in fieldValues)
          temp.content = fieldValues.content ? "" : "This field is required."
      if   ('ticker' in fieldValues)
          temp.ticker = fieldValues.ticker ? "" : "This field is required."
      setErrors({
          ...temp
      })

      if (fieldValues == values)
          return Object.values(temp).every(x => x == "")
  }
    const {
    values,
    setValues,
    errors,
    setErrors,
    handleInputChange,
    resetForm
    } = useForm(initialFValues, true, validate);
    const handleSubmit = e => {
        e.preventDefault()
        // ham insert reminder vo database
        if (validate()){
            resetForm()
            onClose()
        }
        
    }

    const [stocks, setStock] = useState([])

    useEffect(() => {
      componentDidMount()
    },[])

    const componentDidMount = async() => {
      axios.get(`/api/comapnmyinfo`)
      .then((response) =>{
        setStock(response.data.companyinfo)
      })
    }

    const listStocks = stocks.map((stock) =>{
      return {
        ticker: stock.Ticker,
      }
    })
    
    const options= listStocks.map((option) => {
      const firstLetter = option.ticker[0].toUpperCase();
      return {
        firstLetter: /[0-9]/.test(firstLetter) ? '0-9' : firstLetter,
        ...option,
      };
    });
    const [inputValue, setInputValue] = React.useState('');
    const [input, setInput] = useState()
 
    return (
        <div>
        
        <Dialog 
          open={open} 
          onClose={handleClose}
          PaperProps={{
            style: {
              backgroundColor: 'white',
              height: '430px',
              width: '555px',}
          }}
        >
        <Form onSubmit={handleSubmit}>
          <DialogTitle>
            <TextField
            component = "form"
              variant = "standard" //to disable outline
              required
              // defaultValue = "ACB"
              placeholder="Add Title" 
              noValidate
              autoComplete="off"
              InputProps={{ 
                    disableUnderline: true,
                    defaultValue: "This is the default value",
                    style:{
                      fontSize:"18px",
                      fontFamily: "Montserrat",
                      color:"black",
                    }}} 
              name="title"        
              value={props.title}
              onChange={handleInputChange}
              error={errors.title}
              helperText = {errors.title}
            /> 
          </DialogTitle>
          <div className={classes.line}></div>
          <DialogContent 
            className={classes.dialog_content}>
            <DialogContentText 
              style={{
                color:"black",
              }}> 
              <LocalizationProvider dateAdapter={AdapterDateFns}>
                  <DateTimePicker
                    component = "form"
                    noValidate
                    autoComplete="off"
                    renderInput={(props) => <TextField {...props} />}
                    name = "date"
                    value={props.time}
                    
                    onChange={(newValue) => {
                      setDate(newValue);
                    }}
                    className={classes.calendar}
                    inputProps={{
                        disableUnderline: true,
                        style: {
                          color: "black",
                          fontFamily:"Montserrat",
                          fontSize:"15px",
                        },
                        readOnly: true,
                        
                      }}
                  />
              </LocalizationProvider>
            </DialogContentText>

            <DialogContentText>
            <Autocomplete
                id="grouped-demo"
                selectOnFocus
                options={options.sort((a, b) => -b.firstLetter.localeCompare(a.firstLetter))}
                groupBy={(option) => option.firstLetter}
                getOptionLabel={(option) => option.ticker }
                sx={{ width: 300 }}
                getOptionSelected={(option, values) => option.ticker === values.ticker}
                isOptionEqualToValue={(option, values) => option.ticker === values.ticker}
                defaultValue={options.filter((item) => {
                    return item.ticker === props.ticker;
                  })[0] || ""}
                onInputChange={(event, newValue) => {
                    setInput(newValue);
                  }}
                onChange={(event, newInputValue) => {
                      setInputValue(newInputValue);
                    }}
                renderInput={(params) => 
                <TextField 
                {...params} 
                required
                label={<Typography style={{fontFamily:"Montserrat"}} >Choose a ticker...</Typography>} />}
              />
            </DialogContentText>


            <DialogContentText>
                
                 <TextField
                  component = "form"                  
                  noValidate
                  autoComplete="off"
                  
                  required  
                  placeholder="Content"
                  multiline
                  rows={4}
                  className={classes.reminder}
                  InputProps={{
                    disableUnderline: true,
                    style:{
                      fontSize:"17px",
                      fontFamily: "Montserrat",
                      color:"black",
                      width:"500px",
                      },
                    }}
                  variant = "outlined"
                  size = "large"
                  name="content"        
                  value={props.content}
                  onChange={handleInputChange}
                  error={errors.content}
                  helperText={errors.content}
                  
                />
             
          </DialogContentText>
          </DialogContent>
          <DialogActions className={classes.btn}>
            <Button 
              type = "submit"
             
              className={classes.btn_Save}>Save</Button>
            <Button
              onClick={handleClose}
              className={classes.btn_Cancel}>Cancel</Button>
          </DialogActions>
          </Form>
        </Dialog>
      </div>
  )
}

export default ReminderEdit;