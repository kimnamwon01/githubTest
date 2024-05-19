<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#login{
		text-align: center;
	}
	#loginForm{
		width:30%; height:50%;
		position: absolute;
		left: 35%;
		text-align: left;
	}
	#loginForm input[type=text]{
		width: 93%;
		height: 20%;
		background: lightgray;
		border: none;
		padding: 12px;
	}
	#loginForm input[type=submit]{
		background-color: lightblue;
		color: white;
		border: none;
		width: 100%;
		resize: vertical;
		padding: 12px;
	}
	#loginForm input[type=submit]:hover{
		cursor: pointer;
	}
	#loginForm button{
		background-color: white;
		border: none;
		width: 100%;
	}
	#loginForm button:hover{
		cursor: pointer;
	}
</style>
</head>
<body>
<jsp:include page="top.jsp"/>
<div id="login">
<div id="loginForm">
	<h3>로그인</h3>
	<form>
		<h4>이메일</h4>
		<input type="text" name="email"/>
		<h4>비밀번호</h4>
		<input type="text" name="pwd"/><br><br><br>
		<input type="submit" value="로그인"/>
	</form>
	<br><br><br><br>
	<button onclick="location.href='SignUp.jsp'">회원가입</button>
	<%
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	int i = 0;
	%>
</div>
</div>
</body>
<script type="text/javascript">
</script>
</html>