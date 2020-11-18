<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<style>
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

button.btn .circle .icon1::before {
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
.button1:hover .circle {
  width: 100%;
}
.button1:hover .circle .icon.arrow {
  background: #fff;
  -webkit-transform: translate(1rem, 0);
          transform: translate(1rem, 0);
}
.button1:hover .button-text {
  color: #fff;
}
table {
	box-shadow: 0 2px 5px 0 rgba(0,0,0,0.32), 0 2px 10px 0 rgba(0,0,0, 0.32);
}

table tr:hover {

	box-shadow: 0 0 17px rgba(33,33,33,.5); 
}
input[type=submit]:hover {
box-shadow: 0 0 17px rgba(33,33,33,.5); 

}
</style>
</head>
<body >
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
				<div class="offset-md-1 col-md-6">
					<ul class="nav justify-content-center" style="float:right;">
						<li class="nav-item"><button class=" btn">
										<span class="circle" style="color:#fff;padding-top:13px;padding-left:15px">
									      <span class="fa fa-user-o" style="font-size:20px;float:left;"></span>
									    </span>
									    <span class="button-text" style="padding-top:5px;padding-left:30px;">Hi ${uObj.name} </span> </button> &nbsp;
							&nbsp; &nbsp;
						<li class="nav-item">
						<form action="logout.jsp">
						<button class="btn button1"
								data-target="#signup" data-toggle="modal"> 
										<span class="circle" style="color:#fff;padding-top:13px;padding-left:15px">
									      <span class="fa fa-sign-out" style="font-size:20px;float:left;"></span>
									    </span>
									    <span class="button-text" style="padding-top:15px">Sign Out</span> </button> 
									    &nbsp;
							&nbsp; &nbsp;
						</form>
					</ul>
				</div>
			</div>
			</nav>
		</header>
		<hr>

	<div class="container">
		<form action="AjioServlet" method="post">
			<br> Customer Name : <input type="text" name="name"
				value="${uObj.name}"> <br> <br>
			<table class="table table-hover table-bordered">
				<tr class="bg-dark text-white">
					<th>Product Id</th>
					<th>Image</th>
					<th>Name</th>
					<th>Price</th>
					<th>Quantity</th>
				</tr>
				<c:forEach var="entry" items="${selectedProdList}">
					<tr class="bg-dark text-white">
						<input type="hidden" name="pId" value="${entry.key.id}">
					<input type="hidden" name="quant" value="${entry.value}">
						<td>${entry.key.id}</td>
						<td><img src="images/${entry.key.image_url}" class="rounded"
							height="90px" width="90px"></td>
						<td>${entry.key.name}</td>
						<td>${entry.key.price}</td>
						<td>${entry.value}</td>
					</tr>
				</c:forEach>

			</table>
			<center>
				<br>
				<h3>Order Total : ${totalPrice}</h3>
				<br> <input type="submit" class="btn btn-outline-info"
					value="Continue" name="bt"> <br> <br>
			</center>
		</form>
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