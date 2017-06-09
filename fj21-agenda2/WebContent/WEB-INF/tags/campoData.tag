<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ attribute name="id" required="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ attribute name="value" required="false" type="java.util.Date"%>

<fmt:formatDate value="${value}" pattern="dd/MM/yyyy" var="data"/>

<input type="text" id="${id}" name="${id}" value="${data}"/>

<script>
$("#${id}").datepicker({dateFormat:'dd/mm/yy', changeMonth: true, changeYear: true, showButtonPanel: true});
</script>
