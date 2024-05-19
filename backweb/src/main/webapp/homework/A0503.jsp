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
<%--
객관식 문제
1.A 2.B 3.D
 --%>
 <%!
 int calc(int a){
	 return a * a;
 }
 String isAdult(int age){
	 String adult = age>=18?"성인":"미성년";
	 return adult;
 }
 %>
 <%String name = "홍길동"; %>
 <h2>사용자의 이름: <%=name %></h2>
 
 <%String strAge = request.getParameter("age");
 int age = Integer.parseInt(strAge); %>
 
 <h2>사용자의 나이: <%=age %></h2>
 <h2>성인여부 : 사용자는 <%=isAdult(age) %>입니다.</h2>
 <%
 String weather = request.getParameter("weather"); 
 switch(weather){
 case "맑음":
 %>
 <h2>실외활동을 추천합니다.</h2>
 <%break;
 case "흐림":
 %><h2>실내활동을 추천합니다.</h2>
 <%break;	default: %>
 <h2>값을 제대로 입력해주세요</h2>
 <%} %>
 
 <% int random = (int)(Math.random()*100); %>
 <% String oddEven = random%2==0?"짝수":"홀수"; %>
 <h2><%=random %>은
  <%=oddEven %>입니다.</h2>
</body>
</html>