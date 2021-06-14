<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<sql:query dataSource="jdbc/blue" var="users">select * from users</sql:query>
<title>Users</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" type="text/css" href="/blue/css/blue.css">
</head>
<body>
    <h1>Users by JSTL (don't do this in production!)</h1>
    <table>
        <tr>
            <th>id</th>
            <th>first name</th>
            <th>last name</th>
        </tr>
        <c:forEach var="cur" items="${users.rows}">
            <tr>
                <td>${cur.USER_ID}</td>
                <td>${cur.FIRST_NAME}</td>
                <td>${cur.LAST_NAME}</td>
            </tr>
        </c:forEach>
    </table>
    <p>
        Back <a href="/blue/index.jsp">home</a>
    </p>
</body>
</html>