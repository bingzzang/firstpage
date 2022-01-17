<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../../css/common.css" />
<title>Document</title>
<script>
	$(function() {

		$('#invalid').hide();
		$('#valid').hide();

		function setDateBox() {
			var dt = new Date();
			var year = "";
			var com_year = dt.getFullYear();

			$("#year").append("<option value=''>년</option>");

			for (var y = (com_year - 50); y <= (com_year); y++) {
				$("#year").append(
						"<option value='"+ y +"'>" + y + " 년" + "</option>");
			}

			var month;
			$("#month").append("<option value=''>월</option>");
			for (var i = 1; i <= 12; i++) {
				$("#month").append(
						"<option value='"+ i +"'>" + i + " 월" + "</option>");
			}

		}

		setDateBox();
		$('#month').change(
				function() {

					var s_month = $('#month').val();
					$('#day').children('option').remove();
					if (s_month == 2) {
						var chk_year = leapYear($('#year').val());
						if (chk_year) {
							for (var i = 1; i <= 29; i++) {
								$("#day").append(
										"<option value='"+ i +"'>" + i + " 일"
												+ "</option>");
							}
						} else {
							for (var i = 1; i <= 28; i++) {
								$("#day").append(
										"<option value='"+ i +"'>" + i + " 일"
												+ "</option>");
							}
						}

					} else if (s_month == 4 || s_month == 6 || s_month == 9
							|| s_month == 11) {
						for (var i = 1; i <= 30; i++) {
							$("#day").append(
									"<option value='"+ i +"'>" + i + " 일"
											+ "</option>");
						}
					} else {
						for (var i = 1; i <= 31; i++) {
							$("#day").append(
									"<option value='"+ i +"'>" + i + " 일"
											+ "</option>");
						}
					}
				});
		function leapYear(year) {
			return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
		}

		$('input').keyup(function() {
			var password = $('#password').val();
			var password_r = $('#password_r').val();

			if (password != '' || password_r != '') {
				if (password == password_r) {
					$('#valid').show();
					$('#invalid').hide();

				} else {
					$('#valid').hide();
					$('#invalid').show();
				}
			}
		});
		
		$('#checkId').click(function(){
			
			$.ajax({
				type:'post',
				url : '/member/checkId.do',
				data : {
					userId : $('userId').val();
				},
				success: function(result){
					if(result !=0){
						console.log("중복아님");
					}
				}
			})
		});
		
	});
</script>
<style>

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
	<div class="container">
		<form action="/action_page.php">
			<div class="form-group">
				<label for="userId">UserId:</label><br />
				<div>
					<input type="text" class="form-control disin w200" id="userId"
						placeholder="Enter username" name="userId">
					<button id="checkId" class="btn btn-outline-success btn-sm">Check</button>
				</div>
			</div>
			<div class="form-group">
				<label for="password">Password:</label><br /> <input type="password"
					class="form-control disin w200" id="password"
					placeholder="Enter password" name="password">
			</div>
			<div class="form-group">
				<label for="password_r">Password re:</label><br /> <input
					type="password" class="form-control disin w200" id="password_r"
					placeholder="Enter password" name="password_r">
				<div id="valid" class="disin" style="color: green;">Valid.</div>
				<div id="invalid" class="disin" style="color: red;">Retry.</div>
			</div>
			<div class="form-group">
				<label for="username">Username:</label><br />
				<div>
					<input type="text" class="form-control disin w200" id="uname"
						placeholder="Enter username" name="uname">
				</div>
			</div>
			<div class="form-group">
				<label for="username">Email:</label><br />
				<div>
					<input type="email" class="form-control disin w200" id="uname"
						placeholder="abc@abcd.ex" name="uname">
				</div>
			</div>
			<div class="form-group">
				<label for="username">Phone:</label><br />
				<div>
					<input type="tel" class="form-control disin w200" id="uname"
						placeholder="000-0000-0000" name="uname">
				</div>
			</div>
			<div class="form-group">
				<label for="birthday">Birthday:</label><br /> <select name="year"
					id="year" title="년도" class="form-control w120 disin"></select> <select
					name="month" id="month" title="월" class="form-control w120 disin"></select>
				<select name="day" id="day" title="일"
					class="form-control w120 disin"><option value=''>일</option></select>
			</div>
			<div class="form-group">
				<label for="gender">Gender:</label><br />
				<div class="form-check-inline">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="optradio">Female
					</label>
				</div>
				<div class="form-check-inline">
					<label class="form-check-label"> <input type="radio"
						class="form-check-input" name="optradio">Male
					</label>
				</div>

			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>

	</div>

</body>
</html>