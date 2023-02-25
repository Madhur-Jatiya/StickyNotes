<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<Title>Add Note</Title>
<%@ include file="All_js_css.jsp"%>
<%@ include file="navbar.jsp"%>
</head>
<body>
	<div class="container">
		<br>
		<h1 class="text-center">
			<u>Add Your New Note</u>
		</h1>
		<br>

		<form action="SaveNoteServlet" method="post">
			<div class="form-group">
				<label for="title"><b
					style="padding: 15px 0px 0px 10px; font-size: 25px;">Note Title</b></label>
				<input name="title" required type="text" class="form-control"
					id="title" placeholder="Enter Title" style="font-size: 20px;">
			</div>
			<div class="form-group">
				<label for="content"><b
					style="padding: 15px 0px 0px 10px; font-size: 25px;">Note
						Content</b></label>
				<textarea id="content" placeholder="Enter your content here"
					required name="content" class="form-control"
					style="height: 200px; font-size: 20px;"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-dark">Add</button>
			</div>
		</form>
	</div>

</body>
</html>