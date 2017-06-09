<%@taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/jquery.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<script src="js/jquery-ui.js"></script>
</head>
<body>
<c:import url="cabecalho.jsp"/>
    <h1>Altera Contatos</h1>
    <hr/>
    <form action="mvc" method="post">
    
    <input type="hidden" name="logica" value="AlteraContatoLogic">
    <input type="hidden" name="id" value="${contato.id}">
        
    	<caelum:labelInput id="nome" label="Nome:" value="${contato.nome}"/><br/><br/>
    	<caelum:labelInput id="email" label="E-mail:" value="${contato.email}"/><br/><br/>
    	<caelum:labelInput id="endereco" label="Endereço:" value="${contato.endereco}"/><br/><br/>
    	
    	Data Nascimento: <caelum:campoData id="dataNascimento" value="${contato.dataNascimento.time}"/><br/><br/>
    	
    	
    	<input type="submit" value="Gravar"/>
    </form>
<c:import url="rodape.jsp"/>
</body>
</html>