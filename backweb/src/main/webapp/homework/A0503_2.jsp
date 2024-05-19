<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
	아래 jsp 호출
	<form action="A0503.jsp">
		사용자의 나이:<input type="text" name="age"/>
		현재 날씨:<input type="text" name="weather"/>
		<input type="submit" value="데이터전송">
	</form>
	아래 서블릿 호출
	<form action="../A0503">
		서블릿에 출력할 내용:<input type="text" name="text">
		<input type="submit" value="데이터전송">
	</form>
</body>
</html>