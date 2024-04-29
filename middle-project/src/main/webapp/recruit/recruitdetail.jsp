<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
const recruitlist = () => {
	location.href = '${pageContext.request.contextPath }/recruit/recruitlist.do';
}

const apply = () => {
	location.href = '${pageContext.request.contextPath }/recruit/recruitdel.do?wantedAuthNo=${wantedAuthNo }';
}
const scrap = () => {
	location.href = '${pageContext.request.contextPath }/scrap/add.do?wantedAuthNo=${wantedAuthNo }';
}

</script>
</head>
<body>
<c:if test = "${sessionScope.loginType.equals('기업')}">
<h3 class="form_title text-center">${corpid }(사업자등록번호:${busi_no })님의 공고<br/> 공고 번호:[${wantedAuthNo }] 상세 페이지</h3>
</c:if>

<c:if test = "${sessionScope.loginType.equals('구직자')}">
<h3 class="form_title text-center">${rl.wantedTitle }</h3>
<h3>공고 번호:${wantedAuthNo } 상세</h3>
<h4>기업정보</h4>
<table >
<tr><th>기업명</th><td>${corp_nm }</td></tr>
<tr><th>기업주소</th><td>${corp_addr }</td></tr>
</table>
</c:if>
<table border="1">
    <tr><th>공고상세내용</th><td><textarea name="content" rows="10" style="width:100%;border:0;resize:none;" readonly>${rd.jobCont }</textarea></td></tr>
    
    <tr><th>(임금조건)임금</th><td>(${salTpCd })${rl.sal }</td></tr>
    <tr><th>최소학력</th><td>${minEdubgIcd }</td></tr>
    <tr><th>경력</th><td>${enterTpCd }</td></tr>
    <tr><th>직종</th><td>${rl.jobsNm }</td></tr>
    <tr><th>공고등록일</th><td>${rl.regDt }</td></tr>
    <tr><th>공고마감일</th><td>${rl.closeDt }</td></tr>
    <tr><th>공고근무지역</th><td>${rl.workRegion }</td></tr>
    <tr><th>공고담당자전화번호</th><td>${rd.contactTelNo }</td></tr>
    <tr><th>공고상태</th><td>${detailType }</td></tr>
    </table>
    <!-- kakao api map 시작 -->
<div id="map" style="width:500px;height:400px;">
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
<input type="button" value="공고 목록" onclick="recruitlist()">
<c:if test = "${sessionScope.loginType.equals('구직자')}">
<input type="button" value="지원" onclick="apply()">
<input type="button" value="스크랩" onclick="scrap()">
</c:if>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="../js/map.js"></script>
</body>
</html>