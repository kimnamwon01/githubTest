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
	<form>
	색상입력:<input type="text" name="color"/>
	<input type="submit" value="색상변경">
	</form>
	<%
	String color = request.getParameter("color");
	%>
	<script type="text/javascript"> 
		bdObj = document.querySelector("body");
		bdObj.style.backgroundColor = "<%= color%>";
	</script>
</body>
</html>