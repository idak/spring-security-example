<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Gradle + Spring MVC  security</title>

	<link href="<spring:url value='/resources/css/bootstrap.min.css'  />" rel="stylesheet" />

</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Project Name</a>
		</div>
		<a href="<spring:url value='/auth/logout' />" style="float: right; margin-top: 10px;" class="btn btn-info btn-danger">
          <span class="glyphicon glyphicon-log-out"></span> Log out
        </a>
	</div>
</nav>

<div class="jumbotron">
	<div class="container">
		<h1>${title}</h1>
		<p>
			<c:if test="${not empty msg}">
				Hello ${msg}
			</c:if>

			<c:if test="${empty msg}">
				Welcome Welcome!
			</c:if>
		<p>
	</div>
</div>

<div class="container">
	<hr>
	<footer>
		<p>&copy; idak.com 2017</p>
	</footer>
</div>

<script src="<spring:url value='/resources/js/bootstrap.min.js' />"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>