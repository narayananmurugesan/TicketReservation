<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

<title>BooKing Page</title>
</head>
<body>
	<script src="jquery/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<div class="container">
		<div class="col-xs-offset-4 col-xs-8">
			<!--<h3>Register Page</h3> -->
			<form action="book" method="post" class="form-horizontal">
				<div class="form-group">
					<div class="form-group required">
						<label for="inputEmail" class="control-label col-xs-2">Total
							Seat</label>
						<div class="col-sm-3">
							<input type="Text" class="form-control" name="count"
								id="inputName" placeholder="Total Seat Count"><br>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-group required">
						<label for="inputEmail" class="control-label col-xs-2">Total
							Count</label>
						<div class="col-sm-3">
							<input type="Text" class="form-control" name="count"
								id="inputName" placeholder="Total Seat Count"><br>
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-group required">
						<label for="inputEmail" class="control-label col-xs-2">Timing</label>
						<div class="col-sm-3">
							<!-- <input type="text" class="form-control" name="timing"
								id="inputName" placeholder="Timing"><br> -->

							<!-- <ul class="dropdown-menu" role="menu"
								aria-labelledby="dropdownMenu"> -->
							<%-- <div>${listbook}</div> --%>
							<ul>
								<c:forEach var="listvalue" items="${movies}">
									<li>${movies}</li>
								</c:forEach>
							</ul>

							<!-- </ul> -->
						</div>
					</div>
				</div>

				<div class="form-group">
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
						type="submit" class="btn btn-success" value="Continue">
				</div>


			</form>
		</div>
	</div>
</body>
</html>