<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <section class="w1200 p40">
      <div class="info_wrap">
        <div class="info_left">
          <h4 class="topic">개인정보</h4>
          <ul>
            <li class="info_title"><a href="">내 정보 확인</a></li>
            <li class="info_title"><a href="">내 정보 수정</a></li>
            <li class="info_title"><a href="">내 공고 확인</a></li>
            <li class="info_title"><a href="">내 정보 수정</a></li>
          </ul>
          <h4 class="topic">공고정보</h4>
          <ul>
            <li class="info_title"><a href="">내 정보 확인</a></li>
            <li class="info_title"><a href="">내 정보 수정</a></li>
            <li class="info_title"><a href="">내 공고 확인</a></li>
            <li class="info_title"><a href="">내 정보 수정</a></li>
          </ul>    
        </div>
        <div class="info_right">
        <c:if test="${not empty view }">
			<jsp:include page="${view }"></jsp:include>
		</c:if>
        
        </div>
      </div>
    </section>  
</body>
</html>