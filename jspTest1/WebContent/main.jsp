<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지 </title>
</head>
<style>
h1 {
	text-align: center;
}

.top {
	position: fixed;
	top: 10px;
	right: 10px
}
</style>
<body>
	<%@ include file="dbConnection.jsp"%>
	<h1>게시판</h1>
	<div class="top">
		<button onclick="location.href='loginForm.jsp'">로그인</button>
		<button onclick="location.href='registerForm.jsp'">회원가입</button>
	</div>

	<jsp:include page="/boardList.jsp" />
</body>
</html>
