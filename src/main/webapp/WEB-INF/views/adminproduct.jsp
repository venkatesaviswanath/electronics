<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
<title>Admin-Product</title>
</head>
<body>
<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="Admin">Home</a></li>
		<li class="breadcrumb-item active">Product</li>
	</ol>
<!-- <div class="container col-xs-7" > -->
<!-- 	<img src="bootstrap-3.3.7/Images/easy-ways-to-recycle-electronic-gadgets-and-control-pollution.jpg"> -->
<!-- 	<center><h1><small>Get Gadgets At Your DoorStep!</small></h1></center> -->
<!-- </div> -->
	<form:form class="form-horizontal" method="post" action="product-handler">
		<div class="container col-xs-4 col-xs-offset-1">
<div class="jumbotron">
 <div class="form-group"> 
 <label for="user"> Product Id : </label> 
 <input type="text" class="form-control" name="p_id" id='pid' required> 
 </div> <br> 
<div class="form-group">
<label for="user"> Product Name : </label>
<input type="text" class="form-control" name="p_name" id='pname' required>
</div> <br>
<div class="form-group">
<label for="user"> Product Description : </label>
<input type="text" class="form-control" name="p_desc" id='pdesc' required>
</div> <br>
<div class="form-group">
<label for="user"> Product Category : </label>
<input type="text" class="form-control" name="p_category" id='pcat' required>
</div> <br>
<div class="form-group">
<label for="user"> Product Price : </label>
<input type="text" class="form-control" name="p_price" id='price' required>
</div> <br>
<div class="form-group">
<button type="submit" class="btn btn-default"> Add Product  </button> 
</div>
</div>
</div>

	</form:form>

</body>
</html>