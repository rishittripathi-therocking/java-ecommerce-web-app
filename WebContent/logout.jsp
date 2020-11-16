<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<style>
body {
	background-image:url(images/background.png);
}
</style>
</head>
<body>
	<%
		session.invalidate();
	%>
	<div class="container">
	
		<header>
			<nav class="navbar" >
			<div class="container row">
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
				<div class="col-md-8"></div>
			</div>
			</nav>
		</header>
		<div class="alert alert-success" style="text-align:center;">
			<b>Thank you! Click Re-login to enjoy shopping again!</b>
		</div>
		<center>
	
		<br><br>
		<a href="AjioServlet" class="btn btn-outline-primary" style="border-radius:40px">Re-Login</a>
	</center>
	</div>
	<hr>
	<footer style="bottom:0">
		<div class="row pt-5 mt-5 text-center">
          <div class="col-md-12">
          <center>
            <p>
            Copyright &copy;<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script>document.write(new Date().getFullYear());</script> All rights reserved | This Project is made with <i class="fa fa-heart-o" aria-hidden="true" style="color:red;"></i> by <a href="#" target="_blank" class="text-primary">Our Team</a>
            </p>
            </center>
          </div>
          
        </div>
	</footer>
</body></html>