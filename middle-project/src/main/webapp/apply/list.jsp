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
<tr class="thead-dark"><th>공고 제목</th></tr>
</thead>
<c:forEach var="q" items="${list }">
<tr>
	<td><a href="${pageContext.request.contextPath }/recruit/recruitdetail.do?wanted_auth_no=${q.wanted_auth_no}"> ${q.wanted_title} </a></td>
</tr>    
</c:forEach>
</table>
</body>
</html>