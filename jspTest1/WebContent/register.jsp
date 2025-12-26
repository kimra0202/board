<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbConnection.jsp"%>
	<%
		request.setCharacterEncoding("UTF-8");
		PreparedStatement pstat = null;
		String email = request.getParameter("email");
		String name = request.getParameter("name");
		String password = request.getParameter("pwd");

		String sql = "INSERT INTO USER(user_email, user_name, user_password) values (?, ?, ?)";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1, email);
		pstat.setString(2, name);
		pstat.setString(3, password);

		pstat.executeUpdate();

		session.setAttribute("email", email);
		session.setAttribute("name", name);
		session.setAttribute("password", password);

		pstat.close();
		conn.close();
	%>

	<p><%=email%>
		님 회원가입을 축하합니다!
	</p>
	<button type = button onclick="location.href='loginForm.jsp'">로그인</button>
</body>
</html>