<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>A La Une</title>
	<link rel="stylesheet" href="run/css/style.css" type="text/css">
	<link rel="stylesheet" type="text/css" href="css/mobile.css">
	<script src="js/mobile.js" type="text/javascript"></script>
</head>
<body>
	<div id="page">
		<div id="header">
			<div id="navigation">
				<span id="mobile-navigation">&nbsp;</span>
				<a href="index.html" class="logo"><img src="run/images/5.jpg" alt=""></a>
				<ul id="menu">
					<li>
						<a href="indexjsp.jsp">Home</a>
					</li>
					<li>
						<a href="about.html">About</a>
					</li>
					<li>
						<a href="running.html">Running</a>
						<ul>
							<li>
								<a href="runningsinglepost.html">Running single post</a>
							</li>
						</ul>
					</li>
					<li class="selected">
						<a href="blog.html">Blog</a>
						<ul>
							<li>
								<a href="blogsinglepost.html">blog single post</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="ajout-article.jsp">ajouter</a>
					</li>
				</ul>
			</div>
		</div>
		</div>
		<div id="body">
	
			<div >
			
			

<form action="
@WebServlet("Servlet_sup" method="post">
<h3>Votre Article</h3>
<table style="align:center;width:120%">

<tr>
<td align="right"><h4 style="color:white">nom auteur :</h4></td>
<td align="left"><input type="text" name="nom-aut"/></td>
</tr>
<tr>
<td align="right"><h4 style="color:white">Titre :</h4></td>
<td align="left"><input type="text" name="titre"/></td>
</tr>
<tr>
<td align="right"><h4 style="color:white">Date :</h4></td>
<td align="left"><input type="date" name="date"/></td>
</tr>
<tr>
<td></td>
<td  colspan="2" align="left" ><a href="indexjsp.jsp"><input type="submit" value="supprimer" name="supprimer" ></a></td>

</tr>

</table>
</form>
		</div>
		<div id="footer">
			<div>
				<div class="connect">
					<a href="http://freewebsitetemplates.com/go/twitter/" class="twitter">twitter</a>
					<a href="http://freewebsitetemplates.com/go/facebook/" class="facebook">facebook</a>
					<a href="http://freewebsitetemplates.com/go/googleplus/" class="googleplus">googleplus</a>
					<a href="http://pinterest.com/fwtemplates/" class="pinterest">pinterest</a>
				</div>
				<p>&copy; 2023 by RNRNR. All rights reserved.</p>
			</div>
		</div>
	</div>
</body>
</html>



