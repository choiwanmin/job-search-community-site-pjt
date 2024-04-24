<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript">
const check = () => {
	if(f.id.value.length<=0){
		alert("id는 필수 입력 사항");
		f.id.focus();
		return;
	}
	if(f.pwd.value.length<=0){
		alert("pwd는 필수 입력 사항");
		f.pwd.focus();
		return;
	}
	if(!flag){
		alert("id 중복체크 해야함");
		return;
	}
	
	f.submit();//폼을 action에 지정된 서버로 제출
}

//id중복체크 결과 저장
let flag = false;

const a = () =>{
	const req = new XMLHttpRequest();
	req.onload = () => {
		let obj = JSON.parse(req.responseText);
		let txt = '중복된 아이디';
		if(obj.flag){
			txt="사용가능 아이디";
			flag = true;
		}
		document.getElementById('res').innerHTML = txt;
	}
	let id = document.getElementById('id').value;
	req.open('get', '${pageContext.request.contextPath }/mem/idcheck.do?id='+id);
	req.send();
}

</script>
</head>
<body>
<div class="w800 p40">
  <h3 class="form_title text-center">회원가입</h3>
  <p class="form_sub text-center">어서오세요. 사이트에서 사용할 회원 정보를 입력해주세요.</p>
  <div class="form_Wrap" style="padding:80px 0">
    <form action="${pageContext.request.contextPath }/mem/add.do" method="post" name="f">
      <div class="row mb-3" >
        <label for="userId" class="col-sm-2 col-form-label">아이디</label>
        <div class="col-sm-10" style="display:flex">
          <input type="text" id="id" class="form-control" type="text" name="id"  style="width:80%">
          <input type="button" value="중복체크" onclick="a()")  style="width:20%">
        </div>
        <span id='res' style="color: #a7a7a7;"></span>
      </div>
      <div class="row mb-3">
        <label for="inputPassword" class="col-sm-2 col-form-label">패스워드</label>
        <div class="col-sm-10">
          <input type="password" name="pwd" class="form-control">
        </div>
      </div>
      <div class="row mb-3">
        <label for="inputPassword" class="col-sm-2 col-form-label">가입 타입</label>
        <div class="col-sm-10 radio_wrap" style="width:180px;display: flex; align-items: center;">
	        <input class="form-check-input" id="gridRadios1" type="radio" name="type" value="1" checked>
	        <label class="form-check-label" for="gridRadios1" style="padding-right:10px"> 구직자</label>
	        <input class="form-check-input" id="gridRadios1" type="radio" name="type" value="2" >
	        <label class="form-check-label" for="gridRadios1"> 기업 </label>
        </div>
      </div>
      </div>
    <div class="btn_wrap">
		<input type="submit" class="btn btn-primary"  value="회원가입" ></button>
    </div>
    </form>
  </div>
</div>

</html>