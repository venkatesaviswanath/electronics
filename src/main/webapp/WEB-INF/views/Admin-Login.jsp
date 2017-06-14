<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css">
  	<link rel="stylesheet" href="bootstrap-3.3.7/css/admin-login.css">
  	<script src="bootstrap-3.3.7/jq/jquery.min.js"></script>
  	<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
  	<script src="bootstrap-3.3.7/js/admin-login.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<form:form method="post" action="login-handler">
  <div class="group">
    <input type="text" name="uname"><span class="highlight"></span><span class="bar"></span>
    <label>UserName</label>
  </div>
  <div class="group">
    <input type="password" name="pwd"><span class="highlight"></span><span class="bar"></span>
    <label>Password</label>
  </div>
  <button type="submit" class="button buttonBlue">Login
    <div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
  </button>
</form:form>
<!-- <footer><a href="http://www.polymer-project.org/" target="_blank"><img src="https://www.polymer-project.org/images/logos/p-logo.svg"></a> -->
<!--   <p>You Gotta Love <a href="http://www.polymer-project.org/" target="_blank">Google</a></p> -->
<!-- </footer> -->
</body>
</html>