<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/chart.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<script type="text/javascript">
//통계용 성별 변수
let mal = 0;
let fam = 0;

//학력용 통계 변수
//'학력 무관', '고졸', '대졸 (2년제)', '대졸 (4년제)', '석사', '박사'
let any = 0;
let high = 0;
let der = 0;
let coll = 0;
let master = 0;
let doctor = 0;


const chageLangSelect=()=>{
	//통계용 성별 변수
	mal = 0;
	fam = 0;

	any = 0;
	high = 0;
	der = 0;
	coll = 0;
	master = 0;
	doctor = 0;

    var langSelect = document.getElementById("selectbox");
    var selectValue = langSelect.options[langSelect.selectedIndex].value;
    var ata=document.getElementById("select");
    ata.innerHTML="<a href='${pageContext.request.contextPath }/recruit/recruitdetail.do?wantedAuthNo="+selectValue+"'> 공고로 이동<a>";
    const req = new XMLHttpRequest();
    let table = document.querySelector("tbody");
    while(table.rows.length > 0){
    	table.deleteRow(0);
    }
    
    
	const can_wrap = document.getElementById('can_wrap');
	can_wrap.innerHTML="";
    req.onload = () => {
		let arr = JSON.parse(req.responseText);
		console.log(arr)
		for(let total of arr.total){
			for(let key in total){
				//성별
				if(key == 'm') {mal = total[key]}
				else if(key == 'f') {fam = total[key]}
				
				//학력
				if(key == '0') {any = total[key]}
				else if(key == '3') {high = total[key]}
				else if(key == '4') {der = total[key]}
				else if(key == '5') {coll = total[key]}
				else if(key == '6') {master = total[key]}
				else if(key == '7') {doctor = total[key]}
			}
		}
		const gen = document.createElement("canvas");
		gen.id = 'gender_chart';
		const edu = document.createElement("canvas");
		edu.id = 'edu_chart';
		can_wrap.append(gen);
		can_wrap.append(edu);
		chart();
		let row = 0;
		let cell = 0;
	}
	req.open('get', '${pageContext.request.contextPath }/mem/applyDetail.do?wanted_auth_no='+selectValue);
	req.send();
	
}

const chart=()=>{
	const gen = document.getElementById('gender_chart');
	new Chart(gen, {
	  type: 'bar',
	  data: {
	    labels: ['남성', '여성'],
	    datasets: [{
	      label: '지원자 수',
	      data: [mal, fam],
	      borderWidth: 0
	    }]
	  },
	  options: {
		  responsive: false,
	    scales: {
	      y: {
	        beginAtZero: true
	      }
	    }
	  }
	});
	const edu = document.getElementById('edu_chart');
	new Chart(edu, {
	  type: 'doughnut',
	  data: {
	    labels: ['학력 무관', '고졸', '대졸 (2년제)', '대졸 (4년제)', '석사', '박사'],
	    datasets: [{
	      label: '# of Votes',
	      data: [any, high, der, coll, master, doctor],
	      borderWidth: 1
	    }]
	  },
	  options: {
		 responsive: false,
	    scales: {
	      y: {
	        beginAtZero: true
	      }
	    }
	  }
	});

}
</script>
</head>
<body>
<h3>지원자 현황</h3>
<select class="form-select" aria-label="Default select example" id="selectbox" name="selectbox" onchange="chageLangSelect()" style="margin-bottom: 30px">
  <option selected disabled>현황을 공고를 선택하세요.</option>
  <c:forEach var="rllist" items="${list }">
    <option value="${rllist.wanted_auth_no }" >${rllist.wanted_title }</option>
  </c:forEach>
</select>
<div class="chart_wrap" id="can_wrap">
</div>
<table id="apply_list" class = "table table-striped table-hover">
<thead>

<tbody>

</tbody>

</table>
<br>
<div id="select"></div> 
</body>
</html>