import React from 'react'
import useStyles from './style'
import {  
  createTheme, 
  ThemeProvider, 
  TableContainer, 
  Table,
  TableHead,
  TableRow,
  TableCell,
  TableBody,
  Paper,
} from '@material-ui/core'
import {  toast, Slide } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';



const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
      fontFamily: "Montserrat",
    },
  });


const SearchTicker = (props) => {
    const classes = useStyles()
    const [loading, setLoading] = React.useState(false)
   
    const handleClosed = () => setLoading(false);

      
    // })
  return (
    <ThemeProvider theme={darkTheme}>
      <TableContainer 
            className={classes.tableContainer}
            component={Paper}>
                        <Table stickyHeader aria-label="sticky table">
                            <TableHead  className={classes.tablehead}
                            rowCount={props.rows.length}>
                                <TableRow>
                                {["TICKER", "DESCRIPTION", "INDUSTRY", "STOCK EXCHANGE"].map((head) => (
                                    <TableCell
                                    className={classes.tablecell}
                                    key={head}
                                    align={head === "TICKER" ? "" : "left"}
                                    >
                                    {head}
                                    </TableCell>
                                ))}
                                </TableRow>
                            </TableHead>
                    
                            <TableBody  >
                                {props.handleSearch(props.rows)
                                .map((row)=> (
                                    <TableRow                                   
                                    ref = {props.myRef}
                                    className ={classes.row}
                                    onClick={() => {
                                    if (row.ticker === props.ticker){
                                        toast.error("Compared ticker should be different from default ticker", 
                                        {autoClose: 2000, 
                                        transition: Slide,
                                        position:"bottom-left",
                                        pauseOnHover:false,
                                        });
                                    }
                                    else
                                    {
                                      props.handleSelection(row.ticker);
                                      props.handleClosed();                                     
                                    }}}
                                    
                                    selected={props.RowID === row.ticker}
                                    key={row.ticker}
                                    sx={{
                                      
                                      "&.MuiTableRow-root.Mui-selected": {
                                        backgroundColor: "white"
                                      },
                                  }}
                                    >
                                    
                                    <TableCell component='th' scope='row'
                                        style={{
                                          fontWeight: 'bold',
                                        }}
                                        className={classes.cell}
                                        onClick={handleClosed}
                                        > {row.ticker}
                                        
                                    </TableCell>
                                    <TableCell align="left" className={classes.cell}>{row.companyName}</TableCell>
                                    <TableCell align="left" className={classes.cell}>{row.industry}</TableCell>
                                    <TableCell align="center" className={classes.cell}>{row.stockExchange.toUpperCase()}</TableCell>
                                </TableRow>
                                ))}
                            </TableBody>
                        </Table>
            </TableContainer>
    </ThemeProvider>
  )
}

export default SearchTicker