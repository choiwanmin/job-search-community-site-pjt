<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript">
const a=(val,ti)=>{
	let req=new XMLHttpRequest()
	req.open('get',"${pageContext.request.contextPath }/myapplist/recent.do?num="+val+"&title="+ti)
	req.send()
	req.onload=()=>{
	}
}
window.onload()

</script>
</head>
<body>
<c:if test = "${sessionScope.loginType.equals('구직자')}">
<h3>공고 목록</h3>
</c:if>
<table class = "table table-striped table-hover w800 p40">
<tr>
<th>공고제목</th>
<th>채용직무</th>
<th>공고등록일</th>
<th>공고마감일</th>
</tr>
<c:forEach var="rllist" items="${rlList }">
<tr>
<td><a href="${pageContext.request.contextPath }/recruit/recruitdetail.do?wantedAuthNo=${rllist.wantedAuthNo }" onclick="a('${rllist.wantedAuthNo }','${rllist.wantedTitle }')">${rllist.wantedTitle }</a></td>
<td>${rllist.jobsNm }</td>
<td >${rllist.regDt }</td>
<td>${rllist.closeDt }</td>
</tr>
</c:forEach>
</table>
<form action="${pageContext.request.contextPath }/recruit/recruitlist.do" method="post">
<table>
<tr><c:forEach var="p" items="${paging }" varStatus="step" begin="${pnum }" end="${pnume }">
<td><input type="submit" name="num" value="${step.count+pnum}">  
</td>
</c:forEach>
</tr>
</table>
</form>	
 <div class="w1200" style="padding-top: 150px;">
        <table class=" table table-hover table-striped">
            <thead>
                <tr>
                    <th scope="col" class="text-center">공고제목</th>
                    <th scope="col" class="text-center">채용직무</th>
                    <th scope="col" class="text-center">공고등록일</th>
                    <th scope="col" class="text-center">공고마감일</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="rllist" items="${rlList }">
                <tr>
                    <td style="width: 30%" class="text-center"><a href="${pageContext.request.contextPath }/recruit/recruitdetail.do?wantedAuthNo=${rllist.wantedAuthNo }" onclick="a('${rllist.wantedAuthNo }')">${rllist.wantedTitle }</a></td>
                    <td style="width: 20%" class="text-center">${rllist.jobsNm }</td>
                    <td style="width: 10%" class="text-center">${rllist.regDt }</td>
                    <td style="width: 10%" class="text-center">${rllist.closeDt }</td>
               
                </tr>
       		</c:forEach>
            </tbody>
        </table>
        <form action="${pageContext.request.contextPath }/recruit/recruitlist.do" method="post" style="width:80px">
			<table>
			<tr><c:forEach var="p" items="${paging }" varStatus="step" begin="${pnum }" end="${pnume }">
			<td><input type="submit" name="num" value="${step.count+pnum}">  
			</td>
			</c:forEach>
			</tr>
			</table>
		</form>	
    </div>
</body>
</html>