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
				<a class="dropdown-toggle" data-toggle="dropdown" href="#">Categories<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="Product?cat=Laptop">LapTops</a></li>
						<li><a href="Product?cat=Phones">Mobile Phones</a></li>
						<li><a href="Product?cat=Cameras">Cameras</a></li>
						<li><a href="Product?cat=Tv">Television</a></li>
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
	<div class="container-fluid">
  		<div id="myCarousel" class="carousel slide" style="width:100%; height: 300px;  data-ride="carousel">
    		<!-- Indicators -->
    		<ol class="carousel-indicators">
     			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      			<li data-target="#myCarousel" data-slide-to="1"></li>
      			<li data-target="#myCarousel" data-slide-to="2"></li>
      			<li data-target="#myCarousel" data-slide-to="3"></li>
      			<li data-target="#myCarousel" data-slide-to="4"></li>
      			<li data-target="#myCarousel" data-slide-to="5"></li>
      			<li data-target="#myCarousel" data-slide-to="6"></li>
      			<li data-target="#myCarousel" data-slide-to="7"></li>      			
    		</ol>

    		<!-- Wrapper for slides -->
    		<div class="carousel-inner" role="listbox">
    			<div class="item active">
        			<img src="bootstrap-3.3.7/Images/iphone2.jpg" alt="iphone" width="460" height="345">
      			</div>
      			<div class="item">
        			<img src="bootstrap-3.3.7/Images/sam.jpg" alt="iphone" width="460" height="345">
      			</div>
      			<div class="item">
        			<img src="bootstrap-3.3.7/Images/macbook.jpg" alt="mac" width="460" height="345">
      			</div>
          		<div class="item">
        			<img src="bootstrap-3.3.7/Images/oled.jpg" alt="tv" width="460" height="345">
      			</div>
		        <div class="item">
        			<img src="bootstrap-3.3.7/Images/samtv.jpg" alt="tv" width="460" height="300">
      			</div>
      			<div class="item">
        			<img src="bootstrap-3.3.7/Images/Nikon.jpg" alt="Camera" width="460" height="300">
      			</div>
      			<div class="item">
        			<img src="bootstrap-3.3.7/Images/praktica.jpg" alt="Camera" width="460" height="300">
      			</div>
      			<div class="item">
        			<img src="bootstrap-3.3.7/Images/can2.jpg" alt="Camera" width="460" height="300">
      			</div>
    		</div>

    		<!-- Left and right controls -->
    		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      			<span class="sr-only">Previous</span>
    		</a>
    		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      			<span class="sr-only">Next</span>
    		</a>
  		</div>
	</div>
	<footer class="footer">
      <div class="container">
        <hr>
	    <div class="col-lg-12">
	      <div class="col-md-8">
	        <a href="#"> *Terms &amp; Conditions apply.</a>  
	      </div>
	      <div class="col-md-4">
	        <p class="pull-right">Copyright &copy;  Electronic Hub&#8482;</p>
	      </div>
	    </div>
      </div>
    </footer>
</body>
</html>