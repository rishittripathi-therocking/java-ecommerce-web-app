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

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->

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
				<br> <input type="submit" class="btn btn-info text-white"
					value="Continue" name="bt"> <br> <br>
			</center>
		</form>
	</div>
</body>
</html>