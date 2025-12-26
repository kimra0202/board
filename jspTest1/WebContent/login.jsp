<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		String sql = "SELECT * from user where user_email = ? and user_password = ?";
		PreparedStatement pstat = conn.prepareStatement(sql);
		pstat.setString(1, email);
		pstat.setString(2, pwd);

		ResultSet rs = pstat.executeQuery();
		if (rs.next()) {
			int userId = rs.getInt("user_id");
			session.setAttribute("user_id", userId);
			session.setAttribute("email", email);
			session.setAttribute("pwd", pwd);
	%>

	<p><%=email%>
		님, 로그인되었습니다
	</p>


	<%
	response.sendRedirect("boardList.jsp");
		} else {
			System.out.println("로그인 실패");
	%>
	<p>로그인 실패</p>
	<p>이메일, 비밀번호를 확인해 주세요</p>
	<%
		}
	%>



</body>
</html>
