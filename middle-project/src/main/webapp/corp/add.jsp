<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
let flag = false;
const check = () => {
	if(f.busi_no.value.length<=0){
		alert("사업자 등록 번호를 입력해주세요.");
		f.busi_no.focus();
		return;
	}
	if(f.corp_nm.value.length<=0){
		alert("회사 이름을 입력해주세요.");
		f.corp_nm.focus();
		return;
	}
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

</script>
</head>
<body>
  <div class="w800 p40">
  <h3 class="form_title text-center">기업 정보 등록하기</h3>
  <p class="form_sub text-center">회사의 정보를 기입해주세요.</p>
  <div class="form_Wrap">
    <form class="" action="${pageContext.request.contextPath }/corp/add.do" method="post" name="f">
      <div class="row mb-3">
        <label for="inputEmail3" class="col-sm-2 col-form-label">회사명</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" id="inputEmail3" name="corp_nm">
        </div>
      </div>
      <div class="row mb-3">
        <label for="inputPassword3" class="col-sm-2 col-form-label">사업자등록번호</label>
        <div class="col-sm-10">
          <input type="password" class="form-control" id="inputPassword3" name="busi_no">
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
      <button type="button" class="btn btn-primary" onclick="check()">회사 정보등록</button>
    </div>
    </form>
  </div>
</div>

</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/map.js"></script>

</html>