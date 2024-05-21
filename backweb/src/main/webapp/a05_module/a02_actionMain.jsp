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
		$("h2").text("action 태그 include 처리");
		
	})
</script>
</head>
<body>
<%--
# action 태그로 포함된 경우, 각각의 파일은 다른 class로 컴파일 되기에
다른 파일로 전달할 때 방식을 선언하여 처리하여야 한다.
--%>
<%
request.setCharacterEncoding("UTF-8");
String name = "홍길동(단순변수)";
String reqName = "마길동(요청값으로)"; 

%>
	<h2></h2>
	<jsp:include page="a03_actionSub.jsp">
		<jsp:param value="<%=reqName %>" name="reqName"/>
	</jsp:include>
	<%--
	# a03_actionSub.jsp
	
	<h2>포함된 페이지의 변수(action 태그일 때)</h2>
	<h2>단순변수 호출:<%=name%></h2> 에러발생 
	<h2>넘겨온 요청값 : <%= request.getParameter("reqName")%></h2>
	
	--%>
	
	
	
</body>
</html>