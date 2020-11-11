<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Ajio Clone</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Mukta:300,400,700"> 
<link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" >
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 390px;
}
.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
  border-radius:5px;
}
body {
	background-image:url(images/background.png);
}
button {
  position: relative;
  display: inline-block;
  cursor: pointer;
  outline: none;
  border: 0;
  vertical-align: middle;
  text-decoration: none;
  background: transparent;
  padding: 0;
  font-size: inherit;
  font-family: inherit;
}
button {
  position: relative;
  display: inline-block;
  cursor: pointer;
  outline: none;
  border: 0;
  vertical-align: middle;
  text-decoration: none;
  background: transparent;
  padding: 0;
  font-size: inherit;
  font-family: inherit;
}
button.btn {
  width: 12rem;
  height: auto;
}
button.btn .circle {
  transition: all 0.45s cubic-bezier(0.65, 0, 0.076, 1);
  position: relative;
  display: block;
  margin: 0;
  width: 3rem;
  height: 3rem;
  background: #282936;
  border-radius: 1.625rem;
}
button.btn .circle .icon1 {
  transition: all 0.45s cubic-bezier(0.65, 0, 0.076, 1);
  position: absolute;
  top: 0;
  bottom: 0;
  margin: auto;
  background: #fff;
}
button.btn .circle .icon1.arrow {
  transition: all 0.45s cubic-bezier(0.65, 0, 0.076, 1);
  left: 0.625rem;
  width: 1.125rem;
  height: 0.125rem;
  background: none;
}
button.btn .circle .icon1.arrow::before {
  position: absolute;
  content: '';
  top: -0.25rem;
  right: 0.0625rem;
  width: 0.625rem;
  height: 0.625rem;
  border-top: 0.125rem solid #fff;
  border-right: 0.125rem solid #fff;
  -webkit-transform: rotate(45deg);
          transform: rotate(45deg);
}
button.btn .button-text {
  transition: all 0.45s cubic-bezier(0.65, 0, 0.076, 1);
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  padding: 0.75rem 0;
  margin: 0 0 0 1.85rem;
  color: #282936;
  font-weight: 700;
  line-height: 1.6;
  text-align: center;
  text-transform: uppercase;
}
button:hover .circle {
  width: 100%;
}
button:hover .circle .icon.arrow {
  background: #fff;
  -webkit-transform: translate(1rem, 0);
          transform: translate(1rem, 0);
}
button:hover .button-text {
  color: #fff;
}

select {
  transition: box-shadow .5s;
  width: 125px;
  height: 50px;
  background-color: #f2f2f2;
  border: 1px;
  border-radius: 3px;
}
select:hover {
  box-shadow: 0 0 17px rgba(33,33,33,.5); 
}

.card {
	box-shadow: 0 2px 5px 0 rgba(0,0,0,0.32), 0 2px 10px 0 rgba(0,0,0, 0.32);
}

.card {
	margin-top: 10px;
	box-sizing: border-box;
	border-radius:5px;
	background-clip: padding-box;
	min-height: 400px;
}

.card span.card-title {
	color: #fff;
	font-size: 24px;
	font-weight: 300;
	text-transform: uppercase;
}

.card .card-image {
	position: relative;
	overflow: hidden;
}

.card .card-image .img1 {
	background-radius: 5px 5px 0 0;
	background-clip: padding-box;
	position:relative;
	max-width: 100%;
}

.card .card-image img {
	background-radius: 5px 5px 0 0;
	background-clip: padding-box;
	position:relative;
	min-width: 100%;
}

.card .card-image span.card-title {
	position:absolute;
	bottom:0;
	left:0;
	padding:16px;
	color: #fff;
}

.card .card-content {
	padding: 16px;
	border-radius: 0 0 5px 5px;
	background-clip: padding-box;
	box-sizing: border-box;
}

.card .card-content p {
	margin: 0;
	color: inherit;
}

.card .card-content span.card-title {
	line-height: 48px;
}


