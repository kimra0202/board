<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<style>
h1 {
	display: flex;
	justify-content: center;
}

.top {
	position: fixed;
	top: 10px;
	right: 10px
}

p {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}
</style>
<body>
	<%@ include file="dbConnection.jsp"%>
	<h1>게시판</h1>
	<div class="top">
		<jsp:include page="top.jsp" />
	</div>

	<%-- <jsp:include page="/boardList.jsp" /> --%>
	<p>로그인 후 확인 가능합니다</p>
</body>
</html>
