import React, {useState, useEffect} from 'react';
import {
    DataGrid,
    GridToolbar,
} from '@mui/x-data-grid';
import { 
    createTheme,
    ThemeProvider,
    } from '@mui/material/styles';
import {useNavigate} from 'react-router-dom';
import {  makeStyles } from '@material-ui/core/styles';
import ArrowUpwardIcon from '@mui/icons-material/ArrowUpward';
import ArrowDownwardIcon from '@mui/icons-material/ArrowDownward';
import MoreVertIcon from '@mui/icons-material/MoreVert';
import { Typography } from '@material-ui/core';
import axios from 'axios';
// Styles
const darkTheme = createTheme({
    palette: {
      primary: {
        main: "#fff",
      },
      type: "dark",
    },
  });
const useStyles = makeStyles({
  root: {
    '&.MuiDataGrid-root .MuiDataGrid-columnHeader:focus, &.MuiDataGrid-root .MuiDataGrid-cell:focus': {
        outline: 'none',
    },
    '&.MuiDataGrid-menuIcon &.MuiDataGrid-menuIconButton 	&.MuiDataGrid-menuOpen': {
      color: 'white',
    },
    'MuiTablePagination-root .css-rtrcn9-MuiTablePagination-root':{
      color: 'white',
    }
  }
});
const columns = [
  {
    field: 'ticker',
    headerName: 'Ticker',
    width: 150,

  },
    {
      field: 'ceiling',
      headerName: 'Ceiling',
      type: 'number',
      width: 150,

    },
    {
        field: 'floor',
        headerName: 'Floor',
        type: 'number',
        width: 150,
        
      },
    {
      field: 'highest',
      headerName: 'Highest',
      type: 'number',
      width: 150,
     
    },
    {
      field: 'lowest',
      headerName: 'Lowest',
      type: 'number',
      width: 150,
      
    },
    {
      field: 'match',
      headerName: 'Match',
      type: 'number',
      width: 150,
      
    },
    {
      field: 'volume',
      headerName: 'Volume',
      type: 'number',
      width: 150,
    },
  ];

  
// Define icons
export function SortedDescendingIcon() {

  return <ArrowDownwardIcon
  className="icon"
  sx = {{
    color:'white',
  }}
  />;
}

export function SortedAscendingIcon() {
  return <ArrowUpwardIcon className="icon" 
  sx = {{
    color:'white',
  }}/>;
}
export function MenuIcon() {
  return <MoreVertIcon className="icon"
  sx = {{
    color:'white',
  }}/>;
}
// Datagirid
const DataGridDemo = ({stockExchange}) => {
    const history = useNavigate()
    const classes = useStyles();
    
    const [stocks, setStock] = useState([]);

    // 
    useEffect(() => {
      componentDidMount()
    },[])

    const componentDidMount = async() =>{
       axios.get("/stocks")
       .then((response)=>{
          console.log(response.data);
          setStock(response.data.stocks);

       })
    }
    const rows = stocks.map((stock) => {
      return {
        id: stock.Ticker,
        ceiling: stock.Ceiling,
        floor: stock.Floor,
        highest: stock.Highest,
        lowest: stock.Lowest,
        match: stock.Match,
        ticker: stock.Ticker,
        volume: stock.Volume,
      };
    })

    console.log({rows});
    const [pageSize, setPageSize] = React.useState(10);

    return (
      <ThemeProvider theme={darkTheme}>
        <div style={{ height: 600, width: '100%', color:'white'}}>
        <DataGrid
          
            rows={rows}
            columns={columns}
            pageSize={pageSize}
            onPageSizeChange={(newPage) => setPageSize(newPage)}
            rowsPerPageOptions={[10, 20, 50]}
            pagination 
            sx={{
              color: 'white',
              fontFamily: 'Montserrat',
              cursor: "pointer",
              fontSize: 16,
              '& .MuiTablePagination-root':{
                color: 'white',
                  },
              '& .MuiTablePagination-selectIcon': {
                color: 'white',
              },
            }}
            components={{
            Toolbar: GridToolbar,
            //Pagination: CustomPagination,
            ColumnSortedDescendingIcon: SortedDescendingIcon,
            ColumnSortedAscendingIcon: SortedAscendingIcon,
            ColumnMenuIcon: MenuIcon,
            }}
            classeName = {classes.root}
            initialState={{
                sorting: {
                  sortModel: [{ field: 'ticker', sort: 'asc' }],
                },
              }}
            
            
            
            onRowClick={(params) => 
              history(`/stocks/${params.row.ticker}`)
            }
            
        />
          <Typography>{stockExchange}</Typography>
        </div>
    </ThemeProvider>
    );
    
}
export default DataGridDemo