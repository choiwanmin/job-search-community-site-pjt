<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3 class="form_title text-center">공고 수정</h3>
<div class="w800 p40">
	<div class="form_Wrap">
		<form class="" action="${pageContext.request.contextPath }/recruit/recruitedit.do" method="POST" name="f">
			<div class="row mb-3">
				<label for="writer" class="col-sm-2 col-form-label">작성자</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" id="writer" name="writer" value="${sessionScope.loginId }" readonly>
				</div>
			</div>
            <div class="row mb-3">
				<label for="wantedAuthNo" class="col-sm-2 col-form-label">공고번호</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" id="wantedAuthNo" name="wantedAuthNo" value="${wantedAuthNo }" readonly>
				</div>
			</div>
            <div class="row mb-3">
				<label for="wantedTitle" class="col-sm-2 col-form-label">공고 제목</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" id="wantedTitle" name="wantedTitle" value="${rl.wantedTitle }" required>
				</div>
			</div>
			<div class="row mb-3">
				<label for="jobCont" class="col-sm-2 col-form-label">공고 직무 내용</label>
				<div class="col-sm-10">
					<textarea class="form-control" style="resize: none;" id="jobCont" name="jobCont" required>"${rd.jobCont }"</textarea>
				</div>
			</div>
			<div class="row mb-3">
				<label for="salTpCd" class="col-sm-2 col-form-label">공고 임금 조건</label>
				<div class="col-sm-10">
					<select class="form-select" id="salTpCd" name="salTpCd" required>
					<c:if test="${salTpCd }">
						<option selected>${salTpCd }</option>
					</c:if>
						<option value="h">시급</option>
						<option value="d">일급</option>
						<option value="m">월급</option>
						<option value="y">연봉</option>
					</select>
				</div>
			</div>
			<div class="row mb-3">
				<label for="sal" class="col-sm-2 col-form-label">임금액</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" id="sal" name="sal" value="${rl.sal}" required>
				</div>
			</div>
			<div class="row mb-3">
				<label for="minSal" class="col-sm-2 col-form-label">최소임금액</label>
				<div class="col-sm-10">
					<input class="form-control" type="number" id="minSal" name="minSal" min="0" value="${rd.minSal }">
				</div>
			</div>
			<div class="row mb-3">
				<label for="maxSal" class="col-sm-2 col-form-label">최대임금액</label>
				<div class="col-sm-10">
					<input class="form-control" type="number" id="maxSal" name="maxSal" min="0" value="${rd.maxSal }">
				</div>
			</div>
			<div class="row mb-3">
				<label for="minEdubgIcd" class="col-sm-2 col-form-label">공고 최소학력</label>
				<div class="col-sm-10">
					<select class="form-select" id="minEdubgIcd" name="minEdubgIcd">
					<c:if test="${minEdubgIcd }">
						<option selected>${minEdubgIcd }</option>
					</c:if>
						<option value="0">학력무관</option>
						<option value="3">고졸</option>
						<option value="4">대졸(2년제)</option>
						<option value="5">대졸(4년제)</option>
						<option value="6">석사</option>
						<option value="7">박사</option>
					</select>
				</div>
			</div>
			<div class="row mb-3">
				<label for="enterTpCd" class="col-sm-2 col-form-label">공고 경력</label>
				<div class="col-sm-10">
					<select class="form-select" id="enterTpCd" name="enterTpCd">
					<c:if test="${enterTpCd }">
						<option selected>${enterTpCd }</option>
					</c:if>
						<option value="Z">관계없음</option>
						<option value="N">신입</option>
						<option value="E">경력</option>
					</select>
				</div>
			</div>
			<div class="row mb-3">
					<label for="workRegion" class="col-sm-2 col-form-label">근무 지역 주소</label>
					<div class="col-sm-10">
						<input type="button" onclick="sample6_execDaumPostcode()"
							value="우편번호 찾기"><br>
						<input type="text"
							id="sample6_address" placeholder="주소" name="addr" value="${addr }" required><br>
						<span class="post-wrap">
						<input type="text" id="sample6_postcode" placeholder="우편번호" name="p_code" value="${p_code }" required>
						<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addrdet" value="${addrdet }" required>
						</span>
					</div>
				</div>
			<div class="row mb-3">
				<label for="jobsNm" class="col-sm-2 col-form-label">채용 직무</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" list="jobsNmList" id="jobsNm" name="jobsNm" value="${rl.jobsNm }" required>
					<datalist id="jobsNmList">
						<c:forEach var="j" items="${jobList }">
							<option value="${j.depth3Nm }"></option>
						</c:forEach>
					</datalist>
				</div>
			</div>
			<div class="row mb-3">
				<label for="currentDate" class="col-sm-2 col-form-label">공고등록일</label>
				<div class="col-sm-10">
					<input class="form-control" type="date" id="currentDate" name="regDt" value="${rl.regDt }" required>
				</div>
			</div>
			<div class="row mb-3">
				<label for="currentDate" class="col-sm-2 col-form-label">공고마감일</label>
				<div class="col-sm-10">
					<input class="form-control" type="date" id="currentDate" name="closeDt" value="${rl.closeDt }" required>
				</div>
			</div>
			<div class="row mb-3">
				<label for="contactTelNo" class="col-sm-2 col-form-label">공고담당자전화번호</label>
				<div class="col-sm-10">
					<input class="form-control" type="tel" id="contactTelNo" name="contactTelNo" value="${rd.contactTelNo }"
						pattern="[0-9]{2,3}-[0-9]{3,4}-[0-9]{4}" required>
				</div>
			</div>
            <div class="row mb-3">
				<label for="saveStatusStr" class="col-sm-2 col-form-label">공고 저장 상태</label>
				<div class="col-sm-10">
					<select class="form-select" id="saveStatusStr" name="saveStatus" required>
					<c:if test="${saveStatusStr }">
						<option selected>${saveStatus }</option>
					</c:if>
						<option value="0">임시저장</option>
						<option value="1">등록</option>
					</select>
				</div>
			</div>
            <div class="row mb-3">
				<label for="listTypeStr" class="col-sm-2 col-form-label">공고 종류</label>
				<div class="col-sm-10">
					<input class="form-control" type="text" id="listTypeStr" name="listTypeStr" value="${listTypeStr }" readonly>
				</div>
			</div>
            <div class="row mb-3">
				<label for="detailTypeStr" class="col-sm-2 col-form-label">공고 상태</label>
				<div class="col-sm-10">
					<select class="form-select" id="detailTypeStr" name="detailTypeStr" required>
					<c:if test="${detailTypeStr }">
						<option selected>${detailTypeStr }</option>
					</c:if>
						<option value="0">마감</option>
						<option value="1">진행</option>
						<option value="2">삭제</option>
					</select>
				</div>
			</div>
			<div class="btn_wrap">
                <input class="btn btn-primary" type="submit" value="공고 수정">
                <input class="btn btn-primary" type="button" value="초기화" onclick="reset()">
                <input class="btn btn-primary" type="button" value="되돌아가기" onclick="history.back()">
			</div>
		</form>
	</div>
</div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/map.js"></script>
</html>