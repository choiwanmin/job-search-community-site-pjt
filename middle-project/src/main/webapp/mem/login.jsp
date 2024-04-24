<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<h2> 로그인</h2>
${msg }
<form action="${pageContext.request.contextPath }/mem/login.do" method="post" name="f">
<table>
	<tr>
		<th>아이디</th><td><input type="text" name="id"></td>
	</tr>
	<tr>
		<th>패스워드</th><td><input type="password" name="pwd"></td>
	</tr>
	<tr>
		<th></th><td><input type="submit" value="로그인"></td>
	</tr>
</table>
</form>
</body>
</html>