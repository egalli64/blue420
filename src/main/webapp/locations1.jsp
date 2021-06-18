<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="keywords" content ="Travel, Film, Città">
<title>Scene Place</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="/blue/css/locations1.css">

</head>
<body>
    <table>
		<c:forEach var="locations1" items="${locations}">
			<tr>
				<td>${film.title}</td>
				<td>${film.director}</td>
			</tr>
		</c:forEach>
	 </table>
    <nav class="menu">
        <a href="index.jsp">Home</a>
           </nav>
    <header>
        <h1 id = "bordered1">Matrimonio all'italiana</h1> <br>
        <h3>Napoli, Quartieri spagnoli</h3>
    </header>
    <pre class="one">
        <i> 
            Domenico Soriano, ricco pasticcere e impenitente donnaiolo napoletano,
            è legato all'ex prostituta Filumena Marturano da una relazione più che ventennale.
              Conosciutala al tempo della seconda guerra mondiale durante un bombardamento, 
              dopo averla tolta dalla casa di tolleranza in cui era, dapprima l'aveva sistemata 
              in un appartamento di sua proprietà e poi l'aveva accolta in casa sua e della sua 
              anziana madre come amante-convivente nonché governante...
        </i>
      
      </pre>
      <video width="640"  height="660" controls >
        <source src="trailer.mp4" type="video/mp4">
       
      </video>
     
    <section>
        <article class="autoFlex">
           
<pre class="two"> <i>
Napoli, fin dalla nascita del cinema, si conferma una delle protagoniste indiscusse della pellicola.
Il suo successo è dovuto al fascino senza tempo che la caratterizza e all’animo plateale che da
sempre l’accompagna nel narrare le storie di vita dei suoi abitanti. La città partenopea, scenario
teatrale sia comico sia drammatico, ha ispirato molti artisti come Totò che, pur avendo recitato
la maggior parte dei suoi film a Roma, è considerato uno degli eroi del cinema napoletano, Eduardo
De Filippo, Massimo Troisi e Vincenzo Salemme, fino ai film sceneggiata con Mario Merola e Nino
D’Angelo.
Se anche voi, come noi, condividete la passione per il cinema e per i viaggi, lasciatevi ispirare da
questi luoghi suggestivi percorrendo le strade, i vicoli e le piazze che hanno ospitato i migliori
volti delle sale cinematografiche!
La prima tappa che ci sentiamo di consigliarvi sono i Quartieri Spagnoli dove è stato ambientato
“Matrimonio all’italiana” di Vittorio De Sica interpretato da Sofia Loren e Marcello Mastroianni e
tratto dalla commedia di Eduardo De Filippo “Filumena Marturano”.
Visitate poi il centro storico, in particolare piazza Bellini dove si trova il complesso di Sant'Antonio
delle Monache a Port'Alba, e Via San Carlo. In questa piazza è stata girata la scena in cui Filumena
Marturano, interpretata da Sofia Loren, uscendo dallo studio dell’avvocato che ha sancito l’annullamento
del suo matrimonio con don Domenico, vede la sua immagine riflessa in una vetrina, sorride nel vedersi
con il cappello da signora indossato per l’occasione e poi lo getta in un cestino dei rifiuti.
Proseguite verso Piazza del Gesù Nuovo, location principale del film, dove potrete ammirare l’Obelisco
dell’Immacolata e l’inconfondibile facciata in bugnato della Chiesa del Gesù Nuovo.
Su questa piazza si affaccia Palazzo Pandola, la casa di Domenico, di cui si riconoscono l’elegante
cortile interno e l’arco di ingresso della facciata con un balcone.
Visitate anche la Chiesa dello Spirito Santo e Nostra Signora di Fatima a Fuorigrotta che fa da sfondo ai
numerosi tentativi di chiarimento tra i protagonisti.
Proseguite verso Castel Nuovo dove si trova la pasticceria Soriano.
Infine, passate per Torre del Greco per rivivere il momento in cui Domenico e Filumena si rilassano su un
prato dopo essere stati all’ippodromo di Agnano.




     </i>
</pre>
<figure><img src = "img1.jpg" alt="pattern" title="napoli"  width="520" height="550" ></figure> 
           
    </section>

</body>

</html>