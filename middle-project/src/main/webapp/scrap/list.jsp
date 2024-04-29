<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class = "table-striped table-hover w800 p40">
<thead>
<tr class="thead-dark"><th>공고번호</th><th>공고 제목</th>
</thead>
<c:forEach var="d" items="${list }">
<tr>
	<th><a href="${pageContext.request.contextPath }/recruitdetail/.do?wanted_auth_no=${d.wanted_auth_no }">${d.wanted_auth_no } </a></th>
	<th><a href="${pageContext.request.contextPath }/recruitdetail/.do?wanted_auth_no=${d.wanted_auth_no }">${d. wantedTitle } </a></th>
</tr>    
</c:forEach>
</table>
</body>
</html>