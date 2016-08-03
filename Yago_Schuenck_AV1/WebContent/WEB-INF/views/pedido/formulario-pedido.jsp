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
body {
	margin: 10px;
}
</style>
<title>Cadastrar Pedido</title>
</head>
<body>
	<form class="form-horizontal" action="salva-pedido" method="POST">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="clearfix">
					<h1 class="panel-title aw-titulo-panel">Novo Pedido</h1>
				</div>
			</div>
			<div class="panel-body">
				<div style="visibility: hidden">
					<label for="id" class="col-sm-2 control-label">ID</label> <input
						class="form-control" type="text" name="id" readonly="readonly"/>
				</div>				
				<div class="form-group aw-required">
					<label for="nomeCliente" class="col-sm-2 control-label">Nome</label>
					<div class="col-sm-4">
						<input class="form-control" type="text" name="nomeCliente"
							value="<c:out value="${clientes.nome}"/>" readonly="readonly" />
					</div>
				</div>
				<div class="form-group aw-required">
					<label for="status" class="col-sm-2 control-label">Status</label>
					<div class="col-sm-4">
						<select class="form-control" name="status">
							<c:forEach items="${status}" var="s">
								<option value="<c:out value="${s}"/>"><c:out
 										value="${s.descricao}"/></option>
 							</c:forEach>
<!-- 								<option value="Pendente">Pendente</option>	 -->
						</select>
					</div>
				</div>
				<div class="form-group aw-required">
					<label for="dataPedido" class="col-sm-2 control-label">Data
						do Pedido</label>
					<div class="col-sm-4">
						<input class="form-control" type="date" name="dataPedido" />
					</div>
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