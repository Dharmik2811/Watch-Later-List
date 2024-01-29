<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<style>     
 .counter-value-1 { 
   font-family: Georgia;
   font-size: 60px;
   color: #A42B28;
   line-height: 1.5em;
   text-align: center;
   }
  .counter-value-1:after {
   content: attr(data-desc);
    display: block;
    text-transform: none;
    font-family: Poppins;
    font-size: 30px;
    color: black;
    line-height: 1.2em;
  }
   .counter-value-2 { 
   font-family: Georgia;
   font-size: 60px;
   color: #EA7326;
   line-height: 1.5em;
   text-align: center;
   
 }
  .counter-value-2:after {
   content: attr(data-desc);
    display: block;
    text-transform: none;
    font-family: Poppins;
    font-size: 30px;
    color: black;
    line-height: 1.2em;
  }
  .counter-value-3 { 
   font-family: Georgia;
   font-size: 60px;
   color: #24B24B;
   line-height: 1.5em;
   text-align: center;
  
 }
  .counter-value-3:after {
   content: attr(data-desc);
    display: block;
    text-transform: none;
    font-family: Poppins;
    font-size: 30px;
    color: black;
    line-height: 1.2em;
  }
   
  .Row {    
  margin-top:30px;
    display: table;
    width: 100%; 
    table-layout: fixed; 
    border-spacing: 10px; 
}
.Column {
    display: table-cell;
   
}
</style>
</head>
<body style="height:900px;">



<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
   <ul class="navbar-nav mr-auto">
    <li class="nav-item active"><a class="nav-link" href="#">My WatchList</a></li>
    </ul> 
</nav>
<div class="container">
<br><br><br><br><br>
<div class="card text-white" style="height:100px; background-color: #4CAF50" >
   <div class="card-body"><a  href="recordsall.jsp" style="font-size:20px; color:white">Records</a></div>
    </div>
    <br><br>
    <div class="card text-white" style="height:100px; background-color: #2196F3" >
   <div class="card-body"><a  href="addwl.jsp" style="font-size:20px; color:white">Add Records</a></div>
    </div>
  </div>
  
</body>
</html>