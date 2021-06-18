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
			<link rel="stylesheet" type="text/css" href="/blue/css/contact.css">
		</head>

        <body id= "about">
            <header class="box">
                <div id= "navbar" class="navbar top">          
                <h1 class="logo">
                <a href="index.jsp">
                <span class="text-primary"><i class="fas fa-film"></i>Scene</a> </span>Place
                </h1>
                <nav>
             <ul>
             <li> <a href="index.jsp">Home</a></li>
            <li>  <a href="Contatti.jsp">Contact</a> </li>
             <li> <a href="Storia.jsp">About</a></li>
             </nav>
            </div>
            <div class="content">
                <h1>Contact us</h1>
                <p>We are always available for you</p>
            </div>
            </header>
            
            <h1> Dove siamo</h1>
            <div id= "mappa"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2969.9890271184217!2d12.55910681494447!3d41.89309307245562!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x132f624e5f578dad%3A0x39f27dfa38fe3a62!2sVia+Giacomo+Bresadola%2C+Roma+RM%2C+Italia!5e0!3m2!1sit!2sus!4v1561500838241!5m2!1sit!2sus" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
              </div>
             <h2> Contattaci </h2>
              <form>
                <form action=”nabilaelfakir@gmail.com?subject=suggerimenti” method=”POST”>
            Nome:<br>
                <input type="text" name="Nome">
                <br>
                Cognome:<br>
                <input type="text" name:"Cognome"><br>
                E-mail:<br>
            <input type="text" name="email"><br>
                <br>
                Messaggio:<br>
                <textarea rows="4" cols="50" name="Messaggio" >Mesaggio</textarea>
              <br><br>
              <input type="submit">
              </form>
              <p> CONTATTI </P>
              <adress>
                <h3> E-mail: blue@gmail.com </h3>
                <h3> Tel: 0620755756 </h3>
                <h3> Responsabile: Blue </h3>
              </adress>
                <p> ORARIO </p>
              <ul>
                <li> LUNEDÌ 10:30 - 19:30</li>
                <li>MARTEDÌ - SABATO 09:30 - 21:30</li>
              <li>  DOMENICA 10:00 - 20:30</li> </ul>
          

   <div class="footer-container">
            
            <section>
                <h1>Follow us:</h1>
                <a href="https://www.facebook.com/ " class="fa fa-facebook"></a>
                <a href="https://twitter.com/login?lang=it" class="fa fa-twitter"></a>
                <a href=" https://www.instagram.com/" class="fa fa-instagram"></a>
                <a href="https://www.youtube.com/" class="fa fa-youtube"></a>
            </div>
            </section>
            
        </body>
    

    </html>
    </head>