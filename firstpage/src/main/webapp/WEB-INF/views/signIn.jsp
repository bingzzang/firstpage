<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>My Page - Sign In</title>
<style>
.form-group {
	width: 300px;
	height: 100px;
	margin: auto;
}

#p01 {
	text-align: center;
}

#inner, #outer {
	border: solid 1px lightgray;
	border-radius: 15px;
	width: 350px;
	margin: auto;
	padding-top: 20px;
	padding-bottom: 20px;
}

#outer {
	margin-top: 20px;
	text-align: center;
}

#btns {
	display: block;
	width: 100%;
	text-align: center;
	margin-top: 20px;
}

#findPassword {
	float: right;
}
</style>

</head>
<body>
	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="#">Active</a>
			</li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
			</li>
		</ul>
	</nav>
	<div class="jumbotron text-center">
		<h1>My First Page</h1>

	</div>
	<div class="container">
		<p id="p01">Sign in to My Page</p>
		<div id="inner">
			<form action="/action_page.php" class="needs-validation" novalidate>
				<div class="form-group">
					<label for="uname">Username</label> <input type="text"
						class="form-control" id="uname" placeholder="Enter username"
						name="uname" required>
					<div class="valid-feedback">Valid.</div>
					<div class="invalid-feedback">Please fill out this field.</div>
				</div>
				<div class="form-group">
					<label for="pwd">Password</label><a href="#" id="findPassword">Forgot
						password?</a> <input type="password" class="form-control" id="pwd"
						placeholder="Enter password" name="pswd" required>
					<div class="valid-feedback">Valid.</div>
					<div class="invalid-feedback">Please fill out this field.</div>
				</div>
				<div id=btns>
					<button type="submit" class="btn btn-info">Sign in</button>
				</div>
			</form>
		</div>
		<div id="outer">
			New to MyPage? <a href="#">Create an username</a>
		</div>
	</div>

	<script>
		// Disable form submissions if there are invalid fields
		(function() {
			'use strict';
			window.addEventListener('load',
					function() {
						// Get the forms we want to add validation styles to
						var forms = document
								.getElementsByClassName('needs-validation');
						// Loop over them and prevent submission
						var validation = Array.prototype.filter.call(forms,
								function(form) {
									form.addEventListener('submit', function(
											event) {
										if (form.checkValidity() === false) {
											event.preventDefault();
											event.stopPropagation();
										}
										form.classList.add('was-validated');
									}, false);
								});
					}, false);
		})();
	</script>

</body>
</html>