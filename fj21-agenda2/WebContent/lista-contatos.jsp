<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:import url="cabecalho.jsp" />


<table border="1">
<tr bgcolor="ff0000">
<td>Nome</td>
<td>Email</td>
<td>Endereço</td>
<td>Data Nascimento</td>
</tr>
	<c:forEach var="contato" items="${contatos}" varStatus="id">
		<tr bgcolor="${id.count % 2 == 0 ? 'aaee88' : 'ffffff' }">
		<td>${contato.nome}</td>
		<td>
		<c:if test="${not empty contato.email}">
			<a href="mailto:${contato.email}">${contato.email}</a>
		</c:if>
		<c:if test="${empty contato.email}">
			E-mail não informado.
		</c:if>
		</td>
		<td>${contato.endereco}</td>
		<td>
		<fmt:formatDate value="${contato.dataNascimento.time}" pattern="dd/MM/yyyy"/>
		<td bgcolor="ff0000">
			<a href="mvc?logica=RemoveContatoLogic&id=${contato.id}">Remove</a>
		</td>
		<td bgcolor="ff0000">
			<a href="mvc?logica=MostraContatoLogic&id=${contato.id}">Altera</a>
		</td>
		</td>
		
		</tr>
	</c:forEach>
</table>
<c:import url="rodape.jsp" />
</body>
</html>