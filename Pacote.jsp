<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="jstl"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inserir Pacote</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
	crossorigin="anonymous"></script>


</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light p-2">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Central do ADM</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item active"><a class="nav-link "
						href="Cliente.jsp">Cliente</a></li>
					<li class="nav-item"><a style="height: 30px" class="nav-link"
						href="Voo.jsp">Voo</a></li>
					<li class="nav-item "><a
						class="nav-link active bg-gradient text-warning bg-dark my-1 p-3 py-lg-1 py-md-1"
						href="Pacote.jsp">Pacote</a></li>
					<li class="nav-item"><a class="nav-link "
						href="DiariasHotelaria.jsp">Hoteis</a></li>
				</ul>
			</div>
		</div>
		<a class="btn btn-success btn-sm float-right"
			href="./views/Pagina principal/P�gina inicial.html">Voltar para
			o site</a>

	</nav>
	<div class="w-100 p-3 mb-2 text-warning bg-dark "
		style="height: 100px;">
		<h3>Cadastro de Pacote</h3>
	</div>
	<div class="container ">



		<form action="Inserirpacote" method="post" class="form-control">
			<fieldset>
				<legend>Dados do Pacote</legend>

				<div class="row ">
					<div class="col-md-6 mb-2">
						<label for="nome">Id do Hotel:</label> <input type="number" id=""
							name="id_hotel" class="form-control" required>
					</div>
					<div class="col-md-6 mb-2">
						<label for="telefone">Destino:</label> <input type="text"
							id="telefone" name="destino" class="form-control" required>
					</div>

					<div class="col-md-6 mb-2">
						<label for="telefone">Quantidade de pessoas do pacote:</label> <input
							type="number" id="telefone" name="qtd_pessoas_pac"
							class="form-control" required>
					</div>

					<div class="col-md-6 mb-2">
						<label for="telefone">Valor do pacote:</label> <input
							type="number" id="telefone" name="valor_pacote"
							class="form-control" required>
					</div>
					<div class="col-md-6 mb-2">
						<label for="telefone">Data de ida do pacote:</label> <input
							type="text" id="telefone" name="data_ida" class="form-control"
							required>
					</div>
					<div class="col-md-6 mb-2">
						<label for="telefone">Data de volta do pacote:</label> <input
							type="text" id="telefone" name="data_volta" class="form-control"
							required>
					</div>

					<div class="col-md-6 mb-2">


						<label for="telefone">Transfer:</label> <select
							name="transfer_pacote" id="" class="form-select">
							<option>Selecione</option>
							<option>In</option>
							<option>Out</option>
							<option>In/Out</option>
							<option>Sem Transfer</option>
						</select>

					</div>

				</div>
				<br>




				<button type="button" class="btn btn-primary" data-bs-toggle="modal"
					data-bs-target="#staticBackdrop">Cadastrar Pacote</button>
				<a type="button" class="btn btn-success" href="listarpacotes">Listar
					Tabela</a>
				<!-- Modal -->
				<div class="modal fade" id="staticBackdrop"
					data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
					aria-labelledby="staticBackdropLabel" aria-hidden="true">
					<div class="modal-dialog">

						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="staticBackdropLabel">Cadastro
									Realizado com Sucesso</h5>
								<button type="button" class="btn-close" data-bs-dismiss="modal"
									aria-label="Close"></button>
							</div>
							<div class="modal-body">O pacote j� se encontra em nosso
								banco de dados</div>
							<div class="modal-footer">

								<input type="submit" value="Ok" class="btn btn-primary">
							</div>
						</div>
					</div>
				</div>

			</fieldset>
		</form>
		<br> <br> <br>
		<div class="container  table-responsive">
			<table
				class="table table-hover table-light table-striped text-center border">
				<thead>
					<tr class="success  ">
						<th class="border" scope="col">Nome do Hotel</th>
						<th class="border" scope="col">Quantidade de dias</th>
						<th class="border" scope="col">Quantidade de quartos</th>
						<th class="border" scope="col">Municipio do Hotel</th>
						<th class="border" scope="col">Estado do Hotel</th>
						<th class="border" scope="col">Rua do Hotel</th>
						<th class="border" scope="col">Numero do Hotel</th>
						<th class="border" scope="col">Id do hotel</th>
						<th class="border" scope="col">Quantidade de pessoas no
							pacote</th>
						<th class="border" scope="col">Valor do pacote</th>
						<th class="border" scope="col">Tipo</th>
						<th class="border" scope="col">Pacote data de ida</th>
						<th class="border" scope="col">Pacote data de volta</th>
						<th class="border" scope="col">Destino do Pacote</th>
						<th class="border" scope="col">Transfer do pacote</th>
						<th>A��es</th>
					</tr>
				</thead>
				<tbody>
					<jstl:forEach items="${listapacotes}" var="pacote">
						<tr>
							<td scope="row">${pacote.getHotelaria().nome_Hotel}</td>
							<td class="border">${pacote.getHotelaria().qtd_dias}</td>
							<td class="border">${pacote.getHotelaria().qtd_Quartos}</td>
							<td class="border">${pacote.getHotelaria().municipio}</td>
							<td class="border">${pacote.getHotelaria().estado}</td>
							<td class="border">${pacote.getHotelaria().rua}</td>
							<td class="border">${pacote.getHotelaria().numero}</td>
							<td class="border">${pacote.getHotelaria().id_Hotel}</td>
							<td class="border">${pacote.quantidade_Pessoas}</td>
							<td class="border">${pacote.valor_Pacote}</td>
							<td class="border">${pacote.tipo}</td>
							<td class="border">${pacote.pacote_ida}</td>
							<td class="border">${pacote.pacote_volta}</td>
							<td class="border">${pacote.destino}</td>
							<td class="border">${pacote.transfer_pacote}</td>


							<td><a href="editarpacote?id_pacote=${pacote.id_itens}"
								class="btn btn-success btn-md">Editar</a> <br> <br> <a
								href="excluirpacote?id_pacote=${pacote.id_itens}"
								onclick="return confirm('Deseja Excluir?')"
								class="btn btn-danger btn-md">Excluir</a></td>

						</tr>
					</jstl:forEach>

				</tbody>
			</table>
		</div>
	</div>
</body>
</html>