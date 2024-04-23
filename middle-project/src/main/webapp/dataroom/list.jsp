<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/bootstrap-5.3.3/css/bootstrap.min.css" rel="stylesheet">
<script type="text/javascript">
const a = (type) =>{
	location.href="${pageContext.request.contextPath }/dataroom/type.do?type="+type+"&viewtype=1";
}
const b=(viewtype)=>{
	location.href="${pageContext.request.contextPath }/dataroom/list.do?viewtype="+viewtype;
}
const c =(viewtype)=>{
	location.href="${pageContext.request.contextPath }/dataroom/type.do?type=${type}&viewtype="+viewtype;
}
const d =() =>{
	let searchtype = document.getElementById('searchtype').value
	let search = document.getElementById('search').value
	location.href="${pageContext.request.contextPath }/dataroom/search.do?searchtype="+searchtype+"&search="+search+"&viewtype=1";
}
const e =(viewtype)=>{
	location.href="${pageContext.request.contextPath }/dataroom/search.do?searchtype=${searchtype}&search=${search}&viewtype="+viewtype;
}
</script>
</head>
<body>
<div class = "container my-3">
<h3>자료실</h3>
<c:if test="${empty searchtype or searchtype==1 }">
<select id="searchtype">
<option value="1" selected>제목으로검색</option>
<option value="2">내용으로검색</option>
<option value="3">작성자로검색</option>
</select>
</c:if>
<c:if test="${searchtype==2 }">
<select id="searchtype">
<option value="1" >제목으로검색</option>
<option value="2"selected>내용으로검색</option>
<option value="3">작성자로검색</option>
</select>
</c:if>
<c:if test="${searchtype==3 }">
<select id="searchtype">
<option value="1" >제목으로검색</option>
<option value="2">내용으로검색</option>
<option value="3"selected>작성자로검색</option>
</select>
</c:if><input type="text" id="search"><input type="button" value="검색" onclick="d()"><br/>
<input type="button" value="전체" onclick = "b(1)">
<input type="button" value="신입" onclick = "a(1)">
<input type="button" value="취준" onclick = "a(2)">
<input type="button" value="채용공고" onclick = "a(3)">
<input type="button" value="자소서" onclick = "a(4)">
<input type="button" value="면접" onclick = "a(5)">
<input type="button" value="나의좋아요" onclick = "a(6)"><br/>
<a href="${pageContext.request.contextPath }/dataroom/add.do">글쓰기</a>

<!-- 전체게시물 -->
<c:if test="${empty type and empty searchtype }">
<c:if test="${viewtype==1}">
<select name="viewtype" onchange="b(this.value)">
<option value="1" selected>최신순</option>
<option value="2">조회수순</option>
<option value="3">좋아요순</option>
</select><br/>
</c:if>
<c:if test="${viewtype==2}">
<select name="viewtype" onchange="b(this.value)">
<option value="1" >최신순</option>
<option value="2" selected>조회수순</option>
<option value="3">좋아요순</option>
</select><br/>
</c:if>
<c:if test="${viewtype==3 }">
<select name="viewtype" onchange="b(this.value)">
<option value="1" >최신순</option>
<option value="2">조회수순</option>
<option value="3" selected>좋아요순</option>
</select><br/>
</c:if>
</c:if>
<!-- 타입게시물 -->
<c:if test="${not empty type }">
<c:if test="${viewtype==1}">
<select name="viewtype" onchange="c(this.value)">
<option value="1" selected>최신순</option>
<option value="2">조회수순</option>
<option value="3">좋아요순</option>
</select><br/>
</c:if>
<c:if test="${viewtype==2}">
<select name="viewtype" onchange="c(this.value)">
<option value="1" >최신순</option>
<option value="2" selected>조회수순</option>
<option value="3">좋아요순</option>
</select><br/>
</c:if>
<c:if test="${viewtype==3 }">
<select name="viewtype" onchange="c(this.value)">
<option value="1" >최신순</option>
<option value="2">조회수순</option>
<option value="3" selected>좋아요순</option>
</select><br/>
</c:if>
</c:if>

<!-- 검색게시물 -->
<c:if test="${not empty searchtype }">
<c:if test="${viewtype==1}">
<select name="viewtype" onchange="e(this.value)">
<option value="1" selected>최신순</option>
<option value="2">조회수순</option>
<option value="3">좋아요순</option>
</select><br/>
</c:if>
<c:if test="${viewtype==2}">
<select name="viewtype" onchange="e(this.value)">
<option value="1" >최신순</option>
<option value="2" selected>조회수순</option>
<option value="3">좋아요순</option>
</select><br/>
</c:if>
<c:if test="${viewtype==3 }">
<select name="viewtype" onchange="e(this.value)">
<option value="1" >최신순</option>
<option value="2">조회수순</option>
<option value="3" selected>좋아요순</option>
</select><br/>
</c:if>
</c:if>

<table border="1" class = "table table-striped table-hover">
<thead>
<tr class="thead-dark"><th>num</th><th>title</th><th>writer</th><th>wdate</th><th>조회수</th><th>좋아요</th></tr>
</thead>
<c:forEach var="d" items="${list }">
<tr>
	<td>${d.num }</td>
	<td><a href="${pageContext.request.contextPath }/dataroom/detail.do?num=${d.num }&id=${sessionScope.loginId}">${d.title }</a></td>
	<td>${d.writer }</td>
	<td>${d.wdate }</td>
	<td>${d.cnt }</td>
	<td>${d.fcnt }</td>
</tr>
</c:forEach>
</table>
<!-- 전체검색 -->
<c:if test="${empty type }">
<form action="${pageContext.request.contextPath }/dataroom/list.do" method="post">
<table>
<tr><c:forEach var="p" items="${paging }" varStatus="step" begin="${pnum }" end="${pnume }">
<td><input type="submit" name="num" value="${step.count+pnum}"> <input type="hidden" name="viewtype" value="${viewtype }">
</td>
</c:forEach>
</tr>
</table>
</form>
</c:if>
<!-- 타입으로검색 -->
<c:if test="${not empty type }">
<form action="${pageContext.request.contextPath }/dataroom/type.do" method="post">
<table>
<tr><c:forEach var="p" items="${paging }" varStatus="step" begin="${pnum }" end="${pnume }">
<td><input type="submit" name="num" value="${step.count}"> <input type="hidden" name="viewtype" value="${viewtype }">
<input type="hidden" name="type" value="${type }">  
</td>
</c:forEach>
</tr>
</table>
</form>
</c:if>
</div>
<a href="${pageContext.request.contextPath }/dataroom/add.do">자료등록</a>
</body>
</html>