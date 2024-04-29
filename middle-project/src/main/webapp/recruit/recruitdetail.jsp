<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
const edit = () => {
	location.href = '${pageContext.request.contextPath}/recruit/recruitedit.do?wantedAuthNo=${wantedAuthNo }';
}

const del = () => {
	location.href = '${pageContext.request.contextPath }/recruit/recruitdel.do?wantedAuthNo=${wantedAuthNo }';
}

const recruitmylist = () => {
	location.href = '${pageContext.request.contextPath }/recruit/recruitmylist.do?mylist=0&id=${corpid }&busiNo=${busi_no }';
}

const recruitlist = () => {
	location.href = '${pageContext.request.contextPath }/recruit/recruitlist.do';
}

const apply = () => {
	location.href = '${pageContext.request.contextPath }/apply/add.do?wanted_auth_no=${wantedAuthNo }';
}
const scrap = () => {
	location.href = '${pageContext.request.contextPath }/scrap/add.do?wanted_auth_no=${wantedAuthNo }';
}

</script>
</head>
<body>

<div class="w1200">
<h3 class="form_title text-center">${rl.wantedTitle }</h3>
<div class="w800 rec_detail_wrap w-bg">
	<div class="rec_condition">
	<table>
	<tr><th class="con_icon"><i class="fa-solid fa-money-bill"></i><span class="con_title">임금</span></th><td>(${salTpCd })${rl.sal }</td></tr>
	<tr><th class="con_icon"><i class="fa-solid fa-school"></i><span class="con_title">학력</span></th><td>${minEdubgIcd }</td></tr>
	<tr><th class="con_icon"><i class="fa-solid fa-business-time"></i><span class="con_title">경력</span></th><td>${enterTpCd }</td></tr>
	<tr><th class="con_icon"><i class="fa-regular fa-hand"></i><span class="con_title">직종</span> </th><td>${rl.jobsNm }</td></tr>
	<tr><th class="con_icon"><i class="fa-solid fa-calendar-days"></i><span class="con_title">마감</span></th><td>${rl.closeDt }</td></tr>
	</table>	
	</div>
	<div class="rec_info">
	<div class="rec_info_det">
		<div class="info_icon_wrap"><img class="info_img" src="${pageContext.request.contextPath }/img/book.png"></div>
	모집 요강</div>
		<textarea name="content" rows="10" style="width:100%;border:0;resize:none;padding-top: 30px;" readonly>${rd.jobCont }</textarea>
	</div>
	<div class="rec_info">
	<div class="rec_info_det">
		<div class="info_icon_wrap"><img class="info_img" src="${pageContext.request.contextPath }/img/paper.png"></div>
	모집 정보</div>
		<div style="margin-top:20px">
			<table>
				<tr><th ><span class="con_title">기업명</span></th><td>${corp_nm }</td></tr>
				<tr><th ><span class="con_title">기업주소</span></th><td>${corp_addr }</td></tr>
				<tr><th ><span class="con_title">공고담당자전화번호</span></th><td>${rd.contactTelNo }</td></tr>
				<tr><th ><span class="con_title">근무지역</span></th><td>${rl.workRegion }</td></tr>
				<tr><th ><span class="con_title"></span></th><td><div id="map" style="width:500px;height:400px;">
					</div></td></tr>
			</table>	
		</div>
	</div>
	<c:if test = "${empty sessionScope.loginId}">
<input type="button" class="btn" value="공고 목록" onclick="recruitlist()">
</c:if>

<c:if test = "${not empty sessionScope.loginId}">
<c:if test = "${sessionScope.loginType.equals('구직자')}">

<input type="button" class="btn btn-w" value="공고 목록" onclick="recruitlist()">
<c:if test = "${empty msg2 }">
<input type="button" class="btn btn-g" value="지원" onclick="apply()">
</c:if>
<c:if test = "${not empty msg2 }">
${msg2 }
</c:if>
<input type="button" class="btn btn-y" value="스크랩" onclick="scrap()">
</c:if>
<c:if test = "${sessionScope.loginId eq corpid}">
<input type="hidden" class="btn" name="corpid" value="${corpid }">
<input type="hidden" class="btn" name="busiNo" value="${busi_no }">
<input type="button" class="btn" value="공고 목록" onclick="recruitmylist()">
<input type="button" class="btn" value="공고 수정" onclick="edit()">
<input type="button" class="btn" value="공고 삭제" onclick="del()">
</c:if>
</c:if>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=751a4a007c37d37278bb88b5575faa4a&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${rl.workRegion }', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
        	map:map,
            position: coords
        });   
        marker.setMap(map);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
        
        
        // 인포윈도우로 장소에 대한 설명을 표시합니다
         var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${corp_nm }</div>'
        });
        
        infowindow.open(map, marker);

     	// 마커에 클릭이벤트를 등록합니다
        kakao.maps.event.addListener(marker, 'click', function() {
        	var position = this.getPosition();
 		    var url = 'https://map.kakao.com/link/map/' + result[0].y + ',' + result[0].x;
 		    window.open(url);
 		});
    } 
     
}

);
</script>
<!-- kakao api map 끝 -->
</div>

</body>
</html>