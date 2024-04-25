<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table style="padding: 40px; width: 600px">
<tr><th>사진</th><td><img alt="${appform.picture }"  src="../app/image/${appform.picture}"  style="width:50px;height:30px"></td></tr>
<tr><th>ID</th><td><input class="form-control form-control-lg" type="text" placeholder=".form-control-lg" aria-label=".form-control-lg example" name="id" value="${person.userid }" readonly></td></tr>
<tr><th>전화번호</th><td><input class="form-control form-control-lg" type="text" placeholder="UserTel..." aria-label=".form-control-lg example"name="usertel" value="${person.usertel }" readonly></td></tr>
<tr><th>이메일</th><td><input class="form-control form-control-lg" type="text" placeholder="Email" aria-label=".form-control-lg example" name="email" value="${person.email }" readonly></td></tr>
<tr><th>학력</th><td><input class="form-control form-control-lg" type="text" placeholder="학력을 등록하세요.." aria-label=".form-control-lg example" name="education" value="${person.education }" readonly></td></tr>
<tr><th>경력</th><td><input class="form-control form-control-lg" type="text" placeholder="경력을 입력하세요.." aria-label=".form-control-lg example" name="career" value="${person.career }" readonly></td></tr>
<tr><th>활용기술</th><td><input class="form-control form-control-lg" type="text" placeholder="활용가능 스킬.." aria-label=".form-control-lg example" name="skill" value="${person.skill }" readonly></td></tr>
<tr><th>성별</th><td><input class="form-control form-control-lg" type="text" placeholder="성별" aria-label=".form-control-lg example" name="gender" value="${person.gender }" readonly></td></tr>
<tr><th>나이</th><td><input class="form-control form-control-lg" type="text" placeholder="나이를 입력하세요.." aria-label=".form-control-lg example" name="age" value="${person.age }" readonly></td></tr>
<tr><th>관심분야</th><td><input class="form-control form-control-lg" type="text" placeholder="관심분야 .. ..." aria-label=".form-control-lg example" name="jobCd" value="${person.jobNm }" readonly></td></tr>
<tr><th>포트폴리오</th><td><a href="${pageContext.request.contextPath }/appform/down.do?fname=${appform.pofol }&type=pofol">${appform.pofol } </a></td></tr>
<tr><th>자기소개서</th><td><a href="${pageContext.request.contextPath }/appform/down.do?fname=${appform.coverletter }&type=coverletter">${appform.coverletter } </a></td></tr>
</table>
</body>
</html>