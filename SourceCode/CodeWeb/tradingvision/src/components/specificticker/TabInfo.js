import React from 'react'
import { TabContext, TabList, TabPanel } from '@material-ui/lab';
import {Tab, Divider, Typography, FormControlLabel, Switch} from '@material-ui/core'
import Profile from './Profile'
import Financials from './Financials'
import useStyles from './style'
import Collapse from '@mui/material/Collapse';


const TabInfo = () => {
  
  const [value, setValue] = React.useState('1');
  const handleChange = (event, newValue) => {
      setValue(newValue);
    };
  const classes = useStyles();
  const [expanded, setExpanded] = React.useState(true);


  return (
    <>
    <FormControlLabel
      control={<Switch 
              color="primary" 
              size='normal'
              checked={expanded}
              className={classes.toogle}
              onChange={() => {
                  setExpanded((prev) => !prev);
              
                }} />}
        label={<Typography className={classes.formControlLabel}>Show/Hide details</Typography>}
        
        />
    <TabContext value={value}>
        <Collapse in={expanded} timeout="auto" unmountOnExit>
          <TabList
                className={classes.tablist}
                onChange={handleChange} 
                aria-label="simple tabs "
                
                TabIndicatorProps={{
                style: {
                    backgroundColor: "rgba(0,0,0,0)",
                },
                
                }}>
                    <Tab 
                      label="Profile" 
                      value="1" 
                      className={classes.tab}/>
                    <Divider 
                      orientation="vertical" 
                      variant="inset" 
                      flexItem 
                      className={classes.divider}
                      style={{
                            height:"50px",
                            marginTop: "10px",
                            marginLeft: "-25px",
                            backgroundColor: "rgba(255, 165, 0, 0.5)"
                            }}
                      />
                    <Tab 
                      label="Financials" 
                      value="2" 
                      className={classes.tab}/>
                </TabList>
          <TabPanel value="1"><Profile/></TabPanel>
          <TabPanel value="2"><Financials/></TabPanel>
        </Collapse> </TabContext>
      </>
  )
}

export default TabInfo