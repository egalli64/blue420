<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<meta name="keywords" content="Travel, Film, Città">
			<title>Scene Place</title>
			<link rel="stylesheet"
				href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
			<link rel="stylesheet" type="text/css" href="/blue/css/blue.css">
		</head>

		<body>
			<nav class="menu">
				<b href="index.jsp">Home</b>
				<b href="Contatti.html">Contact</b>
				<b href="Storia.html">About</b>
				<c:if test="${logged == null}">
					<form class="user" method="POST" action="login">
						username: <input type="text" size="40" maxlength="40" name="username" /> <br /> password: <input
							type="password" name="password" /> <br /> <input type="submit" value="login" />
					</form>
				</c:if>
				<!--<c:if test="${logged != null}">
					<p id="hello">Welcome ${logged.username}</p>
				</c:if>-->
			</nav>
			<h2 id="ts">Scene Place</h2>
			<!--<p id="hello">Welcome ${logged.username}</p>-->
			<c:if test="${logged != null}">
					<p id="hello">Welcome ${logged.username}</p>
				</c:if>
			<div class="topnav">
<form id="sch" action="films">

					<input class="uno" type="text" name="title" placeholder="Search film...">
					<input class="due" type="submit" value="go!">

				</form>

			</div>




			<section>
				<h1>Follow us:</h1>
				<a href="https://www.facebook.com/ " class="fa fa-facebook"></a>
				<a href="https://twitter.com/login?lang=it" class="fa fa-twitter"></a>
				<a href=" https://www.instagram.com/" class="fa fa-instagram"></a>
				<a href="https://www.youtube.com/" class="fa fa-youtube"></a>

			</section>
			<br>
			<footer>
				<small>©2021 Design by Nabila El Fakir, Sarah Ricci, Chiara Palmentieri, Magda Boscarino, Sarah
					Clementini, Giulia Cicatiello, Francesca Contestabile, Angelica Iantorno </small>
			</footer>
		</body>

		</html>