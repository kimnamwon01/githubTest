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
		left: 36%;
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
	<h3>회원가입</h3>
	<form>
		<h4>이름</h4>
		<input type="text" name="name"/>
		<h4>생년월일</h4>
		<input type="text" name="birth" value="20001231"/>
		<h4>이메일</h4>
		<input type="text" name="email"/>
		<h4>비밀번호</h4>
		<input type="text" name="pwd"/>
		<h4>비밀번호 확인</h4>
		<input type="text" name="pwdck"/><br><br><br>
		<input type="submit" value="회원가입"/>
	</form>
	<br><br><br><br>
	<button onclick="location.href='Login.jsp'">로그인 페이지로</button>
	<button onclick="location.href='Manager.jsp'">관리자 페이지로</button>
</div>
</div>
</body>
<script type="text/javascript">
</script>
</html>