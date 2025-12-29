<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
* {
	margin: 0px auto;
	padding: 0px;
	text-align: center;
	font-family: "Open Sans", sans-serif;
}

.register_title {
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
</head>
<body>
	<h1 class="register_title">회원가입</h1>
	<form action=register.jsp method="post">
		<div>
			<input type="text" name="name" value="" placeholder="이름">
		</div>
		<div>
			<input type="email" name="email" value="" placeholder="이메일">
		</div>
		<div>
			<input type="text" name="pwd" value="" placeholder="비밀번호">
		</div>
		<div>
			<input type="submit" value="submit" class = "button">
		</div>
	</form>
</body>
</html>