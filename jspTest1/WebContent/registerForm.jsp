<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입 페이지</h1>
	<form action=register.jsp method="post">
        <div>
			<input type="text" name="name" value="" placeholder = "이름">
		</div>
		<div>
			<input type="email" name="email" value="" placeholder = "이메일">
		</div>
		<div>
			<input type="text" name="pwd" value="" placeholder = "비밀번호">
		</div>
		<div>
			<input type="submit" value="submit">
		</div>
	</form>
</body>
</html>