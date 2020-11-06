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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar bg-secondary navbar-expand">
	<div class="container">
		<img alt="Not Found" src="images/Aicon.jpeg" height="100px"
			width="100px" class="rounded-circle">
		<ul class="nav justify-content-center">
			<li><a href="" class="btn btn-success">Welcome ${uObj.name}</a></li>
			<li class="nav-item">
				<form action="logout.jsp">
					&nbsp; &nbsp;
					<button class=" btn btn-danger" name="bt">LogOut</button>
				</form>
		</ul>
	</div>
	</nav>
	<br>
	<div class="container">
		Select Category : <br>
		<form action="AjioServlet" method="post">
			<select name="ct">
				<c:forEach var="obj" items="${pList}">
					<option>${obj}</option>
				</c:forEach>
			</select> &nbsp;&nbsp; <input type="submit" class="btn btn-warning" value="GO"
				name="bt">
		</form>
		<br> <br>
		<form action="AjioServlet" method="post">
			<table class="table table-hover table-bordered">
				<tr class="bg-dark text-white">
					<th>Image</th>
					<th>Name</th>
					<th>Unit Price</th>
					<th>Quantity</th>
				</tr>
				<c:forEach var="obj" items="${pdList}">
					<tr>
						<!--Displaying all the records in product table-->
						<input type="hidden" name="productId" value="${obj.id}">
						<td><img src="images/${obj.image_url}" class="rounded"
							height="90px" width="90px"></td>
						<td>${obj.name}</td>
						<td>${obj.price}</td>
						<td><input type="number" name="quantity" value="0" min="0"></td>
					</tr>
				</c:forEach>

			</table>
			<input type="submit" name="bt" value="AddToCart"
				class="btn btn-primary" style="float: 'right';">
		</form>
	</div>

</body>
</html>