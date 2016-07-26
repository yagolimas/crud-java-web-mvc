<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet" type="text/css" />
<title>Cadastrar Cliente</title>
</head>
<body>
	<div id="content" class="col-lg-4">
		<h2>Cadastrar Cliente</h2>
		<form action="" method="POST">
			<div style="visibility: hidden">
				<label for="id">ID</label> <input class="form-control" type="text"
					name="idCliente" value="" readonly="readonly" placeholder="ID">
			</div>
			<div>
				<input class="form-control" type="text" name="nomeCliente" value=""
					placeholder="Nome">
			</div>
			<div>
				<input class="form-control" type="text" name="cpf" value=""
					placeholder="CPF">
			</div>
			<div>
				<input class="form-control" type="text" name="endereco" value=""
					placeholder="Endereço">
			</div>
			<div>
				<input class="form-control" type="text" name="telefone" value=""
					placeholder="Telefone">
			</div>
			<div>
				<input class="btn btn-success" type="submit" value="Salvar" />
			</div>
		</form>
	</div>
</body>
</html>