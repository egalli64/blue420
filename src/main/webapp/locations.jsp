<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Locations</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" type="text/css" href="/blue/css/blue.css">
</head>
<body>
    <h1>Locations</h1>
    <table>
        <tr>
            <th>city</th>
            <th>name</th>
          
        </tr>
        <c:forEach var="location" items="${locations}">
            <tr>
                <td>${location.city}</td>
                <td>${location.name}</td>
    </tr>
        </c:forEach>
    </table>
    <p>
        Back <a href="/blue/index.jsp">home</a>
    </p>
</body>
</html>