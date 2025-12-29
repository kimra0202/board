<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
<style>
h1 {
	text-align: center;
}

table {
	border-collapse: collapse;
}

.post {
	position: fixed;
	top: 50px;
	right: 10px;
}

</style>
</head>
<body>
	<%@ include file="dbConnection.jsp"%>
	<h1>게시판</h1>
	<button type=button onclick="location.href='boardWriteForm.jsp'"
		class="post">게시글 작성</button>
	<table border="1">
		<tr class = "list">
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<%
			PreparedStatement pstat = null;
			ResultSet rs = null;
			try {
				String sql = "SELECT * FROM BOARD JOIN USER USING (USER_ID)";
				pstat = conn.prepareStatement(sql);
				rs = pstat.executeQuery();

				while (rs.next()) {
					Integer boardId = rs.getInt("board_id");
					String title = rs.getString("board_title");
					String content = rs.getString("board_content");
					String name = rs.getString("user_name");
		%>

		<tr>
			<td><%=boardId%></td>
			<td><%=name%></td>
			<td class="title"><a href="boardDetail.jsp?boardId=<%=boardId%>"><%=title%></a></td>
			<td class="content"><%=content%></td>
			<td><button
					onclick="location.href = 'updateBoardForm.jsp?boardId=<%=boardId%>'">수정</button></td>
			<td><button
					onclick="location.href = 'DeleteBoard.jsp?boardId=<%=boardId%>'">삭제</button></td>
		</tr>
		<%
			}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				pstat.close();
				rs.close();
				conn.close();
			}
		%>

	</table>
</body>
</html>