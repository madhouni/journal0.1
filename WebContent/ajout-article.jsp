
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
<jsp:include page="/menu/menu2.jsp" />
<body>
	
		<div id="body">
	
			<div >
			
			

<form action="art" method="post">
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
<td  align="right"><h4 style="color:white">Article :</h4></td>
<td  align="left"> <textarea name="contenu" rows="20" cols="40"></textarea></td>
</tr>
<tr>
<td></td>
<td  colspane="2" align="left" ><a href="indexjsp.jsp"><input type="submit" value="ajouter" name="ok" ></a></</td>

</tr>

</table>
</form>

				
		</div>
		<jsp:include page="/footer/footer.jsp" />
	</div>
</body>
</html>



