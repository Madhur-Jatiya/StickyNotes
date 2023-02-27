<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<%@ include file="All_js_css.jsp"%>
<%@ include file="navbar.jsp"%>
<title>Home</title>
</head>
<body>

	<br>
	<div class="text-center container">
		<h1 style="font-size: 80px;">
			<u>Sticky Notes</u>
		</h1>
		<br> <br>
		<div class="row">
			<div class="col-6 text-right">
				<img alt="" src="image/notes1.png"
					style="max-width: 400px; height: 400px; margin-left: 100px;">
			</div>

			<div class="col-6">
				<a class="btn btn-dark btn-lg py-3" href="Add_Note.jsp"
					style="padding: 100px; margin-top: 100px">Start New Note </a> <br>
				<br> <br> <a class="btn btn-dark btn-lg py-3"
					href="All_Notes.jsp" style="padding: 100px;">See All Notes </a>
			</div>
		</div>
	</div>
</body>
</html>