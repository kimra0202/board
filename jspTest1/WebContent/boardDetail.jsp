<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 페이지</title>
</head>
<body>
	<%@ include file="dbConnection.jsp"%>
	<%
		PreparedStatement pstat = null;
		ResultSet rs = null;

		String boardId = request.getParameter("boardId");
		
		if(boardId == null){
			out.print("존재하지 않는 게시판 아이디입니다.");
		}

		try {
			String sql = "SELECT * FROM BOARD JOIN USER USING (USER_ID) WHERE board_id = ?";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1, boardId);
			rs = pstat.executeQuery();

			while (rs.next()) {
				String name = rs.getString("user_name");
				String title = rs.getString("board_title");
				String content = rs.getString("board_content");
	%>
	<p>
		작성자 :
		<%=name%></p>
	<p>
		제목 :
		<%=title%></p>
	<p>
		내용:
		<%=content%></p>
	<%
		}
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
	<button type = button onclick = "location.href='boardList.jsp'">목록으로</button>
</body>
</html>