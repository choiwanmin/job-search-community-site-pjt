<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/section.css">
<link rel="stylesheet"  href="${pageContext.request.contextPath }/css/form.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/list.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<form action="${pageContext.request.contextPath }/appform/add.do" method="post" enctype="multipart/form-data">
<table>
<tr><th></th><td><input type="hidden" name="userid" value="${sessionScope.loginId }"  ></td></tr>
<tr><th>지원서파일</th><td><input type="file" name="coverletter"></td></tr>
<tr><th>사진 파일</th><td><input type="file" name="pofol"></td></tr>
<tr><th>포토폴리오</th><td><input type="file" name="picture"></td></tr>
</table>
<input type="submit" value="등록" style="width: 120px">
</form>
</body>
</html>