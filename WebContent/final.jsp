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
<body class="bg-dark text-white">
	<nav class="navbar bg-secondary navbar-expand">
	<div class="container">
		<img alt="Not Found" src="images/Aicon.jpeg" height="100px" width="100px"
			class="rounded-circle">
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

	<center>
		<br>
		<h2 class="display-4">You have successfully placed your order.</h2>
		<br>
		<h2 class="bg-light text-success">Thank you for visiting us !</h2>
	</center>
</body>
</html>