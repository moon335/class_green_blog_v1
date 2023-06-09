<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>form 테스트</h1>
		<form action="/temp/join2" method="post">
			<div class="form-group">
				<label for="username">username : </label>
				<input type="text" name="username" class="form-control" value="항1" id="username">
			</div>
			<div class="form-group">
				<label for="password">password : </label>
				<input type="password" name="password" class="form-control" value="1234" id="password">
			</div>
			<div class="form-group">
				<label for="email">email : </label>
				<input type="text" name="email" class="form-control" value="a@naver.com" id="email">
			</div>
		</form>
		<button id="join--submit" class="btn btn-primary">회원가입</button>
	</div>
	<div class="container2">
		<h1>update 테스트</h1>
		<form action="/temp/join2" method="post">
			<div class="form-group">
				<label for="username2">username : </label>
				<input type="text" name="username2" class="form-control" value="홍1" id="username2">
			</div>
			<div class="form-group">
				<label for="password2">password : </label>
				<input type="password" name="password2" class="form-control" value="1234" id="password2">
			</div>
			<div class="form-group">
				<label for="email2">email : </label>
				<input type="text" name="email2" class="form-control" value="ccc@naver.com" id="email2">
			</div>
		</form>
		<button id="update--submit" class="btn btn-primary">정보 수정</button>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#update--submit").on("click", function() {
				let data = {
					username : $("#username2").val(),
					password : $("password2").val(),
					email : $("email2").val()
				};
				$.ajax().done().fail();
			});
		});
	</script>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#join--submit").on('click', () => {
				// MIME TYPE -> application/json으로 통신
				// js --> json 문자열로 변경하는 방법은
				// object --> JSON 문자열로 변경
				let data = {
					username : $("#username").val(),
					password : $("#password").val(),
					email : $("#email").val()
				};
				console.log(JSON.stringify(data));
				
				$.ajax({
					type: 'post',
					url: '/temp/join2',
					contentType: 'application/json; charset=utf-8',
					data: JSON.stringify(data),
					dataType: 'json'
				}).done(function(response) {
					console.log(response);
					console.log(typeof response);
					alert("회원가입 성공");
					location.href="/temp/index";
				}).fail(function(error) {
					alert("서버오류");
				});
			});
		});
	</script>
</body>
</html>
