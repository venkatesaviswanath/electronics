<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css">
  <script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
  <script src="bootstrap-3.3.7/jq/jquery-3.0.0.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Sign In</title>
</head>
<body>
<form:form action="login-handler" method="post">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="/electronics/">Home</a></li>
		<li class="breadcrumb-item active">Login</li>
	</ol>
	<div class="container col-sm-4 col-sm-offset-4">
		<div class="row">
			<div>
				<center><h2>Welcome!</h2></center>
				<center><h2><small>Sign in to continue</small></h2></center>
				<hr>
			</div>
			<div class="form-group">
				<div class="jumbotron">
						<% 
							if(request.getAttribute("Error")!=null)
							{ 
						%>
								<div class="alert alert-danger fade in"><a href="Login" class="close" data-dismiss="alert" aria-label="close">&times;</a>
								<span><strong>${Error}</strong></span>
								</div>
						<% } %>
					<div class="form-group">
      					<label>User Name*</label>
      					<div class="input-group">
      						<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
      						<input type="text" class="form-control" name="uname" placeholder="User Name" required="" autofocus="" />
    					</div>
    				</div> 
   					<div class="form-group">
      					<label>Password*</label>
      					<div class="input-group">
      						<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
      						<input type="password" class="form-control" name="pwd" required="" placeholder="Enter Password">
      					</div>
    				</div>
   					<div class="checkbox">
      					<h4><label><input type="checkbox">Remember me</label></h4>
      				</div>
                		<button type="submit" class="btn btn-success btn-block" ><span class="glyphicon glyphicon-log-in">
                		</span>Sign In</button><br>
   						<h3><small>Not Signed Up Yet?</small></h3>
   						<div style="position: relative; top:-35px">
   							<span class="pull-right"><a style="text-decoration: none;" href="Register"><button type="button" class="btn btn-info btn-block" >Sign Up!</button></a></span>
   						</div>
   				</div>
   			</div>
   		</div>
   	</div>   
</form:form>
</body>
</html>