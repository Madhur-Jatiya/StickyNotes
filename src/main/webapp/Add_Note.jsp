<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<Title>Add Note</Title>
<%@ include file="All_js_css.jsp"%>
<header><%@ include file="navbar.jsp"%></header>
</head>
<body>
	<div class="container">
		<br>
		<h1>Add Your New Note</h1>
		<br>

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title"><b>Note Title</b></label> <input name="title"
					required type="text" class="form-control" id="title"
					placeholder="Enter Title">
			</div>
			<div class="form-group">
				<label for="content"><b>Note Content</b></label>
				<textarea id="content" placeholder="Enter your content here"
					required name="content" class="form-control" style="height: 200px;"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>
		</form>
	</div>

</body>
</html>