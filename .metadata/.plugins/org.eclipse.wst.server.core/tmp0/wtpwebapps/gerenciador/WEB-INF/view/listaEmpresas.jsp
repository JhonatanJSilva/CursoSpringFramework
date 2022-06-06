<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List,br.com.alura.gerenciador.modelo.Empresa" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Standard Taglib</title>
</head>
	<body>
	
		Usuario Logado: ${usuarioLogado.login}
		
		<br>
		<br>
		<br>
	
		<c:if test="${not empty empresa}">
		Empresa ${empresa} cadastrada com sucesso!
		</c:if>
		
		<c:if test="${empty empresa}">
		Nenhuma empresa cadastrada!
		</c:if>
	
		<h1>
		Lista de empresas:<br> 
		</h1>
		
		
		<ul>
			<c:forEach items="${empresas}" var="empresa">
				<li>
					${empresa.getNome()}
					 - <fmt:formatDate value="${empresa.getdataAbertura()}" pattern="dd/MM/yyyy"/>
					 <a href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">Edita</a>
					 <a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">Remove</a>
				</li>
			</c:forEach>
		</ul>		
	</body>
</html>

<% 
//http://localhost:8080/gerenciador/listaEmpresas

//<c:url value="/removeEmpresa" var="linkServletRemoveEmpresa"/>  
%>

