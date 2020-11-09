<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 50%;
}
</style>
</head>
<body>
	<nav class="navbar bg-secondary navbar-expand">
	<div class="container">
		<img alt="Not Found" src="images/Aicon.jpeg" height="100px" width="100px"
			class="rounded-circle">
		<ul class="nav justify-content-center">
			<li class="nav-item"><button class=" btn btn-success"
					data-target="#login" data-toggle="modal">Login</button> &nbsp;
				&nbsp; &nbsp;
			<li class="nav-item"><button class="btn btn-primary"
					data-target="#signup" data-toggle="modal">SignUp</button> &nbsp;
				&nbsp; &nbsp;
		</ul>
	</div>
	</nav>

	<div class="modal fade" id="login">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header bg-primary">
					<h4 class="modal-title">Enter details to login!</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body align items-center">
					<form action="AjioServlet" method="post">
						<div class="form-group" style="padding:5px;">
						<div class="row">
							<label for="email1" class="col-5" ><span style="font-size:24px;font-weight:bold;">Email:</span></label>
							 <input type="email" class="form-control col-7"
								placeholder="Enter Email" name="email1"> <br>
							</div>
						<div class="row">
							<label for="pwd1" class="col-5" ><span style="font-size:24px;font-weight:bold;">Password:</span></label>
							 <input type="password" class="form-control col-7"
								placeholder="Enter password" name="pwd1">
						</div>
						</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<input type="submit" value="LogIn" name="bt"
						class="btn btn-outline-primary" style="width:100%;">
				</div>
				</form>

			</div>
		</div>
	</div>
	<div class="modal" id="signup">
		<div class="modal-dialog">
			<div class="modal-content">

				<!-- Modal Header -->
				<div class="modal-header bg-warning">
					<h4 class="modal-title">Enter details to register!</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>

				<!-- Modal body -->
				<div class="modal-body">
					<form action="AjioServlet" method="post">
						<div class="form-group">
							Name: <input type="text" class="form-control col-sm-5"
								placeholder="Enter Name" name="name"> <br> Email: <input
								type="email" class="form-control col-sm-5"
								placeholder="Enter Email" name="email"> <br>
							Password: <input type="password" class="form-control col-sm-5"
								placeholder="Enter password" name="pwd">
						</div>
				</div>

				<!-- Modal footer -->
				<div class="modal-footer">
					<input type="submit" value="Register" name="bt"
						class="btn btn-primary">
				</div>
				</form>

			</div>
		</div>
	</div>
	<br>
	<div id="demo" class="carousel slide" data-ride="carousel">

		<!-- Indicators -->
		<ul class="carousel-indicators">
			<li data-target="#demo" data-slide-to="0" class="active"></li>
			<li data-target="#demo" data-slide-to="1"></li>
			<li data-target="#demo" data-slide-to="2"></li>
			<li data-target="#demo" data-slide-to="3"></li>
		</ul>

		<!-- The slideshow -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="images/c4.jpg" width="300" height="150">
			</div>
			<div class="carousel-item">
				<img src="images/c2.jpg" width="300" height="150">
			</div>
			<div class="carousel-item">
				<img src="images/c3.jpg" width="300" height="150">
			</div>
			<div class="carousel-item">
				<img src="images/c1.png" width="300" height="150">
			</div>

		</div>

		<!-- Left and right controls -->
		<a class="carousel-control-prev" href="#demo" data-slide="prev"> <span
			class="carousel-control-prev-icon"></span>
		</a> <a class="carousel-control-next" href="#demo" data-slide="next">
			<span class="carousel-control-next-icon"></span>
		</a>
	</div>

	<br>
	<center>
		<form action="AjioServlet" method="post">
			Select Category : <select name="category">
			
			<!-- Displaying categories in drop down menu -->
				<c:forEach var="obj" items="${pList}">
					<option>${obj}</option>
				</c:forEach>
			</select> &nbsp;&nbsp; <input type="submit" class="btn btn-warning" value="Go"
				name="bt">
		</form>
	</center>
	<br>
	<table class="table table-hover table-bordered">
		<tr class="bg-dark text-white">
			<th>Image</th>
			<th>Product Name</th>
			<th>Price</th>
		</tr>
		<c:forEach var="obj" items="${pCategory}">
			<tr>
			<!--Displaying records in table according to the selected category-->
				<td><img src="images/${obj.image_url}" class="rounded"
					height="90px" width="90px"></td>
				<td>${obj.name}</td>
				<td>${obj.price}</td>
			</tr>
		</c:forEach>
		<c:forEach var="obj" items="${pdList}">
			<tr>
			<!--Displaying all the records in product table-->
				<td><img src="images/${obj.image_url}" class="rounded"
					height="90px" width="90px"></td>
				<td>${obj.name}</td>
				<td>${obj.price}</td>
			</tr>
		</c:forEach>

	</table>
</body>
</html>