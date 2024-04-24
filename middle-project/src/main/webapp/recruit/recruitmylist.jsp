<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const add = () => {
	location.href = "${pageContext.request.contextPath }/recruit/recruitadd.do";
}
const chageLangSelect=()=>{
    var langSelect = document.getElementById("selectbox");
    var selectValue = langSelect.options[langSelect.selectedIndex].value;

    const req = new XMLHttpRequest();
    req.onload = () => {
		//alert(req.responseText)
		console.log(req.responseText)
		let arr = JSON.parse(req.responseText);
		console.log(arr)
	}
	req.open('get', '${pageContext.request.contextPath }/mem/applyDetail.do?wanted_auth_no='+selectValue);
	req.send();
}
</script>
</head>
<body>
<h3>공고 목록</h3>
<select class="form-select" aria-label="Default select example" id="selectbox"" name="selectbox" onchange="chageLangSelect()">
  <option selected disabled>지원자를 확인할 공고를 선택하세요.</option>
  <c:forEach var="rllist" items="${rlList }">
    <option value="${rllist.wantedAuthNo }" >${rllist.wantedTitle }</option>
  </c:forEach>
</select>

<h3>공고 목록</h3>
<table class = "table table-striped table-hover">
<tr>
<th>공고제목</th>
<th>채용직무</th>
<th>공고등록일</th>
<th>공고마감일</th>
<th>공고저장상태</th>
</tr>
<c:forEach var="rllist" items="${rlList }">
<tr>
<td><a href="${pageContext.request.contextPath }/recruit/recruitdetail.do?wantedAuthNo=${rllist.wantedAuthNo }" onclick="a('${rllist.wantedAuthNo }')">${rllist.wantedTitle }</a></td>
<td>${rllist.jobsNm }</td>
<td >${rllist.regDt }</td>
<td>${rllist.closeDt }</td>
<td>${rllist.saveStatus }</td>
</tr>
</c:forEach>
</table>

</body>
</html>