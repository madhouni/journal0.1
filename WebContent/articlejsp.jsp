  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<!-- Website template by freewebsitetemplates.com -->
<html>
<body>
<jsp:include page="/menu/menu2.jsp" />

		<div id="body">
			<div>

				<h1>Journal</h1> 
				<br/><br/><br/>
				
				<c:forEach var="art" items="${article}">
						<p  style="color:white;text-decoration:underline;font-size: large; "><b>${art.titre}</b></p><br/>
						<p>${art.contenu}</p><br/> <img  style="border-radius:20px" src="AfficherImage?id=${art.titre}" /><br/>
						<c:out value="********************************************************************************************************************************"></c:out>
						<br/>
						
				</c:forEach>
		</div>
		</div>
		
</body>
<jsp:include page="/footer/footer.jsp" />
</html>
