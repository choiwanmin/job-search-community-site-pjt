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
	<tr><th class="con_icon"><i class="fa-solid fa-money-bill"></i><span class="con_title">�ӱ�</span></th><td>(${salTpCd })${rl.sal }</td></tr>
	<tr><th class="con_icon"><i class="fa-solid fa-school"></i><span class="con_title">�з�</span></th><td>${minEdubgIcd }</td></tr>
	<tr><th class="con_icon"><i class="fa-solid fa-business-time"></i><span class="con_title">���</span></th><td>${enterTpCd }</td></tr>
	<tr><th class="con_icon"><i class="fa-regular fa-hand"></i><span class="con_title">����</span> </th><td>${rl.jobsNm }</td></tr>
	<tr><th class="con_icon"><i class="fa-solid fa-calendar-days"></i><span class="con_title">����</span></th><td>${rl.closeDt }</td></tr>
	</table>	
	</div>
	<div class="rec_info">
	<div class="rec_info_det">
		<div class="info_icon_wrap"><img class="info_img" src="${pageContext.request.contextPath }/img/book.png"></div>
	���� �䰭</div>
		<textarea name="content" rows="10" style="width:100%;border:0;resize:none;padding-top: 30px;" readonly>${rd.jobCont }</textarea>
	</div>
	<div class="rec_info">
	<div class="rec_info_det">
		<div class="info_icon_wrap"><img class="info_img" src="${pageContext.request.contextPath }/img/paper.png"></div>
	���� ����</div>
		<div style="margin-top:20px">
			<table>
				<tr><th ><span class="con_title">�����</span></th><td>${corp_nm }</td></tr>
				<tr><th ><span class="con_title">����ּ�</span></th><td>${corp_addr }</td></tr>
				<tr><th ><span class="con_title">����������ȭ��ȣ</span></th><td>${rd.contactTelNo }</td></tr>
				<tr><th ><span class="con_title">�ٹ�����</span></th><td>${rl.workRegion }</td></tr>
				<tr><th ><span class="con_title"></span></th><td><div id="map" style="width:500px;height:400px;">
					</div></td></tr>
			</table>	
		</div>
	</div>
	<c:if test = "${empty sessionScope.loginId}">
<input type="button" class="btn" value="���� ���" onclick="recruitlist()">
</c:if>

<c:if test = "${not empty sessionScope.loginId}">
<c:if test = "${sessionScope.loginType.equals('������')}">

<input type="button" class="btn btn-w" value="���� ���" onclick="recruitlist()">
<c:if test = "${empty msg2 }">
<input type="button" class="btn btn-g" value="����" onclick="apply()">
</c:if>
<c:if test = "${not empty msg2 }">
<button type="button" class="btn btn-primary readbtn">${msg2}</button>
</c:if>
<input type="button" class="btn btn-y" value="��ũ��" onclick="scrap()">
</c:if>
<c:if test = "${sessionScope.loginId eq corpid}">
<input type="hidden" class="btn" name="corpid" value="${corpid }">
<input type="hidden" class="btn" name="busiNo" value="${busi_no }">
<input type="button" class="btn" value="���� ���" onclick="recruitmylist()">
<input type="button" class="btn" value="���� ����" onclick="edit()">
<input type="button" class="btn" value="���� ����" onclick="del()">
</c:if>
</c:if>
</div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=751a4a007c37d37278bb88b5575faa4a&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
        level: 3 // ������ Ȯ�� ����
    };  

// ������ �����մϴ�    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
var geocoder = new kakao.maps.services.Geocoder();

// �ּҷ� ��ǥ�� �˻��մϴ�
geocoder.addressSearch('${rl.workRegion }', function(result, status) {

    // ���������� �˻��� �Ϸ������ 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
        var marker = new kakao.maps.Marker({
        	map:map,
            position: coords
        });   
        marker.setMap(map);

        // ������ �߽��� ��������� ���� ��ġ�� �̵���ŵ�ϴ�
        map.setCenter(coords);
        
        
        // ����������� ��ҿ� ���� ������ ǥ���մϴ�
         var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${corp_nm }</div>'
        });
        
        infowindow.open(map, marker);

     	// ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
        kakao.maps.event.addListener(marker, 'click', function() {
        	var position = this.getPosition();
 		    var url = 'https://map.kakao.com/link/map/' + result[0].y + ',' + result[0].x;
 		    window.open(url);
 		});
    } 
     
}

);
</script>
<!-- kakao api map �� -->
</div>

</body>
</html>