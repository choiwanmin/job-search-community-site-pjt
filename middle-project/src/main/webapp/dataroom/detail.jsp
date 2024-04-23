<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
const b = (type) =>{
	location.href="${pageContext.request.contextPath }/dataroom/favo.do?num=${d.num}&id=${sessionScope.loginId}&type="+type;
}
const c = (num) =>{
	const req = new XMLHttpRequest();

	//2. 서버 결과 받으면 실행될 핸들러 정의해서 등록
	req.onload = () => {
		let obj = JSON.parse(req.responseText);
		let txt = obj.list;
		let getJson = document.getElementById('getJson');
		getJson.innerHTML = txt;
		getJson.style.display = '';
	}
	//3. 요청 설정
	req.open('get', '/dataroom/dataroom/getJson?num='+num);
	
	//4. 요청전송
	req.send();
}
const d = () => {
	let getJson = document.getElementById('getJson');
	getJson.style.display = 'none'; //안보이게 설정
}
const del = (num) =>{
	location.href="${pageContext.request.contextPath }/comment/del.do?num="+num+"&data_num=${d.num}";
}
const none = (num) =>{
	let trnum = 'tr'+num;
	let tr = document.getElementById(trnum);
	tr.style.display = '';
}
const cancel = (num) =>{
	let trnum = 'tr'+num;
	let tr = document.getElementById(trnum);
	tr.style.display = 'none';
}
const add = (ref_num) =>{
	let comment = document.getElementById('addcomment'+ref_num).value;
	console.log('comment')
	location.href="${pageContext.request.contextPath }/comment/add.do?ref_num="+ref_num+"&data_num=${d.num}&comment="+comment;
}
const edit = (num) =>{
	let edit = document.getElementById('edit_content'+num).value;
	location.href="${pageContext.request.contextPath }/comment/edit.do?num="+num+"&data_num=${d.num}&edit="+edit;
}

</script>
</head>
<body>
<form action="${pageContext.request.contextPath }/comment/add.do" method="post" name="f">
<input type="hidden" name="data" value="${d.fname }">
<table border="1">
<tr><th>num</th><td><input type="text" name="num" value="${d.num }" readonly></td></tr>
<tr><th>writer</th><td><input type="text" name="writer" value="${d.writer }" readonly></td></tr>
<tr><th>title</th><td><input type="text" name="title" value="${d.title }" ></td></tr>
<tr><th>content</th><td><input type="text" name="content" value="${d.content }" ></td></tr>
<tr><th>작성일</th><td><input type="text" name="content" value="${d.wdate }" ></td></tr>
<tr><th>조회수</th><td>${d.cnt }</td></tr>
<tr onmouseover="c(${d.num})" onmouseout="d()"><th>좋아요</th>
<td>${d.fcnt }
<c:if test="${not empty sessionScope.loginId }">
	<c:if test="${flag }"><input type="button" value="좋아요취소" onclick="b(2)"></c:if>
	<c:if test="${not flag }"><input type="button" value="좋아요" onclick="b(1)"></c:if>
</c:if>
</td>
</tr>
</table>
<!-- 글 보여주기 끝 -->
<div id='getJson' style="border:1px solid blue;display:none;position:absolute;top:50px;left:200px"></div>
<table border = "1">
<tr><th>댓글작성</th><th><textarea rows="5" cols="20" name="comment"></textarea></th><th><input type="submit" value="작성"></th></tr>
</table>
</form>
<table border = "1">
<!-- 댓글 작성 끝 -->
<tr><th>작성자</th><th>댓글</th><th>작성일</th><th>수정/삭제/답글</th></tr>
<c:forEach var="c" items="${list }">
<form action="${pageContext.request.contextPath }/comment/edit.do" method="post">
<tr><td>${c.id }</td><td><textarea rows="5" cols="20" name="edit_content">${c.content }
<c:if test="${c.is_edit==1 }">(수정됨)</c:if>
</textarea></td>
<td>${c.wdate}</td>
<td>
<input type="hidden" value="${c.num }" name="num">
<input type="hidden" value="${c.data_num }" name="data_num">
<c:if test="${c.id.equals(sessionScope.loginId) }">
<input type="submit" value="수정">
<input type="button" value="삭제" onclick="del(${c.num})">
</c:if>
<input type="button" value="답글쓰기" onclick="none(${c.num})">
</td></tr>
<!-- 원 댓글 끝 -->
<tr style="display:none" id="tr${c.num}"><th>↪<th><textarea rows="5" cols="20" id="addcomment${c.num }"></textarea></th>
<th></th>
<th><input type="button" value="작성" onclick="add(${c.num})">
<input type="button" value="취소" onclick="cancel(${c.num})"></th>
</tr>	
<!-- 대댓글 쓰기 끝 -->
<c:forEach var="r" items="${ref_list }">
<c:if test="${r.ref_num==c.num }">
<tr><td>↪${r.id }</td><td><textarea rows="5" cols="20" id="edit_content${r.num }">${r.content }
<c:if test="${r.is_edit==1 }">(수정됨)</c:if>
</textarea></td>
<td>${r.wdate}</td>
<td>
<input type="hidden" value="${r.num }" name="num">
<input type="hidden" value="${r.data_num }" name="data_num">
<c:if test="${r.id.equals(sessionScope.loginId) }">
<input type="button" value="수정" onclick="edit(${r.num})">
<input type="button" value="삭제" onclick="del(${r.num})">
</td></tr>
</c:if>
</c:if>
</c:forEach>
<!-- 대댓글 반복 보여주기 끝 -->
</form>
</c:forEach>
</table>

</body>
</html>