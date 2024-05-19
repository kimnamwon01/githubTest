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
<%!
String name = "홍길동";
int age = 20;
String location = "수원";
int calc(int a, int b){
	return a+b;
}
%>
<h2>이름 : <%=name %></h2>
<h2>나이 : <%=age %></h2>
<h2>사는 곳 : <%=location %></h2>
<h2>3 + 5 : <%=calc(3,5) %></h2>
</body>
</html>