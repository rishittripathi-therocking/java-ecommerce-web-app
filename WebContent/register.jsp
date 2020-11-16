<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
body {
	background-image:url(images/background.png);
}
.button {
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
  text-align:center;
}
.button.btn {
  width: 50%;
  height:150px;
  
}
.button.btn .circle {
  transition: all 0.45s cubic-bezier(0.65, 0, 0.076, 1);
  position: relative;
  display: block;
  margin: 0;
  width: 3rem;
  height: 3rem;
  background: #282936;
  border-radius: 1.625rem;
}
.button.btn .circle .icon1 {
  transition: all 0.45s cubic-bezier(0.65, 0, 0.076, 1);
  position: absolute;
  top: 3;
  bottom: 0;
  margin: auto;
  background: #fff;
}
.button.btn .circle .icon1.arrow {
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
.button.btn .button-text {
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
.button:hover .circle {
  width: 100%;
}
.button:hover .circle .icon.arrow {
  background: #fff;
  -webkit-transform: translate(1rem, 0);
          transform: translate(1rem, 0);
}
.button:hover .button-text {
  color: #fff;
}
</style>
</head>
<body>

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
		<div class="alert alert-success " role="alert" style="text-align:center;">
			You have been registered successfully
		</div>
	</div>
	<center>
		<h3><a class="button btn" href="login.jsp"><span class="circle" style="color:#fff;padding-top:13px;padding-left:15px">
									      <span class="fa fa-sign-in" style="font-size:20px;float:left;"></span>
									    </span>
									    <span class="button-text" style="padding-top:15px">Click Here To Login With Your Credentials!</a></h3>
	</center>
</body>
</html>