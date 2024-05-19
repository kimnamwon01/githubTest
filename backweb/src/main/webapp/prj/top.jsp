<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#top_menu{
	position: relative;
	right: 5%;
	text-align: right;
}
#top_menu button{
	border: none;
	font-size: 15px;
	background: white;
	font-weight: bold;
}
#top_menu>button:hover, #top_logo>img:hover{
	cursor: pointer;
}
</style>
</head>
<body>
	<div id="top_top">
		<div id="top_logo"><img src="img/logo.png" onclick="location.href='Main.jsp'"/></div>
		<div id="top_menu"><button onclick="location.href='Event.jsp'">이벤트</button>
		<button onclick="location.href='Login.jsp'">로그인</button>
		<button onclick="moveUserInfo()">내정보</button></div>
	</div>
</body>
<script type="text/javascript">
var isLogin = false;
function moveUserInfo(isLogin){
	if(isLogin){
		location.href = "User_info.jsp";
	}
	else	location.href = "Login.jsp";
}
</script>
</html>