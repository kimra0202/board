<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 삭제</title>
</head>
<body>
	<%@ include file="dbConnection.jsp"%>
	<%
		PreparedStatement pstat = null;
		Integer boardId = Integer.parseInt(request.getParameter("boardId"));
		String sql = "DELETE FROM BOARD WHERE board_id = ?";

		pstat = conn.prepareStatement(sql);
		pstat.setInt(1, boardId);

		pstat.executeUpdate();
		
		response.sendRedirect("boardList.jsp");
	%>
</body>
</html>