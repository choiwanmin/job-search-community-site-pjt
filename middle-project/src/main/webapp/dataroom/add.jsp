<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
body {
	padding: 20px;
	background-color: white;
}

form {
	max-width: 600px;
	margin: auto;
}

.form-group {
	margin-bottom: 20px;
}

.btn-submit {
	width: 100%;
}
</style>
</head>
<body>
	<div class="w1200" style="padding-top: 150px;">
		<form action="${pageContext.request.contextPath }/dataroom/add.do"
			method="post" enctype="multipart/form-data">
			<div class="form-group">
				<label for="type">게시판</label> <select name="type"
					class="form-select">
					<option value="1">신입</option>
					<option value="2">취준</option>
					<option value="3">채용공고</option>
					<option value="4">면접</option>
					<option value="5">자소서</option>
				</select>
			</div>
			<div class="form-group">
				<label for="writer">작성자</label> <input type="text" id="writer"
					name="writer" class="form-control" value="${sessionScope.loginId }"
					readonly>
			</div>

			<div class="form-group">
				<label for="title">제목</label> <input type="text" id="title"
					name="title" class="form-control">
			</div>

			<div class="form-group">
				<label for="content">내용</label>
				<textarea id="content" name="content" class="form-control" rows="5"></textarea>
			</div>

			<input type="submit" value="올리기" class="btn btn-primary btn-submit">
		</form>
	</div>
</body>
</html>