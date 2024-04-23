<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:if test = "${sessionScope.loginType.equals('구직자')}">
<h3>공고 번호:${wantedAuthNo } 상세</h3>
</c:if>

<c:if test = "${sessionScope.loginType.equals('기업')}">
<h3>${corpid }(사업자등록번호:${busiNo })님의 공고 번호:${wantedAuthNo } 상세</h3>
<h4>기업정보</h4>
<table border="1">
<tr><th>기업명</th><td>${corp_nm }</td></tr>
<tr><th>기업주소</th><td>${corp_addr }</td></tr>
<tr><th>사업자등록번호</th><td>${busi_no }</td></tr>
</table>
</c:if>
<table border="1">
<tr><th>공고번호</th><td>${wantedAuthNo }</td></tr>
<tr><th>공고제목</th><td>${rl.wantedTitle }</td></tr>
<tr><th>공고상세내용</th><td><textarea name="content" rows="10" style="width:100%;border:0;resize:none;" readonly>${rd.jobCont }</textarea></td></tr>

<tr><th>임금조건/임금</th><td>${rl.salTpCd }:${rl.sal }</td></tr>
<tr><th>최소학력</th><td>${rl.minEdubgIcd }</td></tr>
<tr><th>경력</th><td>${rl.enterTpCd }</td></tr>
<tr><th>직종</th><td>${rl.jobsNm }</td></tr>
<tr><th>공고등록일</th><td>${rl.regDt }</td></tr>
<tr><th>공고마감일</th><td>${rl.closeDt }</td></tr>
<tr><th>공고근무지역</th><td>${rl.workRegion }</td></tr>
<tr><th>공고담당자전화번호</th><td>${rd.contactTelNo }</td></tr>
<tr><th>공고상태</th><td>${rd.type }</td></tr>
</table>
</body>
</html>