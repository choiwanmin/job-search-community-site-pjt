<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
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
<h3>내 정보 확인</h3>
<c:if test="${sessionScope.loginType == '구직자' }">
<form action="${pageContext.request.contextPath }/mem/myinfo.do" method="post">
<table border="1">
<tr><th>ID</th><td><input type="text" name="id" value="${m.id }" readonly></td></tr>
<tr><th>PWD</th><td><input type="text" name="pwd" value="${m.pwd }" ></td></tr>
<tr><th>전화번호</th><td><input type="text" name="usertel" value="${p.usertel }" ></td></tr>
<tr><th>이메일</th><td><input type="text" name="email" value="${p.email }" ></td></tr>
<tr><th>학력</th><td><input type="text" name="education" value="${p.education }" ></td></tr>
<tr><th>경력</th><td><input type="text" name="career" value="${p.career }" ></td></tr>
<tr><th>활용기술</th><td><input type="text" name="skill" value="${p.skill }" ></td></tr>
<tr><th>성별</th><td><input type="text" name="gender" value="${p.gender }" ></td></tr>
<tr><th>나이</th><td><input type="text" name="age" value="${p.age }" ></td></tr>
<tr><th>관심분야</th><td><input type="text" name="jobCd" value="${p.jobNm }" ></td></tr>
<tr><th>TYPE</th><td id="type"></td></tr>
<tr><th>수정</th><td><input type="submit" value="수정"></td></tr>
</table>
</form>
</c:if>
<c:if test="${sessionScope.loginType == '기업' }">
<form action="${pageContext.request.contextPath }/mem/myinfo.do" method="post">
<table border="1">
<tr><th>ID</th><td><input type="text" name="id" value="${m.id }" readonly></td></tr>
<tr><th>PWD</th><td><input type="text" name="pwd" value="${m.pwd }" ></td></tr>
<form action="${pageContext.request.contextPath }/mem/myinfo.do" method="post">
<tr><th>전화번호</th><td><input type="text" name="usertel" value="${p.usertel }" ></td></tr>
<tr><th>이메일</th><td><input type="text" name="email" value="${p.email }" ></td></tr>
<tr><th>TYPE</th><td id="type"></td></tr>
<tr><th>수정</th><td><input type="submit" value="수정"></td></tr>
</table>
</form>
<div class="w800 p40">
  <h3 class="form_title text-center">폼 사용 용도</h3>
  <p class="form_sub text-center">회원가입용 페이지 어쩌구</p>
  <div class="form_Wrap">
    <form class="">
      <div class="row mb-3">
        <label for="inputEmail3" class="col-sm-2 col-form-label">ID</label>
        <div class="col-sm-10">
          <input type="email" class="form-control" id="inputEmail3">
        </div>
      </div>
      <div class="row mb-3">
        <label for="inputPassword3" class="col-sm-2 col-form-label">PWD</label>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="inputPassword3">
        </div>
      </div>
      <fieldset class="row mb-3">
        <legend class="col-form-label col-sm-2 pt-0">Radios</legend>
        <div class="col-sm-10">
          <div class="form-check">
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
            <label class="form-check-label" for="gridRadios1">
              First radio
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
            <label class="form-check-label" for="gridRadios2">
              Second radio
            </label>
          </div>
        </div>
      </fieldset>
      <div class="row mb-3">
        <div class="col-sm-10 offset-sm-2">
          <div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck1">
            <label class="form-check-label" for="gridCheck1">
              Example checkbox
            </label>
          </div>
        </div>
      </div>
    <div class="btn_wrap">
      <button type="submit" class="btn btn-primary">회원가입</button>
      <!-- <button type="submit" class="btn btn-primary">로그인</button> -->
    </div>
    </form>
  </div>
</div>
</table>
</form>
</c:if>
</body>
</html>