<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<%
	session.setMaxInactiveInterval(10 * 60);
	session.setAttribute("userID", "himan");
%>
	<h1 onclick="location.href='A0517_8.jsp'">세션 userID 설정(페이지 이동)</h1>
</body>
<script type="text/javascript">
</script>
</html>