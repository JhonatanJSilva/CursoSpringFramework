<%
	String nomeEmpresa = (String)request.getAttribute("empresa");
	System.out.println(nomeEmpresa);

//http://localhost:8080/gerenciador//novaEmpresaCriada.jsp

%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
	<body>
	
		<c:import url="logout-parcial.jsp" />	
	
		<c:if test="${not empty empresa}">
		Empresa ${empresa} cadastrada com sucesso!
		</c:if>
		
		<c:if test="${empty empresa}">
		Nenhuma empresa cadastrada!
		</c:if>
		
	</body>
</html>