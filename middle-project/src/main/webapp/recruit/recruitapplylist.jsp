<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/chart.css">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
<h3>������ ���</h3>
<select class="form-select" aria-label="Default select example" id="selectbox"" name="selectbox" onchange="chageLangSelect()" style="margin-bottom: 30px">
  <option selected disabled>�����ڸ� Ȯ���� ���� �����ϼ���.</option>
  <c:forEach var="rllist" items="${rlList }">
    <option value="${rllist.wantedAuthNo }" >${rllist.wantedTitle }</option>
  </c:forEach>
</select>

<div class="chart_wrap" id="can_wrap">
</div>
  
<table id="apply_list" class = "table table-striped table-hover">
<thead>
<tr>
<th>������ ID</th>
<th>�з�</th>
<th>���</th>
<th>����</th>
</tr>
</thead>
<tbody>

</tbody>

</table>
</body>

<script type="text/javascript">
//���� ���� ����
let mal = 0;
let fam = 0;

//�з¿� ��� ����
//'�з� ����', '����', '���� (2����)', '���� (4����)', '����', '�ڻ�'
let any = 0;
let high = 0;
let der = 0;
let coll = 0;
let master = 0;
let doctor = 0;


const chageLangSelect=()=>{
	//���� ���� ����
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
				//����
				if(key == 'm') {mal = total[key]}
				else if(key == 'f') {fam = total[key]}
				
				//�з�
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
		for(let a of arr.apply){		
			const pdetail=()=>{
	        	location.href = '${pageContext.request.contextPath }/person/detail.do?num='+a.num;
	        }
	        const tr_row = table.insertRow();
			row++;
			
	        cell = tr_row.insertCell(0);
	        cell.textContent = a.id
	        cell.onclick=pdetail;
	        cell++

	        cell = tr_row.insertCell(1);
	        cell.textContent = a.education;
	        cell++
	        
	        cell = tr_row.insertCell(2);
	        cell.textContent = a.career;
	        cell++
	        
	        cell = tr_row.insertCell(3);
	        cell.textContent = a.age;
	        cell++
		}
	}
	req.open('get', '${pageContext.request.contextPath }/mem/applyDetail.do?wanted_auth_no='+selectValue);
	req.send();
	
}

const chart=()=>{
	const gen = document.getElementById('gender_chart');
	new Chart(gen, {
	  type: 'bar',
	  data: {
	    labels: ['����', '����'],
	    datasets: [{
	      label: '������ ��',
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
	    labels: ['�з� ����', '����', '���� (2����)', '���� (4����)', '����', '�ڻ�'],
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


</html>