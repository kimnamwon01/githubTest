<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	
%>
	구매정보<br>물건명: <%=name %><br>가격: <%=price %>
	<h2>구매정보2</h2>
	<h3>물건명:${param.name}</h3>
	<h3>가격:${param.price}</h3>
</body>
</html>