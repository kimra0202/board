<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<%@ include file="dbConnection.jsp"%>
	<%
		request.setCharacterEncoding("UTF-8");
		PreparedStatement pstat = null;
		String title = request.getParameter("title");
		String content = request.getParameter("content");

		Integer userId = (Integer) session.getAttribute("user_id");

		if (userId == null) {
			out.println("로그인 필요");
		}
		String sql = "INSERT INTO BOARD(user_id, board_title, board_content) VALUES (?, ?, ?)";
		
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1, userId);
		pstat.setString(2, title);
		pstat.setString(3, content);
		
		pstat.executeUpdate();

		pstat.close();
		conn.close();

		response.sendRedirect("boardList.jsp");
	%>
</body>
</html>