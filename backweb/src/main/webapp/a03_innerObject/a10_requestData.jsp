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
	<h2>get</h2>
	<h3>회원아이디(memberId):<%=request.getParameter("memberId") %></h3>
	<h3>회원명(mname):<%=request.getParameter("mname") %></h3>
	<h3>회원포인트(mpoint):<%=request.getParameter("mpoint") %></h3>
</body>
<script type="text/javascript">
</script>
</html>