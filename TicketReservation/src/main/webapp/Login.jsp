<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<spring:url value="jquery/jquery.min.js" var="coreCss" />
<spring:url value="/js/bootstrap.min.js" var="bootstrapCss" />
<link href="${bootstrapCss}" rel="stylesheet" />
<link href="${coreCss}" rel="stylesheet" />
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Login Page</title>
</head>
<body>
	<script src="jquery/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<p align="center">
		<img src="D:/Sample HTML/login1.jpg" alt="...">
	</p>
	<!-- Login page -->

	<div class="container">
		<div class="form-group">
			<div class="form-group required">
				<h1 align="center">Login</h1>
			</div>
		</div>

		<div class="col-xs-offset-4 col-xs-8">
			<!--<h3>Register Page</h3> -->
			<form action="login" method="post" class="form-horizontal">

				<div class="form-group">
					<div class="form-group required">
						<label for="inputEmail" class="control-label col-xs-2">Username</label>
						<div class="col-sm-3">
							<input type="Text" class="form-control" name="username"
								id="inputName" placeholder="Username"><br>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-group required">
						<label for="inputEmail" class="control-label col-xs-2">Password</label>
						<div class="col-sm-3">
							<input type="password" class="form-control" name="password"
								id="inputName" placeholder="Password"><br>
						</div>
					</div>
				</div>

				<div class="form-group">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="submit" class="btn btn-success" value="Login">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="submit" class="btn btn-danger" value="Admin">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				</div>
			</form>
		</div>
	</div>
</body>
</html>