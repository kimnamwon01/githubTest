<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*"   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("h2").text("시작");
		
	})
</script>
</head>
<body>
<%--
# 제목
pageContext.setAttribute("name","gil-dong")
기본 코드 : pageContext.getAttribute("name") 으로 호출
	데이터가 없을 때에 대한 처리가 필요
el 코드 : ${name}으로 간단하게 호출 될 뿐 아니라, 변수가 없으면 공백으로
	처리 되고 만약 숫자 
--%>
	<h2></h2>

	
</body>
</html>