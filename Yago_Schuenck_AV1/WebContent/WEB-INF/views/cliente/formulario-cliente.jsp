<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	margin: 10px;
}

.aw-required>.control-label:after {
	content: "*";
}
</style>
<title>Cadastrar Cliente</title>
</head>
<body>
	<form class="form-horizontal" action="salva-cliente" method="POST">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="clearfix">
					<h1 class="panel-title aw-titulo-panel">Novo cliente</h1>
				</div>
			</div>
			<div class="panel-body">
				<div style="visibility: hidden">
					<label for="id" class="col-sm-2 control-label">ID</label> <input
						class="form-control" type="text" name="id"
						value="<c:out value="${clientes.id} "/>" readonly="readonly"
						placeholder="ID" />
				</div>
				<div class="form-group aw-required">
					<label for="nome" class="col-sm-2 control-label">Nome</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="nome"
							value="<c:out value="${clientes.nome}"/>" autofocus="autofocus" />
					</div>
				</div>
				<div class="form-group aw-required">
					<form:errors path="clientes.nome" cssStyle="color:red" />
				</div>
				<div class="form-group aw-required">
					<label for="cpf" class="col-sm-2 control-label">CPF</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="cpf"
							value="<c:out value="${clientes.cpf}"/>" />
					</div>
				</div>
				<div class="form-group aw-required">
					<form:errors path="clientes.cpf" cssStyle="color:red" />
				</div>
				<div class="form-group aw-required">
					<label for="endereco" class="col-sm-2 control-label">Endereço</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="endereco"
							value="<c:out value="${clientes.endereco}"/>" />
					</div>
				</div>
				<div class="form-group aw-required">
					<form:errors path="clientes.endereco" cssStyle="color:red" />
				</div>
				<div class="form-group aw-required">
					<label for="telefone" class="col-sm-2 control-label">Telefone</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="telefone"
							value="<c:out value="${clientes.telefone}"/>" />
					</div>
				</div>
				<div>
					<form:errors path="clientes.telefone" cssStyle="color:red" />
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						<button type="submit" class="btn btn-primary">Salvar</button>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>