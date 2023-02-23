<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Note</title>
<%@ include file="All_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>

		<!-- form -->
		<br>
		<h1>Add Your New Note</h1>
		<br>

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="Tittle">Note Tittle</label> <input required type="text"
					class="form-control" id="Tittle" aria-describedby="emailHelp"
					placeholder="Enter Tittle">
			</div>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea id="content" placeholder="Enter your content here" required
					class="form-control" style="height: 200px;"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>

		</form>
	</div>



</body>
</html>