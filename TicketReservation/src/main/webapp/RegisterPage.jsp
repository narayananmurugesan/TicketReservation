<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="jquery/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="Navi.css">
<link rel="stylesheet" href="Button.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Register Page</title>
</head>
<body>
	<div><%@ include file="header.jsp"%>
	</div>
	<p align="center">
		<img src="D:/Sample HTML/REGISTER.jpg" alt="...">
	</p>
	<!-- Register page -->
	<div class="container">
		<div class="col-xs-offset-4 col-xs-8">
			<!--<h3>Register Page</h3> -->
			<form action="register/reg" method="post" class="form-horizontal">
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
					<div class="form-group required">
						<label for="inputEmail" class="control-label col-xs-2">Confirm
							Password</label>
						<div class="col-sm-3">
							<input type="password" class="form-control"
								name="confirmPassword" id="inputName"
								placeholder="Confirm Password"><br>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-group required">
						<label for="inputEmail" class="control-label col-xs-2">Firstname</label>
						<div class="col-sm-3">
							<input type="Text" class="form-control" name="firstName"
								id="inputName" placeholder="Firstname"><br>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-group required">
						<label for="inputEmail" class="control-label col-xs-2">Lastname</label>
						<div class="col-sm-3">
							<input type="Text" class="form-control" name="lastName"
								id="inputName" placeholder="Lastname"><br>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-group required">
						<label for="inputEmail" class="control-label col-xs-2">E-Mail
							ID</label>
						<div class="col-sm-3">
							<input type="email" class="form-control" name="emailID"
								id="emailaddress" placeholder="E-Mail ID"><br>
						</div>
					</div>
				</div>

				<div class="form-group">
					<label for="inputEmail" class="control-label col-xs-2">Address</label>
					<div class="col-sm-3">
						<input type="Text" class="form-control" name="address"
							id="inputName" placeholder="Address"><br>
					</div>
				</div>

				<div class="form-group">
					<div class="form-group required">
						<label for="inputEmail" class="control-label col-xs-2">User
							Role ID</label>
						<div class="col-sm-3">
							<input type="Text" class="form-control" name="userRole"
								id="inputName" placeholder="User Role"><br>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-group required">
						<div class="control-label col-xs-2">
							<input type="submit" class="btn btn-success" value="Register">

						</div>
					</div>
				</div>

			</form>
		</div>
	</div>
</body>
</html>