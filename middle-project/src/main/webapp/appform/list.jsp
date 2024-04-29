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
<table border="1" class = "table table-striped table-hover">
<thead>
<tr class="thead-dark"><th>num</th><th>자소서</th><th>사진</th><th>포트폴리오</th>
</thead>
<c:forEach var="d" items="${list }">
<tr>
	<th>${d.num }</th>
	<th><a href="${pageContext.request.contextPath }/appform/down.do?fname=${d.coverletter }&type=appform">${d.coverletter}</a></th>
	<th><a href="${pageContext.request.contextPath }/appform/down.do?fname=${d.pofol }&type=pofol">${d.coverletter}</a></th>
</tr>    
</c:forEach>
</table>
</body>
</html>