</style>
</head>
<body>
	<div style="padding-left:40px; padding-right:40px;" >
		<header>
			<nav class="navbar" >
			<div class="container">
				<div class=" col-md-1">
						<img alt="Not Found" src="images/Aicon.jpeg" height="100px" width="100px"
					class="rounded-circle">
				</div>
				<div class=" offset-md-2 col-md-2" style="padding-top:15px">
					<p style="text-transform: uppercase;
							color: #25262a;
    						letter-spacing: .2em;
    						font-size: 20px;
    						text-align:center;
    						padding-left: 10px;
    						padding-right: 10px;
    						border: 2px solid #25262a;" >Ajio</p>
				</div>
				<div class="offset-md-2 col-md-5">
					<ul class="nav justify-content-center" style="float:right;">
						<li class="nav-item"><button class=" btn"
								data-target="#login" data-toggle="modal">
										<span class="circle" style="color:#fff;padding-top:13px;padding-left:15px">
									      <span class="fa fa-sign-in" style="font-size:20px;float:left;"></span>
									    </span>
									    <span class="button-text" style="padding-top:15px">Login</span> </button> &nbsp;
							&nbsp; &nbsp;
						<li class="nav-item"><button class="btn"
								data-target="#signup" data-toggle="modal"> 
										<span class="circle" style="color:#fff;padding-top:13px;padding-left:15px">
									      <span class="fa fa-user-o" style="font-size:20px;float:left;"></span>
									    </span>
									    <span class="button-text" style="padding-top:15px">SignUp</span> </button> &nbsp;
							&nbsp; &nbsp;
					</ul>
				</div>
			</div>
			</nav>
		</header>
		<hr>
		<div class="modal fade" id="login">
			<div class="modal-dialog modal-dialog-centered" >
				<div class="modal-content">
	
					<!-- Modal Header -->
					<div class="modal-header bg-primary">
						<h4 class="modal-title">Login</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
	
					<!-- Modal body -->
					<div class="modal-body align-items-center">
						<form action="AjioServlet" method="post">
							<div class="form-group" style="padding:5px;">
							<div class="row">
								<label for="email1" class="col-4" ><span style="font-size:24px;font-weight:bold;">Email: </span> </label>
								<div class="input-container col-8">
	    							<i class="fa fa-envelope-o icon"></i>
								 	<input type="email" class="form-control  shadow-lg"
									placeholder="Enter Email" name="email1"> <br>
								</div>
									
							</div>
							<div class="row">
								<label for="pwd1" class="col-4" ><span style="font-size:24px;font-weight:bold;">Password: </i></span> </label>
								 
								 <div class="input-container col-8">
	    							<i class="fa fa-key icon"></i>
								 	<input type="password" class="form-control shadow-lg"
									placeholder="Enter password" name="pwd1">
								</div>
							</div>
							</div>
					</div>
	
					<!-- Modal footer -->
					<div class="modal-footer">
						<input type="submit" value="LogIn" name="bt"
							class="btn btn-outline-primary shadow-lg" style="width:100%;border-radius:20px;">
					</div>
					</form>
	
				</div>
			</div>
		</div>
		<div class="modal" id="signup">
			<div class="modal-dialog  modal-dialog-centered">
				<div class="modal-content">
	
					<!-- Modal Header -->
					<div class="modal-header bg-primary">
						<h4 class="modal-title">Register</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
	
					<!-- Modal body -->
					<div class="modal-body">
						<form action="AjioServlet" method="post">
							<div class="form-group" style="padding:5px;">
							<div class="row">
								<label for="name" class="col-4" ><span style="font-size:24px;font-weight:bold;">Name:</span></label>
								<div class="input-container col-8">
	    							<i class="fa fa-user-o icon"></i>
										<input type="text" class="form-control shadow-lg"
											placeholder="Enter Name" name="name"> <br>
								</div> 
							</div>
									
							<div class="row">
								<label for="email" class="col-4" ><span style="font-size:24px;font-weight:bold;">Email:</span></label>
									 
									 <div class="input-container col-8">
	    								<i class="fa fa-envelope-o icon"></i>
									 	<input
											type="email" class="form-control shadow-lg"
											placeholder="Enter Email" name="email"> <br>
									</div>
							</div>
							<div class="row">
								<label for="pwd" class="col-4" ><span style="font-size:24px;font-weight:bold;">Password:</span></label>
								 
								 <div class="input-container col-8">
	    							<i class="fa fa-key icon"></i>
									 <input type="password" class="form-control shadow-lg"
										placeholder="Enter password" name="pwd">
								</div>
							</div>
							</div>
					</div>
	
					<!-- Modal footer -->
					<div class="modal-footer">
						<input type="submit" value="Register" name="bt"
							class="btn btn-outline-primary shadow-lg" style="width:100%; border-radius:20px;">
					</div>
					</form>
	
				</div>
			</div>
		</div>
		<br>
		<div class="c-height">
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
		</div>
		<br>
		
		<br>
		
		<div class="row">
			<div class="col-sm-5">
				<div class="card">
					<div class="card-image">
						<img class="img-responsive img1" src="images/hero_1.jpg">
						<span class="card-title">Shoes Promotion</span>
					</div>
					<div class="card-content">
						<i class="badge badge-success">Best Seller</i>
						<p>This is our best Selling Product in shoe category currently out of Stock</p>
					</div>
				</div>
				<div class="card">
					<div class="card-image">
						<img class="img-responsive" src="images/person_3.jpg">
						<span class="card-title">EyeGlasses Promotion</span>
					</div>
					<div class="card-content">
						<i class="badge badge-success">Best Seller</i>
						<p>This is our best Selling Product in Eyeglasses category currently out of Stock</p>
					</div>
				</div>
				<div class="card">
					<div class="card-image">
						<img class="img-responsive" src="images/person_4.jpg">
						<span class="card-title">SunGlasses Promotion</span>
					</div>
					<div class="card-content">
						<i class="badge badge-success">Best Seller</i>
						<p>This is our best Selling Product in Sunglasses category currently out of Stock</p>
					</div>
				</div>
			</div>
			<div class="col-sm-7">
				<center>
					<form action="AjioServlet" method="post">
						<b>Select Category :</b> 
						
						<select name="category" >
						<!-- Displaying categories in drop down menu -->
							<c:forEach var="obj" items="${pList}">
								<option>${obj}</option>
							</c:forEach>
						</select> &nbsp;&nbsp; <input type="submit" class="btn btn-outline-primary" value="Go"
							name="bt" style="width:70px;height:50px; border-radius:15px">
					</form>
				</center>
				<table class="table table-hover table-bordered" style="margin-top:20px">
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
				
			</div>
		</div>
	</div>
	<hr>
	<footer>
		<div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
            <p>
            Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This Project is made with <i class="fa fa-heart-o" aria-hidden="true" style="color:red;"></i> by <a href="#" target="_blank" class="text-primary">Our Team</a>
            </p>
          </div>
          
        </div>
	</footer>
</body>
</html>