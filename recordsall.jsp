<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <title>Records</title>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <style>
   
 
th {
 
  	 background-color:beige;
}
  #edit{ margin-left:10px;
 margin-right:5px;}  
   
   
   
#mySidenav a {
  position: absolute;
  margin-top:50px;
  left: -80px;
  transition: 0.3s;
  padding: 15px;
  width: 130px;
  text-decoration: none;
  font-size: 20px;
  color: white;
  border-radius: 0 5px 5px 0;
}

#mySidenav a:hover {
  left: 0;
}

#a {
  top: 20px;
  background-color: #4CAF50;
}

#b {
  top: 90px;
  background-color: #2196F3;
}

#c {
  top: 160px;
  background-color: #f44336;
}

#d {
  top: 230px;
  background-color: #555
}
.card-block {
    padding: 1.30rem 1.25rem 2rem 1.25rem;
}

.button {
  background-color: #ddd;
  border: none;
  color: black;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius:25px;
  
}

.button:hover {
  background-color: #f1f1f1;
}
</style>
 </head>
<body style="height:1500px;">
<%@ page import="java.sql.*" %>
<%@ page import="java.util.*" %>


<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
<ul class="navbar-nav mr-auto">
	  <li class="nav-item active"><a class="nav-link" href="wllhome.jsp">My Watchlist</a></li>
	    </ul>
	    
</nav>
<%
String jdbcURL= "jdbc:mysql://localhost:3306/test";
String jdbcUsername= "root";
String jdbcPassword= "dharmik";
	try{
		   	Class.forName("com.mysql.cj.jdbc.Driver");
			Connection cn=DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
			String sql = "select * from watchlist";
			PreparedStatement ps= cn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();%>
       <div class="col-lg-11" style="margin-left:120px; margin-top:75px">
            <div class="card">
                          <div class="card-header bg-light">
                                       <h3> <i class="fa fa-database"></i> Watchlist</h3>
                                    </div>
                                    <div class="card-block">
                                        <div class="table-responsive m-t-35">
                                            <table class="table table-striped table-bordered table-advance table-hover">
                                                <thead>
                                                    <tr>
                                                    	
                                                        <th><i class="fa fa-film"></i> Name</th>
                                                        <th><i class="fa fa-file-text"></i> Plateform</th>
                                                        <th><i class="fa fa-file-text"></i> Genre</th>
                                                        <th><i class="fa fa-link"></i> Link</th>
                                                        <th><i class="fa fa-tasks"></i> Action</th>
                                                         </tr>
                                                </thead>
                                                <tbody>
                                                <%
                                                
                                                while(rs.next())
												{
out.println("<tr><td>"+rs.getString(2)+"</td><td>" +rs.getString(3) +"</td><td>"+rs.getString(4) + "</td><td>" +rs.getString(5)+ "</td>");
out.println("</td><td>   <div class='row'><a id='edit' href='edit_record.jsp?rid="+rs.getString(1)+" ' class='btn btn-success btn-xs purple'><i class='fa fa-edit'></i></a>  <form action='record'><input type='hidden' name='id' value="+rs.getString(1)+"><button type='submit' name='submit' value='r_delete' class='btn btn-primary'><i class='fa fa-trash-o'></i></button></Form></div></td></tr>");
              
	
                                                }
	}
   catch (SQLException e) {
	  	e.printStackTrace();	
	  }catch (ClassNotFoundException e) {
	    	e.printStackTrace();
	  }	%>                                                         
                                                </tbody>   
                                           </table>
                                        </div>
                                    </div>
                             </div>
                            </div>
                            
</body>
</html>