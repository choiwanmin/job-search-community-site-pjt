<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="w800 p40">
  <h3 class="form_title text-center">로그인</h3>
  <p class="form_sub text-center">회원가입한 정보를 입력해주세요.</p>
  <div class="form_Wrap" style="padding:80px 0">
    <form action="${pageContext.request.contextPath }/mem/login.do" method="post" name="f">
      <div class="row mb-3">
        <label for="userId" class="col-sm-2 col-form-label">아이디</label>
        <div class="col-sm-10">
          <input type="text" class="form-control" type="text" name="id">
        </div>
      </div>
      <div class="row mb-3">
        <label for="inputPassword" class="col-sm-2 col-form-label">패스워드</label>
        <div class="col-sm-10">
          <input type="password" name="pwd" class="form-control">
        </div>
      </div>
      </div>
    <div class="btn_wrap">
			 <input type="submit" class="btn btn-primary"  value="로그인" ></button>
    </div>
    </form>
  </div>
</div>
</body>
</html>