<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

  <title>Record | Edit</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   
   
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">



<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
   
   <style>
   
 

 #edit{ margin-right:16px;}  
   
   
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



</style>
 </head>
<body style="height:1500px;">
<%@ page import="java.sql.*" %>
<%ResultSet resultset =null;
ResultSet resultsett =null;%>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
<ul class="navbar-nav mr-auto">
	  <li class="nav-item active"><a class="nav-link"  href="wllhome.jsp">My Watchlist</a></li>
	    </ul>
</nav>
<%
							int id=Integer.parseInt(request.getParameter("rid"));											
 											String jdbcURL= "jdbc:mysql://localhost:3306/test";
											String jdbcUsername= "root";
											String jdbcPassword= "dharmik";
    									try{
    											Class.forName("com.mysql.cj.jdbc.Driver");
												Connection cn=DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        										Statement statement = cn.createStatement() ;
        										resultset =statement.executeQuery("select * from watchlist where Id="+id) ;
        										while(resultset.next()){ 
										%>

   <div class="col-lg-10" style="margin-left:120px; margin-top:75px;">
  <form action="record">             
            <div class="card" style="background-color:beige;">
                          <div class="card-header bg-light">
                                       <h3> <i class="fa fa-user"></i>  Edit Record</h3>
                                    </div>
                     <div class="card-block" style="margin-top:20px; margin-bottom:50px;">
                               
                        <input type="hidden" name="id" value="<%= resultset.getInt(1)%>">	
                         	
                         				<div class="form-group ">
                                            <div class="input-group">
                                    		 	<div class="col-lg-4 text-lg-right">
                                                	<label for="name">Name </label>
                                            	</div>
                                            	<div class="input-group-prepend">
                                 			   <span class="input-group-text"><i class="fa fa-briefcase text-primary"></i></span> </div>
                                 			    <input type="text" id="name" value="<%= resultset.getString(2)%>" class="form-control" name="name" style="margin-right:200px;">
                                            </div>
                                        </div>
                                        
                                        <div class="form-group ">
                                            <div class="input-group">
                                    		 	<div class="col-lg-4 text-lg-right">
                                                	<label for="plateform">Plateform </label>
                                            	</div>
                                            	<div class="input-group-prepend">
                                 			   <span class="input-group-text"><i class="fa fa-file-text text-primary"></i></span> </div>
                                 			    <input type="text" id="plateform"  value="<%= resultset.getString(3)%>" class="form-control" name="plateform" style="margin-right:200px;">
                                            </div>
                                        </div>
                                        
                                        
                                                                                
                                        <div class="form-group ">
                                            <div class="input-group">
                                    		 	<div class="col-lg-4 text-lg-right">
                                                	<label for="genre">Genre</label>
                                            	</div>
                                            	<div class="input-group-prepend">
                                 			   <span class="input-group-text"><i class="fa fa-calendar-check-o text-primary"></i></span> </div>
                                 			    <input type="text" id="genre"  value="<%= resultset.getString(4)%>" class="form-control" name="genre" style="margin-right:200px;">
                                            </div>
                                        </div>
                                        
                                          <div class="form-group ">
                                            <div class="input-group">
                                    		 	<div class="col-lg-4 text-lg-right">
                                                	<label for="link">Link </label>
                                            	</div>
                                            	<div class="input-group-prepend">
                                 			   <span class="input-group-text"><i class="fa fa-calendar-check-o text-primary"></i></span> </div>
                                 			   <input type="text" id="link"  value="<%= resultset.getString(5)%>" class="form-control" name="link" style="margin-right:200px;">
                                            </div>
                                        </div>
                                        	<%}
                                         }
    										catch (SQLException e) {
    												e.printStackTrace();	
    										}catch (ClassNotFoundException e) {
    												e.printStackTrace();
    									}%>	                                
                                     
                                            <div class="col-lg-8 text-lg-right" style="margin-top:30px;">
                                                <button class="btn btn-success" type="submit"  name="submit" value="update_record" style="margin-right:20px;">
                                                    Update
                                                </button>                                                
                                            </div>
                                        </div>
                                        
                                </div>
                        </form>
                        </div>                        
</body>
</html>