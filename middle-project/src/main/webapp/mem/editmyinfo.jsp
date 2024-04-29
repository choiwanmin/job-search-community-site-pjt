<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
let flag = false;
const check = () => {
	if(f.usertel.value.length<=0){
		alert("회원님의 전화번호를 입력해주세요.");
		f.usertel.focus();
		return;
	}
	if(f.email.value.length<=0){
		alert("이메일을 작성해주세요.");
		f.email.focus();
		return;
	}
	if(f.skill.value.length<=0){
		alert("활용가능한 스킬을 한가지 이상 작성하세요.");
		f.skill.focus();
		return;
	}
	if(f.age.value.length<=0){
		alert("나이를 입력하세요");
		f.age.focus();
		return;
	}
	if(f.jobCd.value.length<=0){
		alert("관심 업종 분야를 선택해주세요.");
		f.jobCd.focus();
		return;
	}
	f.submit();//폼을 action에 지정된 서버로 제출
}
</script>
</head>
<body>
<div class="w800 p40">
		<h3 class="form_title text-center">회원 정보 수정</h3>
		<p class="form_sub text-center">수정할 정보를 입력하세요</p>
<div class="form_Wrap">
<form class=""
			action="${pageContext.request.contextPath }/mem/editmyinfo.do" 
			method="post" name="f">
<div class="row mb-3">
				<label for="inputEmail3" class="col-sm-2 col-form-label">사용자
					아이디</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="userid"
						id="inputEmail3" value="${sessionScope.loginId }" readonly>
				</div>
			</div>
<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">전화번호</label>
				<div class="col-sm-10">
					<input type="tel" class="form-control" id="inputPassword3"
						name="usertel" value="${person.usertel}">
				</div>
			</div>
<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">이메일</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" id="inputPassword3"
						name="email" value="${person.email}">
				</div>
			</div>
<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">나이</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputPassword3"
						name="age" value="${person.age}">
				</div>
			</div>
<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">활용스킬</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="inputPassword3"
						name="skill" value="${person.skill}">
				</div>
			</div>
<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">학력</label>
				<div class="col-sm-10">
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="education"
								id="gridRadios1" value="0" checked> <label
								class="form-check-label" for="gridRadios1"> 학력무관 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="education"
								id="gridRadios2" value="3"> <label
								class="form-check-label" for="gridRadios2"> 고졸 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="education"
								id="gridRadios2" value="4"> <label
								class="form-check-label" for="gridRadios2"> 대졸(2년제) </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="education"
								id="gridRadios2" value="5"> <label
								class="form-check-label" for="gridRadios2"> 대졸(4년제) </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="education"
								id="gridRadios2" value="6"> <label
								class="form-check-label" for="gridRadios2"> 석사 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="education"
								id="gridRadios2" value="7"> <label
								class="form-check-label" for="gridRadios2"> 박사 </label>
						</div>
					</div>
				</div>
			</div>
<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">경력</label>
				<div class="col-sm-10">
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="career"
								id="gridRadios1" value="N" checked> <label
								class="form-check-label" for="gridRadios1"> 신입 </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="career"
								id="gridRadios1" value="E"> <label
								class="form-check-label" for="gridRadios1"> 경력 </label>
						</div>
					</div>
				</div>
			</div>
<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">성별</label>
				<div class="col-sm-10">
				<div class="col-sm-10">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender"
							id="gridRadios1" value="1" checked> <label
							class="form-check-label" for="gridRadios1"> 남자 </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender"
							id="gridRadios1" value="2"> <label
							class="form-check-label" for="gridRadios1"> 여자 </label>
					</div>
				</div>
				</div>
			</div>
<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">관심분야</label>
				<div class="col-sm-10">
					<select multiple="multiple" size="5" name="jobCd">
						<option value="131100,컴퓨터 하드웨어 기술자">컴퓨터 하드웨어 기술자</option>
						<option value="131200,통신공학 기술자 및 연구원">통신공학 기술자 및 연구원</option>
						<option value="131201,통신기기·장비 개발자 및 연구원">통신기기·장비 개발자 및
							연구원</option>
						<option value="131202,통신기술 개발자 및 통신망 운영 기술자">통신기술 개발자 및
							통신망 운영 기술자</option>
						<option value="131203,통신공사 감리 기술자">통신공사 감리 기술자</option>
						<option value="132000,컴퓨터시스템 전문가">컴퓨터시스템 전문가</option>
						<option value="132001,IT 컨설턴트">IT 컨설턴트</option>
						<option value="132002,컴퓨터시스템 설계 및 분석가">컴퓨터시스템 설계 및 분석가</option>
						<option value="132003,IT 감리 전문가(시스템 감리)">IT 감리 전문가(시스템
							감리)</option>
						<option value="133100,시스템 소프트웨어 개발자">시스템 소프트웨어 개발자</option>
						<option value="133101,시스템 소프트웨어 개발자(프로그래머)">시스템 소프트웨어
							개발자(프로그래머)</option>
						<option value="133200,응용 소프트웨어 개발자">응용 소프트웨어 개발자</option>
						<option value="133201,JAVA프로그래밍 언어 전문가">JAVA프로그래밍 언어 전문가</option>
						<option value="133202,C언어 및 그 외 프로그래밍 언어 전문가">C언어 및 그 외
							프로그래밍 언어 전문가</option>
						<option value="133203,범용 응용 소프트웨어 프로그래머(ERP,정보처리,재무관리등)">범용
							응용 소프트웨어 프로그래머(ERP,정보처리,재무관리등)</option>
						<option value="133204,소프트웨어 프로그래머(국방,항공,교통,에너지,금융,자동차등)">소프트웨어
							프로그래머(국방,항공,교통,에너지,금융,자동차등)</option>
						<option value="133205,네트워크 프로그래머">네트워크 프로그래머</option>
						<option value="133206,게임프로그래머">게임프로그래머</option>
						<option value="133300,웹 개발자">웹 개발자</option>
						<option value="133301,웹 개발자(웹 엔지니어·웹 프로그래머)">웹 개발자(웹
							엔지니어·웹 프로그래머)</option>
						<option value="133302,웹 기획자">웹 기획자</option>
						<option value="133900,IT 테스터 및 IT QA 전문가">IT 테스터 및 IT QA
							전문가</option>
					</select>
				</div>
			</div>
<button type="button" class="btn btn-primary" onclick="check()">수정완료</button>
</form>
</div>
</div>
</body>
</html>