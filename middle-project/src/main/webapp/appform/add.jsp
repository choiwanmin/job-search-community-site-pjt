<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/section.css">
<link rel="stylesheet"  href="${pageContext.request.contextPath }/css/form.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/list.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
const check = () => {
	if(f.coverletter.value.length<=0){
		alert("지원서를 선택하세요");
		f.coverletter.focus();
		return;
	}
	if(f.picture.value.length<=0){
		alert("사진을 선택하세요");
		f.picture.focus();
		return;
	}
	if(f.pofol.value.length<=0){
		alert("포트폴리오를 선택하세요");
		f.pofol.focus();
		return;
	}
	f.submit();//폼을 action에 지정된 서버로 제출
}
</script>
</head>
<body>
<br>
<br>
<br>
<br>
<br>
<br>
<div class="w800 p40">
		<h3 class="form_title text-center">지원서 파일 올리기</h3>
		<p class="form_sub text-center">파일을 선택해주세요.</p>
<form action="${pageContext.request.contextPath }/appform/add.do" method="post" enctype="multipart/form-data" name ="f">
<div class="form_Wrap">
<div class="row mb-3">
				<div class="col-sm-10">
					<input type="hidden" class="form-control" name="userid"
						id="inputEmail3" value="${sessionScope.loginId }" readonly>
				</div>
			</div>
			<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">지원서</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="inputPassword3"
						name="coverletter">
				</div>
			</div>
			<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">사진</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="inputPassword3"
						name="picture">
				</div>
			</div>
			<div class="row mb-3">
				<label for="inputPassword3" class="col-sm-2 col-form-label">포트폴리오</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" id="inputPassword3"
						name="pofol">
				</div>
			</div>
	<button type="button" class="btn btn-primary" onclick="check()">등록</button>	
	</div>		
</form>
</div>

</body>
</html>