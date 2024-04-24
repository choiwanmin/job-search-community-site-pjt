<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// 등록일, 마감일 현재 날짜에 선택되어 있도록 하는 구문
// document.getElementById('currentDate').value = new Date().toISOString().substring(0, 10);

// 전화번호 수정 방법1
// const hypenTel = (target) => {
// 	 target.value = target.value
// 	   .replace(/[^0-9]/g, '')
// 	   .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
// 	}

const save = () => {
	let f = document.querySelector("form");
    if(f.requestSubmit) {
        f.requestSubmit();
    } else {
		f.saveStatus.value = '1';
		f.submit();
    }
}
</script>
</head>
<body>
<h3>공고 등록</h3>
<form action="${pageContext.request.contextPath }/recruit/recruitadd.do" method="POST" name="f">
<table border="1">
<!-- 로그인 아이디 정보에 따라 사업자등록번호 자동 등록 -->
<!-- 공고번호 랜덤한 값 자동 저장? -->
<tr><th>작성자</th><td><input type="text" style="width:98%;border:0;" name="writer" value="${sessionScope.loginId }" readonly></td></tr>
<tr><th>공고 제목</th><td><input type="text" style="width:98%;border:0;" name="wantedTitle" required></td></tr>
<tr><th>공고 직무 내용</th><td><textarea cols="50" rows="10" style="width:98%;border:0;resize:none;" name="jobCont"></textarea></td></tr>

<tr><th>공고 임금 조건</th><td><select name="salTpCd">
<option value="h">시급</option>
<option value="d">일급</option>
<option value="m">월급</option>
<option value="y">연봉</option>
</select></td></tr>

<tr><th>임금액</th><td><input type="number" name="sal" min="0" value="0"></td></tr>
<tr><th>최소임금액</th><td><input type="number" name="minSal" min="0" value="0"></td></tr>
<tr><th>최대임금액</th><td><input type="number" name="maxSal" min="0" value="0"></td></tr> 

<tr><th>공고 최소학력</th><td><select style="width:98%;border:0" name="minEdubgIcd">
<option value="0">학력무관</option>
<option value="3">고졸</option>
<option value="4">대졸(2년제)</option>
<option value="5">대졸(4년제)</option>
<option value="6">석사</option>
<option value="7">박사</option>
</select></td></tr>

<tr><th>공고 경력</th><td><select style="width:98%;border:0" name="enterTpCd">
<option value="Z">관계없음</option>
<option value="N">신입</option>
<option value="E">경력</option>
</select></td></tr>

<tr><th>근무 지역 주소</th><td><input type="text" style="width:98%;border:0" name="workRegion" required></td></tr>

<tr><th>채용 직무</th><td><input type="text" style="width:98%;border:0" list="jobsNmList" id="jobsNm" name="jobsNm">
<datalist id="jobsNmList">
<c:forEach var="j" items="${jobList }">
<option value="${j.depth3Nm }"></option>
</c:forEach>
</datalist></td></tr>

<tr><th>공고등록일</th><td><input type="date" id="currentDate" style="width:25%;border:0" name="regDt" required></td></tr>
<tr><th>공고마감일</th><td><input type="date" id="currentDate" style="width:25%;border:0" name="closeDt" required></td></tr>
<!-- <tr><th>공고담당자전화번호</th><td><input type="text" name="contacttelno" oninput="hypenTel(this)" maxlength="15"></td></tr> -->
<tr><th>공고담당자전화번호</th><td><input type="tel" id="contactTelNo" style="width:98%;border:0" name="contactTelNo" value="000-0000-0000" pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required></td></tr>
</table>

<input type="hidden" name="saveStatus" value="0">

<input type="submit" value="임시 저장">
<input type="button" value="공고 등록" onclick="save()">
</form>
</body>
</html>