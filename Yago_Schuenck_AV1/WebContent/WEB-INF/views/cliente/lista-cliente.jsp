<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<style type="text/css">
.table_list tr:nth-child(even) {
	background: #FFFFFF
}

.table_list tr:nth-child(odd) {
	background: #F5F5F5
}
</style>
<title>Listar Cliente</title>
</head>
<body>
	<h2>Lista de Clientes</h2>
	<p>
		<a href="novo-cliente" class="btn btn-info" role="button"
			style="margin-left: 15px">Novo Cliente</a>
	</p>
	<div id="content" class="col-lg-8">
		<table class="table table_list">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>CPF</th>
					<th>Endereço</th>
					<th>Telefone</th>
					<th colspan="2">Ações</th>
					<th colspan="1">Pedidos</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${clientes}" var="cliente">
					<tr>
						<td><c:out value="${cliente.id}" /></td>
						<td><c:out value="${cliente.nome}" /></td>
						<td><c:out value="${cliente.cpf}" /></td>
						<td><c:out value="${cliente.endereco}" /></td>
						<td><c:out value="${cliente.telefone}" /></td>
						<td><a href="edita-cliente?id=<c:out value="${cliente.id}"/>"><img
								src="<c:url value="/resources/images/pencil-and-paper.png" />" /></a></td>
						<td><a
							href="remove-cliente?id=<c:out value="${cliente.id}"/>"><img
								src="<c:url value="/resources/images/forbidden-sign.png" />" /></a></td>
						<td><a href="novo-pedido?id=<c:out value="${cliente.id}"/>"><img
								src="<c:url value="/resources/images/plus-sign.png" />"
								style="margin-left: 20px" /></a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>