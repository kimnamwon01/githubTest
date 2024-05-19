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
pageContext.setAttribute("name", "이름저장");
session.setAttribute("age", "나이저장");
application.setAttribute("loc", "이름저장");
%>
<a href="a04_sessionShow.jsp">페이지 이동</a>
</body>
<script type="text/javascript">
</script>
</html>