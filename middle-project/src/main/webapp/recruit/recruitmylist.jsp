<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h3>${corpid }(사업자등록번호:${busiNo })님의 공고 목록</h3>
<table border="1">
<tr>
<th>공고번호</th>
<th>공고제목</th>
<th>공고등록일</th>
<th>공고마감일<th>
<th>공고저장상태</th>
</tr>
<c:forEach var="rllist" items="${rlList }">
<tr>
<td><a href="${pageContext.request.contextPath }/recruit/recruitdetail.do?wantedAuthNo=${rllist.wantedAuthNo }">${rllist.wantedAuthNo }</a></td>
<td>${rllist.wantedTitle }</td>
<td>${rllist.regDt }</td>
<td>${rllist.closeDt }</td>
<td>${rllist.saveStatus }</td>
</tr>
</c:forEach>
</table>
</body>
</html>