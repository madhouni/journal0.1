<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<jsp:include page="/menu/menu2.jsp"/>
<html>
<head>
	
		<div id="body">
	
			<div>
			
			

<form action="uplI" method="post" enctype="multipart/form-data">
<h3>Choisissez votre image :</h3>
<table style="align:center;width:120%">


<tr>
<td align="right"><h4 style="color:white">Auteur :</h4></td>
<td align="left"><input type="text" name="auteur"/></td>
</tr>
<tr>
<td align="right"><h4 style="color:white">titre image :</h4></td>
<td align="left"><input type="text" name="titre-image"/></td>
</tr>
<tr>
<td align="right"><h4 style="color:white">titre article :</h4></td>
<td align="left"><input type="text" name="titre-article"/></td>
</tr>
<tr>
<td align="right"><h4 style="color:white">Upload image :</h4></td>
<td align="left"><input type="file" name="file" value="Browse"  /></td>
</tr>
<tr>
<td align="right"></td>
<td  colspane="2" align="left" ><input  style="width:260px" type="submit" name="goUpload" value="Upload" /></td>
</tr>

</table>
</form>
		</div>
		</div>
		
</body>
<jsp:include page="/footer/footer.jsp" />
</html>



