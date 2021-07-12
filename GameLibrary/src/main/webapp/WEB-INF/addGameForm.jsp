<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Game</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>
<body>
	<h2>Add Game</h2>
	
	<div class="container">
	<div class="row">
	<div class="col-6 offset-3">
	<form action="newGame.do" method="post" class="form-group">
		<label for="title">Title:</label> <input class="form-control" type="text" name="title" id="title" value="${game.title }"/>
		<label for="description">Description:</label> <input class="form-control" type="text" name="description" id="description" value="${game.description }"/>	
		<label for="genre">Genre:</label> <input class="form-control" type="text" name="genre" id="genre" value="${game.genre }"/>	
		<label for="platform">Platform:</label> <input class="form-control" type="text" name="platform" id="platform" value="${game.platform }"/>	
		<label for="publisher">Publisher:</label> <input class="form-control" type="text" name="publisher" id="publisher" value="${game.publisher }"/>	
		<label for="rating">Rating:</label> <input class="form-control" type="text" name="rating" id="rating" value="${game.rating }"/>	
		<label for="playScore">Play Score:</label> <input class="form-control" type="text" name="playScore" id="playScore" value="${game.playScore }"/>	<br>
		<input type="submit" value="Add Game" class="btn btn-success form-control"/>	
	</form>
	
	<form action="home.do" class="form-inline">
		<input type="submit" value="Go To Home" class="btn btn-primary form-control">
	</form>
	</div>
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