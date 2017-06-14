<%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css">
  	<script src="bootstrap-3.3.7/jq/jquery.min.js"></script>
  	<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome</title>
	<style>
  		.carousel-inner > .item > img,
  		.carousel-inner > .item > a > img
 		{
      		width: 100%;
      		height:300px;
  		}
   	</style>
</head>
<body>
	<nav class="navbar navbar-inverse"><br>
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="/electronics/">Electronic Hub</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="active"><a href="Welcome"><span class="glyphicon glyphicon-home"></span>Home</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-phone-alt"></span>Contact Us</a></li>
				<li><a href="#"><span class="glyphicon glyphicon-inbox"></span>About Us</a></li>
				<li class="dropdown">
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Category<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/Product?cat=Laptop">LapTops</a></li>
						<li><a href="/Product?cat=Phones">Mobile Phones</a></li>
						<li><a href="/Product?cat=Cameras">Cameras</a></li>
						<li><a href="/Product?cat=Tv">Television</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:if test="${sessionScope.Name ne null}">
				      	<li class="dropdown">
				        	<a class="dropdown-toggle" data-toggle="dropdown" href="#"><span class="glyphicon glyphicon-user"></span> Hi! ${sessionScope.Name}<span class="caret"></span> </a>
				        		<ul class="dropdown-menu">
				        			<li><a href="Signout"><span class="glyphicon glyphicon-log-out"></span> Sign Out</a></li>
				        		</ul>
				        </li>
				    </c:if>    
					<c:if test="${sessionScope.Name eq null}">
						<li><a href="Register"><span class="glyphicon glyphicon-user"></span>Sign Up</a></li>
						<li><a href="Login"><span class="glyphicon glyphicon-log-in"></span>Sign In</a></li>
					</c:if>
			</ul>
		</div>
	</nav>

</body>
</html>