<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Navi.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="Button.css">
<script src="jquery/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<title>Movie</title>
</head>
<body>

	<!-- Movie Page -->

	<div class="container" align="center">
		<form action="movie" method="post">
			<h2 align="center">Movie Table</h2>
			<br> <br>
			<ul>
				<c:forEach var="listvalue" items="${movies}">
					<li>${listvalue.movies_id}</li>
					<li>${listvalue.movies_name}</li>
					<li>${listvalue.no_of_shows}</li>
					<li>${listvalue.release_date}</li>
				</c:forEach>
			</ul>

			<table class="table table-bordered">
				<thead>
					<tr class="success">
						<th class="text-center">Movie Name</th>
						<th class="text-center">Release Date</th>
						<th class="text-center">Book Show</th>
					</tr>
				</thead>
				<tbody>
					<tr class="info">
						<td class="text-center">Ayan</td>
						<td class="text-center">23/5/2015</td>
						<td class="text-center">
							<%-- <a href="<c:url value="/register/book"/>" method="post">TEST</a> --%>
							<input type="submit" class="btn btn-danger" value="book">
						</td>
					</tr>
					<tr>
						<td class="text-center">ABCD 2</td>
						<td class="text-center">10/5/2015</td>
						<td class="text-center"><input type="submit"
							class="btn btn-success" value="book"></td>
					</tr>
					<tr class="info">
						<td class="text-center">Ayan 2</td>
						<td class="text-center">29/5/2015</td>
						<td class="text-center"><input type="submit"
							class="btn btn-danger" value="book"></td>
					</tr>
					<tr>
						<td class="text-center">ABCD 3</td>
						<td class="text-center">14/5/2015</td>
						<td class="text-center"><input type="submit"
							class="btn btn-success" value="book"></td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
</html>