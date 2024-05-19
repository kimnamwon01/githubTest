<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.roomOpt{
	width: 80%; height: 400px;
	margin-bottom: 10%;
	position: relative;
	left: 10%;
}
#roomInfo > button{
	background-color: lightblue;
	color: white;
	border: none;
	width: 30%;
	padding: 12px;
}
#roomInfo > button:hover{
	cursor: pointer;
}
#roomInfo *:not(div){
	width: 30%;
	position: relative;
	left: 60%;
}
#roomInfo > div{
	width: 80%;
	height: 80%;
	position: relative;
	right: 50%;
}
</style>
</head>
<body>
<jsp:include page="top.jsp"/>
<br><br><br>
<%
String roomDesc[] = {"","커플pc룸","디럭스 패밀리 룸","디럭스 룸","릴랙스 룸","감성 테라스 룸"};
String roomPrice = "roomPrice";
for(int i=1;i<=5;i++){%>
<div class="roomOpt" id="roomOpt<%=i%>">
	<div id="roomInfo">
		<div><img src="img/roomOptsImg/roomOpt<%=i %>.webp"></div>
		<h3>숙박</h3><%=roomDesc[i] %>
		<h4><%=roomPrice %>원 </h4><button onclick="location.href='payCompl.jsp'">결제</button> <br>
		<h3>대실</h3>
		<h4><%=roomPrice %>원 </h4><button onclick="location.href='payCompl.jsp'">결제</button> <br>
	</div>
	<br>
</div>
<%
}
%>
</body>
<script type="text/javascript">
</script>
</html>