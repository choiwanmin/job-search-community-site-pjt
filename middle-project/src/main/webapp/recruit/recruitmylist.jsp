<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript">
const add = () => {
	location.href = "${pageContext.request.contextPath }/recruit/recruitadd.do";
}
const chageLangSelect=()=>{
    var langSelect = document.getElementById("selectbox");
    var selectValue = langSelect.options[langSelect.selectedIndex].value;
    const req = new XMLHttpRequest();
    let table = document.querySelector("#apply_list");
    table.innerHTML=`
    	<tr>
    	<th>지원자 ID</th>
    	<th>학력</th>
    	<th>경력</th>
    	<th>나이</th>
    	</tr>
    `;
    req.onload = () => {
		let arr = JSON.parse(req.responseText);
		for(let a of arr){
			console.log(a) 
			// 새 행(Row) 추가
			 const newRow = table.insertRow();
			// 새 행(Row)에 Cell 추가
			 const newCell1 = newRow.insertCell(0);
			const newCell2 = newRow.insertCell(1);
			const newCell3 = newRow.insertCell(2);
			const newCell4 = newRow.insertCell(3);
			// Cell에 텍스트 추가
			newCell1.innerText = a.id;
			newCell2.innerText = a.email;
			newCell3.innerText = a.education;
			newCell4.innerText = a.age;
		}
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

<h3>지원자 목록</h3>
<table id="apply_list" class = "table table-striped table-hover">
<tr>
<th>지원자 ID</th>
<th>학력</th>
<th>경력</th>
<th>나이</th>
</tr>
</table>

</body>
</html>