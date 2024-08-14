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
<c:forEach var="ds" items="${list }">
<form action="${pageContext.request.contextPath }/scrap/delete.do?num=${ds.wantedAuthNo }" method="get" >
<tr>
	<td><a href="${pageContext.request.contextPath }/recruit/recruitdetail.do?wantedAuthNo=${ds.wantedAuthNo}"> ${ds.wantedTitle} </a></td>
	<td><input type="hidden" name="num" value="${ds.wantedAuthNo }"> </td>
	<td><input type="submit" value="삭제"></td>
</tr>    
</form>
</c:forEach>
</table>
</body>
</html>