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
	<%=pageContext.getAttribute("name") %>
	<%=session.getAttribute("age") %>
	<%=application.getAttribute("loc") %>
</body>
<script type="text/javascript">
</script>
</html>