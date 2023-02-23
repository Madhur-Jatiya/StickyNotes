<%@page import="com.entity.Sticky_Notes"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
<%@ include file="All_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<br>
		<h1>Edit Note</h1>

		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getSessionFactory().openSession();
		Sticky_Notes notes = (Sticky_Notes)s.get(Sticky_Notes.class, noteId);
		
		%>
		
		<form>
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