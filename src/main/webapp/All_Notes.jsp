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
				for (int i = list.size() - 1; i >= 0; i--) {
				%>

				<div class="card mt-3">
					<div class="card-body">
						<p class="card-title" style="font-size: 80px;"><%=list.get(i).getTitle()%>
							<span
								style="font-weight: bold; color: #718093; text-align: right; font-size: 20px;"><%=list.get(i).getAddedDate()%></span>
						</p>

						<p class="card-text" style="font-size: 20px;"><%=list.get(i).getContent()%>
						</p>
						<div class="container text-center mt-4">
							<a href="edit.jsp?note_id=<%=list.get(i).getId()%>"
								class="btn btn-info mr-3">Update</a> <a
								href="DeleteServlet?note_id=<%=list.get(i).getId()%>"
								class="btn btn-danger">Delete</a>
						</div>
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