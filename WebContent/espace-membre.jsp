<%@page import="Bean.Utilisateur"%>
<%@page import="Bean.Article"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

      <c:if test="${not empty sessionScope.utilisateur}">
	  <p>bienvenue</>
		nom : ${utilisateur.nom} <br/> 
		<c:forEach var="art" items="${article}">
		<p>${art.contenu}</p>
		</c:forEach><br/>                                      
		<a href="deco">Déconnexion</a>	
		</c:if>
	 	
	 	
	 	<c:if test="${empty sessionScope.utilisateur}">
	<b>vous devez etre connecté pour acceder à cette page </b> <a href="authentification.jsp">authentification</a>	
	</c:if>
	

	
		
	
</body>
</html>

