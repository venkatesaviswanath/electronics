<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link
   rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.min.css">
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js">
  </script> -->
  <script src="bootstrap-3.3.7/js/bootstrap.min.js">
  </script>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Sign In</title>
</head>
<body>
<form action="Controller" method="post">
	<div class="container col-xs-4 col-xs-offset-4">
		
			<center><h2>Welcome!</h2></center>
			<center><h2><small>Sign in to continue</small></h2></center>
			<br>
		
		<div class="form-group">
			<div class="jumbotron">
				<div class="alert alert-danger fade in">
    					<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    					<strong>Incorrect Password! Try Again.</strong>
  					</div>
					<h4>User Name : </h4>
   					<input type="text" class="form-control" name="User Name" required="" autofocus="" /> 
   					<h4>Password : </h4>
   					<input type="password" class="form-control" name="Password" required="" />
   					
   				<div class="checkbox">
      				<h4><label><input type="checkbox">Remember me</label></h4>	
   					<h3><input type="submit" class="btn btn-primary" value="Sign In"></h3>
   				</div>
   			</div>
   		</div>
   	</div>   
</form>

</body>
</html>