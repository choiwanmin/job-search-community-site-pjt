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
<c:if test = "${sessionScope.loginType.equals('기업')}">
<h3>${id }(사업자등록번호:${busiNo })님의 공고 목록</h3>
</c:if>

<c:if test = "${sessionScope.loginType.equals('구직자')}">
<h3>공고 목록</h3>
</c:if>
<table border="1">
<tr>
<th>공고번호</th>
<th>공고제목</th>
<th>채용직무</th>
<th>공고등록일</th>
<th>공고마감일</th>
<c:if test = "${sessionScope.loginType.equals('기업')}">
<th>공고저장상태</th>
</c:if>
</tr>
<c:forEach var="rllist" items="${rlList }">
<tr>
<td><a href="${pageContext.request.contextPath }/recruit/recruitdetail.do?wantedAuthNo=${rllist.wantedAuthNo }">${rllist.wantedAuthNo }</a></td>
<td>${rllist.wantedTitle }</td>
<td>${rllist.jobsNm }</td>
<td>${rllist.regDt }</td>
<td>${rllist.closeDt }</td>
<c:if test = "${sessionScope.loginType.equals('기업')}">
<td>${rllist.saveStatus }</td>
</c:if>
</tr>
</c:forEach>
</table>
</body>
</html>