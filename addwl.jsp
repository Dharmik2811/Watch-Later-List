<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

  <title>Add Records</title>
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

#project {
  top: 20px;
  background-color: #4CAF50;
}

#employee {
  top: 90px;
  background-color: #2196F3;
}

#bug {
  top: 160px;
  background-color: #f44336;
}

#department {
  top: 230px;
  background-color: #555
}
.card-block {
    padding: 1.30rem 1.25rem 2rem 1.25rem;
}



</style>
 </head>
<body style="height:1500px;">


<nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
<ul class="navbar-nav mr-auto">
	  <li class="nav-item active"><a class="nav-link" href="wllhome.jsp">My Watchlist</a></li>
	    </ul>
</nav>

   <div class="col-lg-10" style="margin-left:120px; margin-top:75px;">
  <form action="record">             
            <div class="card" style="background-color:beige;">
                          <div class="card-header bg-light">
                                       <h3> <i class="fa fa-database"></i>  Add Record</h3>
                                    </div>
                     <div class="card-block" style="margin-top:20px; margin-bottom:50px;">
                        
								                      
                                        <div class="form-group ">
                                            <div class="input-group">
                                    		 	<div class="col-lg-4 text-lg-right">
                                                	<label for="name">Name </label>
                                            	</div>
                                            	<div class="input-group-prepend">
                                 			   <span class="input-group-text"><i class="fa fa-film text-primary"></i></span> </div>
                                 			    <input type="text" id="name" class="form-control" name="name" style="margin-right:200px;" required>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group ">
                                            <div class="input-group">
                                    		 	<div class="col-lg-4 text-lg-right">
                                                	<label for="plateform">Plateform </label>
                                            	</div>
                                            	<div class="input-group-prepend">
                                 			   <span class="input-group-text"><i class="fa fa-file-text text-primary"></i></span> </div>
                                 			    <input type="text" id="plateform" class="form-control" name="plateform" style="margin-right:200px;" required>
                                            </div>
                                        </div>
                                        
                                        
                                                                                
                                        <div class="form-group ">
                                            <div class="input-group">
                                    		 	<div class="col-lg-4 text-lg-right">
                                                	<label for="genre">Genre</label>
                                            	</div>
                                            	<div class="input-group-prepend">
                                 			   <span class="input-group-text"><i class="fa fa-file-text text-primary"></i></span> </div>
                                 			    <input type="text" id="genre" class="form-control" name="genre" style="margin-right:200px;" required>
                                            </div>
                                        </div>
                                        
                                        <div class="form-group ">
                                            <div class="input-group">
                                    		 	<div class="col-lg-4 text-lg-right">
                                                	<label for="link">Link</label>
                                            	</div>
                                            	<div class="input-group-prepend">
                                 			   <span class="input-group-text"><i class="fa fa-link text-primary"></i></span> </div>
                                 			    <input type="text" id="link" class="form-control" name="link" style="margin-right:200px;" required>
                                            </div>
                                        </div>
 											
    										                   
                                            <div class="col-lg-8 text-lg-right" style="margin-top:30px;">
                                                <button class="btn btn-success" type="submit"  name="submit" value="add_record" style="margin-right:20px;">
                                                    <i class="fa fa-briefcase"></i>
                                                    Add Record
                                                </button>
                                                <button class="btn btn-danger" type="reset">
                                                    <i class="fa fa-refresh"></i>
                                                    Reset
                                                </button>
                                            </div>
                                        </div>
                                        
                                </div>
                        </form>
                        </div>
</body>
</html>