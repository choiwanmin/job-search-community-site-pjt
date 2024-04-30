<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>내정보 확인</title>
<script type="text/javascript">
window.onload = () => {
	let val = '기업';
	if('${m.type}'=='1'){
		val = '구직자';
	}
	document.getElementById('type').innerHTML = val;
}
</script>
</head>
			
<body>
	<div class="w800 p40">
		<h3 class="form_title text-center">내 정보 확인</h3>
		<c:if test="${sessionScope.loginType == '구직자' }">
			<p class="form_sub text-center">${sessionScope.loginId }님의회원정보
				입니다. <img class="memimg" alt="${appform.picture }"  src="../app/image/${appform.picture}"  ></p>
				
			<div class="form_Wrap">
				<form class=""
					action="${pageContext.request.contextPath }/mem/editmyinfo.do"
					method="post" name="f">
					<div style="display: none" id="type">TYPE</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">사용자
							아이디</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="userid"
								id="inputEmail3" value="${m.id }" readonly>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">사용자
							비밀번호</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="userid"
								id="inputEmail3" value="${m.pwd }" readonly>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">전화번호</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="usertel"
								id="inputEmail3" value="${p.usertel }" readonly>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">E-mail</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="email"
								id="inputEmail3" value="${p.email }" readonly>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">학력</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="education"
								id="inputEmail3" value="${p.education }" readonly>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">경력</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="career"
								id="inputEmail3" value="${p.career }" readonly>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">활용기술</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="skill"
								id="inputEmail3" value="${p.skill }" readonly>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">성별</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="gender"
								id="inputEmail3" value="${p.gender }" readonly>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">나이</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="age"
								id="inputEmail3" value="${p.age }" readonly>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">관심분야</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" name="jobNm"
								id="inputEmail3" value="${p.jobNm }" readonly>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">포트폴리오</label>
						<div class="col-sm-10">
							<a href="${pageContext.request.contextPath }/appform/down.do?fname=${appform.pofol }&type=pofol">${appform.pofol } </a>
						</div>
					</div>
					<div class="row mb-3">
						<label for="inputEmail3" class="col-sm-2 col-form-label">자소서</label>
						<div class="col-sm-10">
							<a href="${pageContext.request.contextPath }/appform/down.do?fname=${appform.coverletter }&type=coverletter">${appform.coverletter } </a>
						</div>
					</div>
				</form>
			</div>
		</c:if>
	</div>
</body>
</html>