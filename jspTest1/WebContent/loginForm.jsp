<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
</head>
<style>
* {
	margin: 0px auto;
	padding: 0px;
	text-align: center;
	font-family: "Open Sans", sans-serif;
}

.login_title {
	margin: 5px 0px;
}

input {
	border-radius: 20px 12px;
	margin: 8px;
	height: 20px
}

.button {
	width: 100px
}

</style>
<body>
	<div class="container">
		<h1 class="login_title">로그인</h1>
		<form action="login.jsp" method="get">
			<div>
				<input type="email" name="email" value="" placeholder="이메일">
			</div>
			<div>
				<input type="password" name="pwd" value="" placeholder="비밀번호">
			</div>
			<div>
				<input type="submit" value="Submit" class="button">
			</div>
		</form>
	</div>
</body>
</html>