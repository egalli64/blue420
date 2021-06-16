<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Films</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" type="text/css" href="/blue/css/blue.css">
</head>
<body>
	<h1>Location</h1>
	<table>
		<tr>
			<th>city</th>
			<th>name</th>
		</tr>
		<c:forEach var="film" items="${films}">
			<tr>
				<td>${film.title}</td>
				<td>${film.director}</td>
			</tr>
		</c:forEach>
	</table>
	<p>
		Back <a href="/blue/index.jsp">home</a>
	</p>
</body>
</html>