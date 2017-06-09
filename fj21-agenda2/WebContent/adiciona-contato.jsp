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
    <h1>Adiciona Contatos</h1>
    <hr/>
    <form action="adicionaContato" method="post">
    
    	<caelum:labelInput id="nome" label="Nome:"/><br/><br/>
    	<caelum:labelInput id="email" label="E-mail:"/><br/><br/>
    	<caelum:labelInput id="endereco" label="Endereço:"/><br/><br/>
    	Data Nascimento: <caelum:campoData id="dataNascimento"/><br/><br/>
    	
    	
    	<input type="submit" value="Gravar"/>
    </form>
<c:import url="rodape.jsp"/>
</body>
</html>