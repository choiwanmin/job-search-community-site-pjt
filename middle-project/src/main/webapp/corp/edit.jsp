<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
let flag = false;
const check = () => {
	if(f.addr.value.length<=0){
		alert("회사 주소를 입력해주세요.");
		f.addr.focus();
		return;
	}
	if(f.addrdet.value.length<=0){
		alert("회사 상세 주소를 입력해주세요.");
		f.addrdet.focus();
		return;
	}
	f.submit();//폼을 action에 지정된 서버로 제출
}
console.log("${c }")
</script>
</head>
<body>
  <div class="w800 p40">
  <c:if test="${empty c }"><h3>회사 정보가 등록되어야 합니다.</h3></c:if>
  	<c:if test="${not empty c }">
  <h3 class="form_title text-center">기업 정보 수정하기</h3>
  <p class="form_sub text-center">수정할 회사의 정보를 기입해주세요.</p>
  
  <div class="form_Wrap">
    <form class="" action="${pageContext.request.contextPath }/mem/corpedit.do" method="post" name="f">
      <div class="row mb-3">
        <label for="inputEmail3" class="col-sm-2 col-form-label" >회사명</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputEmail3" name="corp_nm" value="${c.corp_nm }" readonly>
        </div>
      </div>
      <div class="row mb-3">
        <label for="inputPassword3" class="col-sm-2 col-form-label">사업자등록번호</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputPassword3" name="busi_no" value="${c.busi_no }" readonly>
        </div>
      </div>
     <div class="row mb-3">
        <label for="inputPassword3" class="col-sm-2 col-form-label">회사 주소</label>
        <div class="col-sm-10">        
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="sample6_address" placeholder="주소" name="addr"><br>
		<span class="post-wrap">
		<input type="text" id="sample6_postcode" placeholder="우편번호" name="p_code">
		<input type="text" id="sample6_detailAddress" placeholder="상세주소" name="addrdet">
		</span>
        </div>
      </div>
    <div class="btn_wrap">
		<button type="button" class="btn btn-primary" onclick="check()">회사 정보수정</button>
    </div>
    </form>
  </div>
  </c:if>
</div>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/map.js"></script>

</html>