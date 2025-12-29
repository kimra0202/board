<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정 페이지</title>
</head>
<body>
	<h1>게시글 수정</h1>
	<form action="updateBoardProcess.jsp" method="post">
		<div>
			<input type="hidden" name="boardId"
				value="<%=request.getParameter("boardId")%>">
		</div>
		<div>
			<input type="text" name="title" value="" placeholder="제목 ">
		</div>
		<div>
			<textarea name="content" rows = "10" cols = "30"></textarea>
		</div>
		<div>
			<button>수정</button>
		</div>
	</form>
</body>
</html>