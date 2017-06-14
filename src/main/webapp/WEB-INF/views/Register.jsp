<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css">
  	<link rel="stylesheet" href="bootstrap-3.3.7/css/datepicker.css">
  	<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
  	<script src="bootstrap-3.3.7/jq/jquery.min.js"></script>
  	<script src="bootstrap-3.3.7/js/bootstrap-datepicker.js"></script>
<!--   	<script src="bootstrap-3.3.7/js/validate.js"></script> -->
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Sign Up</title>
	<script type="text/javascript">
		$(document).ready(function () {	
        
        	$('#DOB').datepicker({
            format: "dd/mm/yyyy"
        });  
    
    });
  </script>
</head>
<body>
<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="/electronics/">Home</a></li>
		<li class="breadcrumb-item active">Sign Up</li>
	</ol>
<div class="container col-xs-7" >
	<img src="bootstrap-3.3.7/Images/easy-ways-to-recycle-electronic-gadgets-and-control-pollution.jpg">
	<center><h1><small>Get Gadgets At Your DoorStep!</small></h1></center>
</div>
<div class="container col-sm-5">
	<form:form class="form-horizontal" method="post" action="register-handler">
		<div class="container-fluid">
			<div class=row>
				<div class="form-group">
					<div class="jumbotron">
						<center><h2>Register Here</h2></center>
						<hr>
    					<div class="form-group">
      						<div class="input-group">
      							<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
      							<input type="text" class="form-control" name="fname" required="" placeholder="Name">
      						</div>
      					</div>
    					<div class="form-group">
      						<div class="input-group">
      							<span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
      							<input type="text" class="form-control" name="uname" placeholder="User Name" required="">
      						</div>
      							<span class="help-block">User name should be unique. No spaces!</span>
    					</div>
    				<div class="form-group">
      					<div class="input-group">
      						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
      						<input type="text" class="form-control" id="DOB" placeholder="Date Of Birth" required="">
      					</div>
    				</div>    				
    				<div class="form-group">
      					<div class="input-group">
      						<span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span></span>
      						<input type="email" class="form-control" name="emailid" required="" placeholder="Enter E-mail">
    					</div>
    						<span class="help-block">Enter a valid E-mail Address.</span>
    				</div>
    				<div class="row">
    					<div class="col-md-6 col-sm-6 col-xs-6">    
    						<div class="form-group">
      							<div class="input-group">
      								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
      								<input type="password" placeholder="Enter Password" name="pwd" id="password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required="">
      							</div>
    						</div>
    					</div>
    					<div class="col-md-6 col-sm-6 col-xs-6">
    						<div class="form-group">
      							<div class="input-group">
      								<span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
      								<input type="password" placeholder="Confirm Password"  name="confirm_password"  id="confirm_password"class="form-control" required="">
      							</div>
    						</div>
    					</div>
    				</div>
    				<div class="form-group">
      					<div class="input-group">
      						<span class="input-group-addon"><span class="glyphicon glyphicon-earphone"></span></span>
      						<input type="number" class="form-control" name="no" required="" placeholder="Number">
      					</div>
    				</div>
    				<div class="form-group">
      					<div class="input-group">
      						<span class="input-group-addon"><span class="glyphicon glyphicon-road"></span></span>
      						<input type="text" class="form-control" name="city" required="" placeholder="City">
      					</div>
    				</div>
    					<h4><small>*Required Fields</small></h4>
    					<h3><input type="submit" class="btn btn-success btn-md" value="Sign Up!"></h3>
    					<div class="row">
			    				<!-- div class="col-xs-6 col-sm-6 col-md-6">
			    					<div class="form-group">
			    						<div class="input-group" style="position: relative; left: 20px;">
			    							Home&#45;&gt;<a href="Home"><button type="button" class="btn btn-default" ><span class="glyphicon glyphicon-home"></span></button></a>
			    						</div>
			    					</div>
			    					
			    				</div-->
			    				<div>
			    					<div class="form-group" style="position: relative; bottom: 80px">
			    						<span class="pull-right">Already have an account?<br> <a href="Login"><button type="button" class="btn btn-info" >Log In!</button></a></span>
			    					</div>
			    				</div>
			    				
			    			</div>
    				
    				</div>		
    			</div>
		</div>
		</div>
	</form:form>
</div>
</body>
<script type="text/javascript">
  var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
  </script>
</html>