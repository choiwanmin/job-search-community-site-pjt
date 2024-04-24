<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

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
<style>
button.btn-primary {
    position: relative;
    top: -10px; /* 상단으로 10px 이동 */
    width: 120px;
}
</style>
</head>
<body>
<div class = "container my-3">
<h3 class="mb-4">자료실</h3>
<div class="row align-items-center mb-3">
<div class="col-auto">
<c:if test="${empty searchtype or searchtype==1 }">
<select id="searchtype" class="form-select me-2">
<option value="1" selected>제목으로검색</option>
<option value="2">내용으로검색</option>
<option value="3">작성자로검색</option>
</select>
</c:if>
<c:if test="${searchtype==2 }">
<select id="searchtype" class="form-select me-2">
<option value="1" >제목으로검색</option>
<option value="2"selected>내용으로검색</option>
<option value="3">작성자로검색</option>
</select>
</c:if>
<c:if test="${searchtype==3 }">
<select id="searchtype" class="form-select me-2">
<option value="1" >제목으로검색</option>
<option value="2">내용으로검색</option>
<option value="3"selected>작성자로검색</option>
</select>
</c:if>
</div>
<div class="col">
<input type="text" id="search" class="form-control">
</div>
<div class="col-auto" onclick="d()">
                <button type="button" class="btn btn-primary" onclick="d();">
    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0"/>
    </svg>
</button>
</div>
</div>
<input type="button" value="전체" onclick = "b(1)" class="btn btn-outline-primary me-2">
<input type="button" value="신입" onclick = "a(1)" class="btn btn-outline-primary me-2">
<input type="button" value="취준" onclick = "a(2)" class="btn btn-outline-primary me-2">
<input type="button" value="채용공고" onclick = "a(3)" class="btn btn-outline-primary me-2">
<input type="button" value="자소서" onclick = "a(4)" class="btn btn-outline-primary me-2">
<input type="button" value="면접" onclick = "a(5)" class="btn btn-outline-primary me-2">
<input type="button" value="나의좋아요" onclick = "a(6)" class="btn btn-outline-primary me-2"><br/>
<a href="${pageContext.request.contextPath }/dataroom/add.do">글쓰기</a>

<!-- 전체게시물 -->
<c:if test="${empty type and empty searchtype }">
<c:if test="${viewtype==1}">
<select name="viewtype" onchange="b(this.value)" class="form-select me-2">
<option value="1" selected>최신순</option>
<option value="2">조회수순</option>
<option value="3">좋아요순</option>
</select><br/>
</c:if>
<c:if test="${viewtype==2}">
<select name="viewtype" onchange="b(this.value)" class="form-select me-2">
<option value="1" >최신순</option>
<option value="2" selected>조회수순</option>
<option value="3">좋아요순</option>
</select><br/>
</c:if>
<c:if test="${viewtype==3 }">
<select name="viewtype" onchange="b(this.value)" class="form-select me-2">
<option value="1" >최신순</option>
<option value="2">조회수순</option>
<option value="3" selected>좋아요순</option>
</select><br/>
</c:if>
</c:if>
<!-- 타입게시물 -->
<c:if test="${not empty type }">
<c:if test="${viewtype==1}">
<select name="viewtype" onchange="c(this.value)" class="form-select me-2">
<option value="1" selected>최신순</option>
<option value="2">조회수순</option>
<option value="3">좋아요순</option>
</select><br/>
</c:if>
<c:if test="${viewtype==2}">
<select name="viewtype" onchange="c(this.value)" class="form-select me-2">
<option value="1" >최신순</option>
<option value="2" selected>조회수순</option>
<option value="3">좋아요순</option>
</select><br/>
</c:if>
<c:if test="${viewtype==3 }">
<select name="viewtype" onchange="c(this.value)" class="form-select me-2">
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
<tr class="thead-dark"><th>번호</th><th>제목</th><th>작성자</th><th>작성일</th><th>조회수</th><th>좋아요</th></tr>
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
<c:if test="${not empty msg }">
${msg }
</c:if>
<!-- 전체검색 -->
<c:if test="${empty searchtype }">
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
</c:if>
<!-- 타입으로검색 -->
<c:if test="${not empty type }">
<div class="d-flex justify-content-center">
<form action="${pageContext.request.contextPath }/dataroom/type.do" method="post">
<table>
<tr><c:forEach var="p" items="${paging }" varStatus="step" begin="${pnum }" end="${pnume }">
<td><input type="submit" name="num" value="${step.count+pnum}"> <input type="hidden" name="viewtype" value="${viewtype }">
<input type="hidden" name="type" value="${type }">  
</td>
</c:forEach>
</tr>
</table>
</form>
</div>
</c:if>
</div>
<c:if test="${not empty searchtype }">
<form action="${pageContext.request.contextPath }/dataroom/search.do?" method="post">
<table>
<tr><c:forEach var="p" items="${paging }" varStatus="step" begin="${pnum }" end="${pnume }">
<td><input type="submit" name="num" value="${step.count+pnum}"> <input type="hidden" name="viewtype" value="${viewtype }">
<input type="hidden" name="searchtype" value="${searchtype }"> <input type="hidden" name="search" value="${search }"> 
</td>
</c:forEach>
</tr>
</table>
</form>
</c:if>
<!--  <a href="${pageContext.request.contextPath }/dataroom/add.do">자료등록</a>-->
</body>
</html>