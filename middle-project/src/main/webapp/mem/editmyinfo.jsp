<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath }/mem/editmyinfo.do" method="post">
<table>
<tr><th>작성자 아이디</th><td><input type="text" name="userid" value="${sessionScope.loginId }" readonly></td></tr>
<tr><th>전화번호</th><td><input type="tel" name="usertel" value="${person.usertel} "></td></tr>
<tr><th>이메일</th><td><input type="text" name="email" value="${person.email} "></td></tr>
<tr><th>나이</th><td><input type="number" name="age" value="${person.age}" ></td></tr>
<tr><th>활용스킬</th><td><input type="text" name="skill" value="${person.skill}"></td></tr>
<tr>
<th>학력</th>
<td><fieldset class="row mb-3">
	<div class="col-sm-10">
          <div class="form-check">
            <input class="form-check-input" type="radio" name="education" id="gridRadios1" value="0" checked>
            <label class="form-check-label" for="gridRadios1">
              학력무관
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="education" id="gridRadios2" value="3">
            <label class="form-check-label" for="gridRadios2">
              고졸
            </label>
          </div>
           <div class="form-check">
            <input class="form-check-input" type="radio" name="education" id="gridRadios2" value="4">
            <label class="form-check-label" for="gridRadios2">
              대졸(2년제)
            </label>
          </div>
          <div class="form-check">
            <input class="form-check-input" type="radio" name="education" id="gridRadios2" value="5">
            <label class="form-check-label" for="gridRadios2">
              대졸(4년제)
            </label>
          </div> 
          <div class="form-check">
            <input class="form-check-input" type="radio" name="education" id="gridRadios2" value="6">
            <label class="form-check-label" for="gridRadios2">
              석사
            </label>
          </div> 
          <div class="form-check">
            <input class="form-check-input" type="radio" name="education" id="gridRadios2" value="7">
            <label class="form-check-label" for="gridRadios2">
              박사
            </label>
          </div> 
        </div>
      </fieldset>
</td>
</tr>
<tr><th>경력</th><td>
<fieldset class="row mb-3">
<div class="col-sm-10">
          <div class="form-check">
            <input class="form-check-input" type="radio" name="career" id="gridRadios1" value="N" checked>
            <label class="form-check-label" for="gridRadios1">
              신입
              </label>
         </div>
         <div class="form-check">
            <input class="form-check-input" type="radio" name="career" id="gridRadios1" value="E" >
            <label class="form-check-label" for="gridRadios1">
             경력
              </label>
         </div>
         </div>
         </fieldset>   
</td></tr>

<tr><th>성별</th><td>
<fieldset class="row mb-3">
	<div class="col-sm-10">
          <div class="form-check">
            <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="1" checked>
            <label class="form-check-label" for="gridRadios1">
              남자
              </label>
         </div>
         <div class="form-check">
            <input class="form-check-input" type="radio" name="gender" id="gridRadios1" value="2" >
            <label class="form-check-label" for="gridRadios1">
             여자
              </label>
         </div>
         </div>
         </fieldset>   </td></tr>

<tr><th>관심분야</th><td>
<select multiple class="form-select" size="5" name="jobCd">
<option value="131100,컴퓨터 하드웨어 기술자">컴퓨터 하드웨어 기술자</option>
<option value="131200,통신공학 기술자 및 연구원">통신공학 기술자 및 연구원</option>
<option value="131201,통신기기·장비 개발자 및 연구원">통신기기·장비 개발자 및 연구원</option>
<option value="131202,통신기술 개발자 및 통신망 운영 기술자">통신기술 개발자 및 통신망 운영 기술자</option>
<option value="131203,통신공사 감리 기술자">통신공사 감리 기술자</option>
<option value="132000,컴퓨터시스템 전문가">컴퓨터시스템 전문가</option>
<option value="132001,IT 컨설턴트">IT 컨설턴트</option>
<option value="132002,컴퓨터시스템 설계 및 분석가">컴퓨터시스템 설계 및 분석가</option>
<option value="132003,IT 감리 전문가(시스템 감리)">IT 감리 전문가(시스템 감리)</option>
<option value="133100,시스템 소프트웨어 개발자">시스템 소프트웨어 개발자</option>
<option value="133101,시스템 소프트웨어 개발자(프로그래머)">시스템 소프트웨어 개발자(프로그래머)</option>
<option value="133200,응용 소프트웨어 개발자">응용 소프트웨어 개발자</option>
<option value="133201,JAVA프로그래밍 언어 전문가">JAVA프로그래밍 언어 전문가</option>
<option value="133202,C언어 및 그 외 프로그래밍 언어 전문가">C언어 및 그 외 프로그래밍 언어 전문가</option>
<option value="133203,범용 응용 소프트웨어 프로그래머(ERP,정보처리,재무관리등)">범용 응용 소프트웨어 프로그래머(ERP,정보처리,재무관리등)</option>
<option value="133204,소프트웨어 프로그래머(국방,항공,교통,에너지,금융,자동차등)">소프트웨어 프로그래머(국방,항공,교통,에너지,금융,자동차등)</option>
<option value="133205,네트워크 프로그래머">네트워크 프로그래머</option>
<option value="133206,게임프로그래머">게임프로그래머</option>
<option value="133300,웹 개발자">웹 개발자</option>
<option value="133301,웹 개발자(웹 엔지니어·웹 프로그래머)">웹 개발자(웹 엔지니어·웹 프로그래머)</option>
<option value="133302,웹 기획자">웹 기획자</option>
<option value="133900,IT 테스터 및 IT QA 전문가">IT 테스터 및 IT QA 전문가</option>
</select></td></tr>
</table>
<input type="submit" value="올리기" style="width: 80px">
</form>
</body>
</html>