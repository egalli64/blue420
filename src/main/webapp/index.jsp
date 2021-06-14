<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blue Home</title>
<link rel="icon" href="data:;base64,=">
<link rel="stylesheet" type="text/css" href="/blue/css/blue.css">
</head>
<body>
	<h2>Login User</h2>
	<form method="POST" action="login">
		First name: <input type="text" size="40" maxlength="40"
			name="firstname" /> <br /> Last name:<input type="text" size="40"
			maxlength="40" name="lastname" /> <br /> Password: <input
			type="password" name="password" /> <br /> <input type="submit"
			value="create" />
	</form>
</body>
</html>