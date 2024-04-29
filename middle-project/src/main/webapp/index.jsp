<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <!-- font -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
  <!-- bootstrap -->
  <scrpt src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script> 
  <!-- css Style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/style.css">
  <link rel="stylesheet"  href="${pageContext.request.contextPath }/css/form.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/list.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath }/css/section.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css"/>
        
       
<script type="text/javascript" src="${pageContext.request.contextPath }/js/main.js"></script>
<title>Insert title here</title>
<script type="text/javascript">
window.onload=()=>{
	listLoad()
}


const listLoad=()=>{
    const req = new XMLHttpRequest();
    let job_rec_wrap = document.querySelectorAll(".job_rec_wrap")[0];
    let index_recr="";
    req.onload = () => {
    	let arr = JSON.parse(req.responseText);
    	for(let a of arr){
    		index_recr = `
        	      <li class="main_job_cont">
                <a href="${pageContext.request.contextPath }/recruit/recruitdetail.do?wantedAuthNo=\${a.authNo }">
                  <div class="rec_main_wrap">
                    <p class="job_title title_lim"> \${a.title}</p> 
                    <p class="corp_nm">\${a.corp}</p>

                  </div>
                  <div class="rec_sub_wrap">
                    <span class="rec_addr rec_sub">\${a.addr}</span>
                    <span class="rec_date rec_sub">\${a.date}</span>
                  </div>
                </a>
              </li>
        	`;
    		job_rec_wrap.innerHTML += index_recr;
    	}
	}

	req.open('get', '${pageContext.request.contextPath }/main/index.do');
	req.send();
}
</script>

</head>
<body>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath }/index.jsp">Main</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath }/dataroom/list.do?viewtype=1">게시판</a>
                	</li>
              	<c:if test="${sessionScope.loginType.equals('구직자') }">
              	<li class="nav-item">
                  <a class="nav-link"  href="${pageContext.request.contextPath }/recruit/recruitlist.do">공고 목록</a>
                </li>
              	</c:if>
				<c:if test="${sessionScope.loginType.equals('기업') }">
				<li class="nav-item">
                  <a class="nav-link" href="${pageContext.request.contextPath }/person/list.do">인재추천</a>
                </li>
         		<li class="nav-item">
                  <a class="nav-link log-nav" href="${pageContext.request.contextPath }/recruit/recruitlist.do">공고 목록</a>
                </li>
				</c:if>
                
              </ul>
            </div>
            <div class="collapse navbar-collapse" id="navUser">
            <c:if test="${empty sessionScope.loginId }">
                <ul class="navbar-nav">
                  <li class="nav-item" id="join">
                    <a class="nav-link" href="${pageContext.request.contextPath }/mem/add.do">회원가입</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath }/mem/login.do">로그인</a>
                  </li>
                </ul>
			</c:if>	
		<c:if test="${not empty sessionScope.loginId }">
		     <ul id="log-info" class="navbar-nav"  onclick="show()">
                  <li class="nav-item nav-link">
                    ${sessionScope.loginId } /${sessionScope.loginType } 회원 <span id="user">▼</span>
             <nav id="show" class="nav flex-column show">
				<c:if test="${sessionScope.loginType.equals('구직자') }"><a class="nav-link log-nav" href="${pageContext.request.contextPath }/mem/myinfo.do">내 정보 확인</a>
				<a class="nav-link log-nav" href="${pageContext.request.contextPath }/mem/logout.do">로그아웃</a>
				<a class="nav-link log-nav"  href="${pageContext.request.contextPath }/dataroom/add.do">자료 등록</a>
				<a class="nav-link log-nav"  href="${pageContext.request.contextPath }/appform/add.do">지원서 등록</a>
				</c:if>
				<c:if test="${sessionScope.loginType.equals('기업') }"><a class="nav-link log-nav" href="${pageContext.request.contextPath }/mem/corpinfo.do">내 정보 확인</a>
				<a class="nav-link log-nav" href="${pageContext.request.contextPath }/mem/logout.do">로그아웃</a>
				</c:if>
			 </nav>
                  </li>
             </ul>
		</c:if>
              </div>
          </div>
    </nav>
<!-- main index body -->
			<c:if test="${not empty view }">
				<jsp:include page="${view }"/>
			</c:if>
<c:if test="${empty view }">

<section class="sw-wrap">
<div class="w1200 p40">
<!-- Swiper -->
   <div class="swiper mySwiper">
    <div class="swiper-wrapper">
      <div class="swiper-slide"><img class="sw-img" src="${pageContext.request.contextPath }/img/54_3_PC_00ARPih.png"></div>
      <div class="swiper-slide"><img class="sw-img" src="${pageContext.request.contextPath }/img/56_3_PC_OmhsnRO.png"></div>
      <div class="swiper-slide"><img class="sw-img" src="${pageContext.request.contextPath }/img/58_3_PC_wmhMSI3.png"></div>
    </div>
    <div class="swiper-pagination"></div>
  </div>
</div>
</section>
<section class="w1200 p40">
    <div class="title_wrap">
      <h2>최신 공고</h2>
    </div>
    <ul class="job_rec_wrap"> 
    </ul>
</section>  		
</c:if>
</body>
<!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Initialize Swiper -->
    <script>
      var swiper = new Swiper(".mySwiper", {
        spaceBetween: 30,
        centeredSlides: true,
        autoplay: {
          delay: 2500,
          disableOnInteraction: false,
        },
        pagination: {
          el: ".swiper-pagination",
          clickable: true,
        },
      });

    </script>
</html>