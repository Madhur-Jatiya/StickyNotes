<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.query.Query"%>
<%@page import="org.hibernate.query.QueryLogging_$logger"%>
<%@page import="com.entity.Sticky_Notes"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Notes</title>
<%@ include file="All_js_css.jsp"%>
</head>
<body>
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<br>
		<h1>All Notes</h1>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getSessionFactory().openSession();
				List<Sticky_Notes> list = s.createQuery("from Sticky_Notes").list();
				for (Sticky_Notes note : list) {
				%>

				<div class="card mt-3">
					<img class="card-img-top m-4" style="max-width:100px;" src="image/notes.png" alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=note.getTitle()%>
						</h5>
						<p class="card-text"><%=note.getContent()%>
						</p>
						<a href="#" class="btn btn-danger">Delete</a>
					</div>
				</div>

				<%
				}
				s.close();
				%>
			</div>
		</div>


	</div>
</body>
</html>