<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Game Library</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-12">
				<h1>Video Game Library</h1>
			</div>
		</div>
	</div>
	<!-- Search Forms by ID, Genre, Title -->
	<div class="container">
		<div class="row">
		<div class="col-lg-6 col-sm-12">
			<form action="getGameID.do" method="get" class="form-inline">
					<label for="id">Enter ID:</label> <input type="text" name="id"
						class="form-control form-control-sm" id="id" />
						<input type="submit" value="Search" class="btn btn-success form-control form-control-sm" />
			</form>
			<br>
			<form action="getGameGenre.do" method="get" class="form-inline">
					<label for="genre">Genre:</label> <input type="text" name="genre"
						class="form-control form-control-sm" />
						<input type="submit" value="Search" class="btn btn-success form-control form-control-sm" />
			</form>
			<br>
			<form action="getGameKeyword.do" method="get" class="form-inline">
					<label for="keyword">Keyword:</label> <input type="text"
						name="keyword" class="form-control form-contorl-sm" />
						<input type="submit" value="Search" class="btn btn-success form-control form-control-sm" />
			</form>
			<br>
			<form action="gameForm.do">
				<div class="form-group">
					<input type="submit" value="Add Game" class="btn btn-primary btn-lg btn-block">
				</div>
			</form>
		</div>
			<!-- List All Games in Database -->
			<table class="table">
				<thead class="thead-dark">
					<tr>
						<th>ID</th>
						<th>Title</th>
						<th>Description</th>
						<th>Genre</th>
						<th>Rating</th>
						<th>Publisher</th>
						<th>Platform</th>
						<th>Play Score</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="game" items="${games }">
						<tr>
							<th scope="row">${game.id }</th>
							<td>${game.title }</td>
							<td>${game.description }</td>
							<td>${game.genre }</td>
							<td>${game.rating }</td>
							<td>${game.publisher }</td>
							<td>${game.platform }</td>
							<td>${game.playScore }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>