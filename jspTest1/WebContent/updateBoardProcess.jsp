<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정</title>
</head>
<body>
	<%@ include file="dbConnection.jsp"%>
	<%
		request.setCharacterEncoding("UTF-8");
		Integer boardId = Integer.parseInt(request.getParameter("boardId"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String userId = (String) session.getAttribute("userId");

		PreparedStatement pstat = null;
		ResultSet rs = null;

		try {
			String sql = "UPDATE BOARD SET board_title = ?, board_content = ? WHERE board_id = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, title);
			pstat.setString(2, content);
			pstat.setInt(3, boardId);
			
			pstat.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			conn.close();
			pstat.close();
		}
		response.sendRedirect("boardList.jsp");
	%>
</body>
</html>