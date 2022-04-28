

import {makeStyles} from '@material-ui/core'

const useStyles = makeStyles((theme) => ({
    // Tab's styles
    tablist:{
        color: "orange",
      },
    tab:{
        marginTop: 15,
        fontFamily: "Montserrat",
        // marginLeft: -20,
        fontSize: 15,
        [theme.breakpoints.down('sm')]: {
            fontSize: 13,
          },
    },
    divider:{
        height:"50px",
        marginTop: "10px",
        marginLeft: "2%",
        marginRight: "2%",
        backgroundColor: "rgba(255, 165, 0, 0.5)",
        
    },
    // Profile's styles
    grid:{
        paddingTop: 25,
    },
    description:{
        fontFamily:"Montserrat",
        fontSize:"15px",
        textAlign: "justify",
        [theme.breakpoints.down('sm')]: {
            fontSize: 13,
          },
    },
    profile:{
        maxWidth: "1000px",
    },
    item: {
        fontFamily: "Montserrat",
        fontSize: "15px",
        marginTop: '20px',
        [theme.breakpoints.down('sm')]: {
            fontSize: 13,
            marginTop:"10%",
          },
        // [theme.breakpoints.down('xs')]: {
        //     fontSize: 10,
        //     marginTop:"15px",
        //     },
    },
    value:{
        fontFamily: "Montserrat",
        fontSize: "15px",
        marginTop: '20px',
        [theme.breakpoints.down('sm')]: {
            fontSize: 11,
            marginTop:"10%",
            marginLeft:"15%",
          },
        [theme.breakpoints.down('xs')]: {
            fontSize: 10,
            marginTop:"9%",
            marginLeft:"23%",
            },
    },
    grid_info:{
        marginLeft: "-35%",
        [theme.breakpoints.up('sm')]: {
            marginLeft: "-25%"
          },
    },

    // Financial's styles
    item_financial: {
        fontFamily: "Montserrat",
        fontSize: "15px",
        [theme.breakpoints.down('md')]: {
            fontSize: 12,
            marginTop:"10%",
          },
        [theme.breakpoints.down('sm')]: {
            fontSize: 10,
            marginTop:"12%",
          },
        [theme.breakpoints.down('xs')]: {
            fontSize: 10,
            marginTop:"10%",
            },
    },
    value_financial:{
        fontFamily: "Montserrat",
        fontSize: "15px",
        [theme.breakpoints.down('md')]: {
            fontSize: 12,
            marginTop:"10%",
          },
        [theme.breakpoints.down('sm')]: {
            fontSize: 10,
            marginTop:"12%",
            marginBottom: "5%"
          },
        [theme.breakpoints.down('xs')]: {
            fontSize: 10,
            marginTop:"14.5%",
            marginLeft: "50%"
            },
    },
    financial:{
        maxWidth: "1000px",
    },
    note:{
        marginLeft: "-1%",
        [theme.breakpoints.down('sm')]: {
            marginLeft: "-3%",
          },
    },
    note_info:{
        fontFamily: "Montserrat",
        fontSize: "11px",
        marginLeft: "1%",
        fontStyle: "italic",
        [theme.breakpoints.down('xs')]: {
            fontSize: 9,
          },
    },
    toggle:{
        color: "orange",
        backgroundColor: "orange",
        width: "1000px"
    },
    info:{
        marginTop: "10%",
    },
    formControlLabel:{
        fontFamily: "Montserrat",
        fontSize: "16px",
        marginTop: "5%",
    },
    // ----------TabList---------------------
    tablist_chart:{
        color: "orange",
    },
    tab_chart:{
        marginTop: 1,
        fontFamily: "Montserrat",
        paddingTop: "-20px",
        marginLeft: "-5%",
        fontSize: 15,
        [theme.breakpoints.down('sm')]: {
            fontSize: 13,
          },
    },
    chart:{
        marginTop: '3%',
        marginBottom: '8%'
    },
    loading_spinner:{
        marginLeft:"45%",
        marginTop: "20%",
        marginBottom: "20%"
        
    },
    line_chart_div:{
        height: "500px",
        marginBottom: "10%",
    }
}))


export default useStyles;
