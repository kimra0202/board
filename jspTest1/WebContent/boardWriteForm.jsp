<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
</head>
<body>
	<h1>게시글 작성</h1>
	<form action=boardWriteProcess.jsp method="post">
		<div>
			<input type="text" name="title" value="" placeholder ="제목">
		</div>
		<div>
			<textarea name = "content" cols ="30" rows="8"></textarea>
		</div>
		<div>
			<input type="submit" value="제출">
		</div>
	</form>
</body>
</html>