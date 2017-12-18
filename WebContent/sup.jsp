<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<!-- Website template by freewebsitetemplates.com -->
<jsp:include page="/menu/menu3.jsp" />
<html>
<head>
<div id="body">
<div>
<form action="Servlet_sup" method="post">
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
<td></td>
<td  colspane="2" align="left" ><input type="submit" value="supprimer" name="supprimer"/></td>
</tr>

</table>
</form>
</div>
</div>
		
</body>
<jsp:include page="/footer/footer.jsp" />
</html>



