<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판</title>
</head>
<body>
	<%@ include file="dbConnection.jsp"%>
	<button type=button onclick="location.href='boardWriteForm.jsp'">게시글
		작성</button>
	<table width = "500" border="1">
		<tr>
			<th>번호</th>
			<th>작성자</th>
			<th>제목</th>
			<th>내용</th>
		</tr>
		<%
		
		PreparedStatement pstat = null;
		ResultSet rs = null;
		try{
		String sql = "SELECT * FROM BOARD JOIN USER USING (USER_ID)";
		pstat = conn.prepareStatement(sql);
		rs = pstat.executeQuery();
		
		while(rs.next()){
			String boardId = rs.getString("board_id");
			String title = rs.getString("board_title");
			String content = rs.getString("board_content");
			String name = rs.getString("user_name");
			%>

		<tr>
			<td><%=boardId%></td>
			<td><%=name%></td>
			<td><a href = "boardDetail.jsp?boardId=<%=boardId%>"><%=title%></a></td>
			<td><%=content%></td>
		</tr>
		<% }
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			pstat.close();
			rs.close();
			conn.close();
		}
		%>

	</table>
</body>
</html>