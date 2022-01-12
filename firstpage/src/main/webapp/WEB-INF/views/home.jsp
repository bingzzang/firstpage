<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Home</title>
<style>
#wrapper {
	width: 300px;
	margin: auto;
}

#btns {
	width: fit-content;
	margin: auto;
}
#time{
	margin-bottom: 50px;
}
</style>
<script>
$(document).ready(function(){
	$("#signUp").click(()=>{
		location.href="<c:url value='/member/signUp.do'/>";
	});
	
	$("#signIn").click(()=>{
		location.href="<c:url value='/member/signIn.do'/>";
	});
});
</script>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="#">Active</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">My Page</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Board</a></li>
<!-- 			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a></li> -->
		</ul>
	</nav>
	<div class="jumbotron text-center">
		<h1>My First Page</h1>
	</div>

	<div class="text-center" id="time">
		<p>${serverTime}</p>
	</div>
	<div class="col-sm-4" id="wrapper">
		<div id="btns">
			<button type="button" class="btn btn-outline-secondary" id="signIn">Sign In</button>
			<button type="button" class="btn btn-outline-info" id="signUp">Sign Up</button>
		</div>
	</div>
</body>
</html>
