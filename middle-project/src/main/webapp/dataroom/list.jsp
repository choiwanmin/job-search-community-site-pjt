<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
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
const f =()=>{
	location.href="${pageContext.request.contextPath }/dataroom/add.do";
}
</script>
<style>
button.btn-primary {
	position: relative;
	top: -10px; /* 상단으로 10px 이동 */
	width: 120px;
}
/* 버튼 스타일 */
.btn-custom {
	position: relative;
	top: -10px; /* 상단으로 10px 이동 */
	width: 120px;
	background-color: transparent;
	border: 1px solid #007bff; /* 파란색 테두리 */
	color: #007bff; /* 파란색 텍스트 */
	border-radius: 0; /* 테두리 모서리를 둥글지 않게 */
}

.btn-custom:hover {
	background-color: rgba(0, 123, 255, 0.1); /* 파란색 버튼에 마우스를 올렸을 때의 배경색 */
}
</style>
</head>
<body>

	<div class="w1200" style="padding-top: 150px;">
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
						<option value="1">제목으로검색</option>
						<option value="2" selected>내용으로검색</option>
						<option value="3">작성자로검색</option>
					</select>
				</c:if>
				<c:if test="${searchtype==3 }">
					<select id="searchtype" class="form-select me-2">
						<option value="1">제목으로검색</option>
						<option value="2">내용으로검색</option>
						<option value="3" selected>작성자로검색</option>
					</select>
				</c:if>
			</div>
			<div class="col">
				<input type="text" id="search" class="form-control">
			</div>
			<div class="col-auto" onclick="d()">
				<button type="button" class="btn btn-primary" onclick="d();">
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
						fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
        <path
							d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001q.044.06.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1 1 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
    </svg>
				</button>
			</div>
		</div>
		<input type="button" value="전체" onclick="b(1)"
			class="btn btn-custom me-2"> <input type="button" value="신입"
			onclick="a(1)" class="btn btn-custom me-2"> <input
			type="button" value="취준" onclick="a(2)" class="btn btn-custom me-2">
		<input type="button" value="채용공고" onclick="a(3)"
			class="btn btn-custom me-2"> <input type="button" value="면접"
			onclick="a(4)" class="btn btn-custom me-2"> <input
			type="button" value="자소서" onclick="a(5)" class="btn btn-custom me-2">
		<input type="button" value="나의좋아요" onclick="a(6)"
			class="btn btn-custom me-2"><br />


		<!-- 전체게시물 -->	
		<c:if test="${empty type and empty searchtype }">
			<c:if test="${viewtype==1}">
				<div class="float-start">
					<select name="viewtype" onchange="b(this.value)"
						class="form-select me-2">
						<option value="1" selected>최신순</option>
						<option value="2">조회수순</option>
						<option value="3">좋아요순</option>
					</select><br />
				</div>
			</c:if>
			<c:if test="${viewtype==2}">
				<div class="float-start">
					<select name="viewtype" onchange="b(this.value)"
						class="form-select me-2">
						<option value="1">최신순</option>
						<option value="2" selected>조회수순</option>
						<option value="3">좋아요순</option>
					</select><br />
				</div>
			</c:if>
			<c:if test="${viewtype==3 }">
				<div class="float-start">
					<select name="viewtype" onchange="b(this.value)"
						class="form-select me-2">
						<option value="1">최신순</option>
						<option value="2">조회수순</option>
						<option value="3" selected>좋아요순</option>
					</select><br />
				</div>
			</c:if>
		</c:if>
		<!-- 타입게시물 -->
		<c:if test="${not empty type }">
			<c:if test="${viewtype==1}">
				<div class="float-start">
					<select name="viewtype" onchange="c(this.value)"
						class="form-select me-2">
						<option value="1" selected>최신순</option>
						<option value="2">조회수순</option>
						<option value="3">좋아요순</option>
					</select><br />
				</div>
			</c:if>
			<c:if test="${viewtype==2}">
				<div class="float-start">
					<select name="viewtype" onchange="c(this.value)"
						class="form-select me-2">
						<option value="1">최신순</option>
						<option value="2" selected>조회수순</option>
						<option value="3">좋아요순</option>
					</select><br />
				</div>
			</c:if>
			<c:if test="${viewtype==3 }">
				<div class="float-start">
					<select name="viewtype" onchange="c(this.value)"
						class="form-select me-2">
						<option value="1">최신순</option>
						<option value="2">조회수순</option>
						<option value="3" selected>좋아요순</option>
					</select><br />
				</div>
			</c:if>
		</c:if>

		<!-- 검색게시물 -->
		<c:if test="${not empty searchtype }">
			<c:if test="${viewtype==1}">
				<div class="float-left">
					<select name="viewtype" onchange="e(this.value)">
						<option value="1" selected>최신순</option>
						<option value="2">조회수순</option>
						<option value="3">좋아요순</option>
					</select><br />
				</div>
			</c:if>
			<c:if test="${viewtype==2}">
				<div class="float-start">
					<select name="viewtype" onchange="e(this.value)">
						<option value="1">최신순</option>
						<option value="2" selected>조회수순</option>
						<option value="3">좋아요순</option>
					</select><br />
				</div>
			</c:if>
			<c:if test="${viewtype==3 }">
				<div class="float-start">
					<select name="viewtype" onchange="e(this.value)">
						<option value="1">최신순</option>
						<option value="2">조회수순</option>
						<option value="3" selected>좋아요순</option>
					</select><br />
				</div>
			</c:if>
		</c:if>



		<table class=" table table-hover table-striped">
			<thead>
				<tr>
					<th scope="col" class="text-center">번호</th>
					<th scope="col" class="text-center">공고제목</th>
					<th scope="col" class="text-center">작성자</th>
					<th scope="col" class="text-center">작성일</th>
					<th scope="col" class="text-center">조회수</th>
					<th scope="col" class="text-center">좋아요</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="d" items="${list }">
					<tr>
						<td style="width: 10%" class="text-center">${d.num }</td>
						<td style="width: 30%" class="text-center"><a
							href="${pageContext.request.contextPath }/dataroom/detail.do?num=${d.num }&id=${sessionScope.loginId}">${d.title }</a></td>
						<td style="width: 20%" class="text-center">${d.writer }</td>
						<td style="width: 10%" class="text-center">${d.wdate }</td>
						<td style="width: 10%" class="text-center">${d.cnt }</td>
						<td style="width: 10%" class="text-center">${d.fcnt }</td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		<c:if test="${not empty msg }">
