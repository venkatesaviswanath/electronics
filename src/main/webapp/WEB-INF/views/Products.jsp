<%@ page isELIgnored="false" %> 
<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<html>
<head>


	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" href="bootstrap-3.3.7/css/bootstrap.css">
  	<script src="bootstrap-3.3.7/jq/jquery.min.js"></script>
  	<script src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
  	<script src="bootstrap-3.3.7/js/angular.min.js"></script>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		

		<title>Products</title>
<script type="text/javascript">
var obj = ${prod};
angular.module('app', []);

angular.module('app').controller('MyCtrl', function ($scope){
	$scope.productList = obj;

});


</script>
</head>
<body ng-app='app'>
<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="/electronics/">Home</a></li>
		<li class="breadcrumb-item active">Products</li>
	</ol>
	<!-- %@ include file="nav.jsp" %-->

<div class="container-fluid" style="margin-top:50px;">
	<div class="row"></div>

	<div class="row">

		<div class="col-md-3" style="margin-top: 80px;">
			<section>
				<h3>Categories</h3>
				<div class="list-group">
					<a href="Product?cat=Laptop" class="list-group-item">LapTops</a>
					<a href="Product?cat=Cameras" class="list-group-item">Cameras</a>
					<a href="Product?cat=Phones" class="list-group-item">Mobile Phones</a>
					<a href="Product?cat=Tv" class="list-group-item">Televisions</a>
				</div>
			</section>
		</div>
		<div class="col-md-9" ng-controller="MyCtrl">
			<h2>
				<a href="#">${catname}</a>
			</h2>
			<img class="img-responsive" src="bootstrap-3.3.7/Images/${param.cat}.jpg" alt="">
				<div class="container1" style="width: 100%">
					<div class="well well-sm">
						<strong>New Arrivals</strong>
						<div class="btn-group pull-right">
							<a href="#" id="list" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-th-list"></span>List</a>
							<a href="#" id="grid" class="btn btn-default btn-sm">
								<span class="glyphicon glyphicon-th"></span>Grid</a>
						</div>
					</div>
					
						<div id="products" class="row list-group">
									<div class="item  col-xs-4 col-lg-4" ng-repeat="product in productList">
										<div class="thumbnail">
											<img class="group list-group-image" src="bootstrap-3.3.7/Images/${param.cat}.jpg" alt=""/>
											<div class="caption">
												<h4 class="group inner list-group-item-heading">
													{{product.p_name}}
													<a href="#">
														<div class="pull-right" style="text-decoration: none; color: black;">
															<i class="fa fa-info-circle" aria-hidden="true"></i>
														</div>
													</a>
												</h4>
												<p class="group inner list-group-item-text desc">
													{{product.p_desc}}</p>
												<br>
													<div class="row">
														<div class="col-xs-12 col-md-6">
															<p class="lead" style="font-size:24px; font-weight: 400;">
															₹{{product.p_price}}/-</p>
														</div>
														<div class="col-xs-12 col-md-6">

															<a class="btn btn-primary" href="#">
																<i class="fa  fa-cart-arrow-down" style="font-size:23px;"aria-hidden="true"></i>
																&nbsp; Add to Cart</a>

														</div>
													</div>
												</div>
											</div>
										</div>

									
								
							</div>
						
					</div>

				</div>

			</div>

		</div>

		<!-- %@ include file="footer.jsp" %-->
	</body>
<script>
$(document).ready(function() {
    $('#list').click(function(event){event.preventDefault();$('#products .item').addClass('list-group-item');});
    $('#grid').click(function(event){event.preventDefault();$('#products .item').removeClass('list-group-item');$('#products .item').addClass('grid-group-item');});
});
</script>
</html>
