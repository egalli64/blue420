<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Users</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" type="text/css" href="/blue/css/blue.css">
</head>
<body>
	<h1>Users</h1>
	<table>
		<tr>
			<th>first_name</th>
			<th>last_name</th>
			<th>password</th>
		</tr>
		<c:forEach var="user" items="${users}">
			<tr>
				<td>${user.first_name}</td>
				<td>${user.last_name}</td>
				<td>${user.password}</td>
			</tr>
		</c:forEach>
	</table>
	<p>
		Back <a href="/blue/index.jsp">home</a>
	</p>
</body>
</html>