${msg }
</c:if>
		<div class="row justify-content-end mb-3">
			<input type="button" value=" 글쓰기 " onclick="f()"
				class="btn btn-custom me-2" style="width: auto;">
		</div>
<div style="text-align: center; margin-top: 0px;">
		<!-- 전체 게시물 버튼 -->
		<c:if test="${empty searchtype }">
			<c:if test="${empty type }">
				<div style="text-align: right;">
					<form action="${pageContext.request.contextPath }/dataroom/list.do"
						method="post">
						<table style="margin: auto;">
							<tr>
								<c:forEach var="p" items="${paging }" varStatus="step"
									begin="${pnum }" end="${pnume }">
									<td><input type="submit" name="num"
										value="${step.count+pnum}"> <input type="hidden"
										name="viewtype" value="${viewtype }"></td>
								</c:forEach>
							</tr>
						</table>
					</form>
				</div>
			</c:if>
		</c:if>

		<!-- 타입으로검색 버튼 -->
		<c:if test="${not empty type }">
			<div style="text-align: right;">
				<form action="${pageContext.request.contextPath }/dataroom/type.do"
					method="post">
					<table style="margin: auto;">
						<tr>
							<c:forEach var="p" items="${paging }" varStatus="step"
								begin="${pnum }" end="${pnume }">
								<td><input type="submit" name="num"
									value="${step.count+pnum}"> <input type="hidden"
									name="viewtype" value="${viewtype }"> <input
									type="hidden" name="type" value="${type }"></td>
							</c:forEach>
						</tr>
					</table>
				</form>
			</div>
		</c:if>

		<!-- 검색게시물 버튼 -->
		<c:if test="${not empty searchtype }">
			<div style="text-align: right;">
				<form
					action="${pageContext.request.contextPath }/dataroom/search.do?"
					method="post">
					<table style="margin: auto;">
						<tr>
							<c:forEach var="p" items="${paging }" varStatus="step"
								begin="${pnum }" end="${pnume }">
								<td><input type="submit" name="num"
									value="${step.count+pnum}"> <input type="hidden"
									name="viewtype" value="${viewtype }"> <input
									type="hidden" name="searchtype" value="${searchtype }">
									<input type="hidden" name="search" value="${search }"></td>
							</c:forEach>
						</tr>
					</table>
				</form>
			</div>
		</c:if>
	</div>
</div>
	
</body>
</html>