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
	String email = request.getParameter("email");
	String age = request.getParameter("age");
	
	String[] likes = request.getParameterValues("like");
	String like = "";
	
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String pt = request.getParameter("pt");
	
	String[] hobbies = request.getParameterValues("hobby");
	String hobby = "";
	
	String file = request.getParameter("file");
%>
<h3>안녕하세요, <%=name %>님, 당신의 이메일은 <%=email %>이고 나이는 <%=age %>입니다.</h3>
<%
	if(likes != null && likes.length>0){
		like += "<h3>당신이 좋아하는 것은: ";
		for(String one:likes){
			like += one + " ";
		}
		like += "입니다. </h3>";
		out.println(like);
	} else{
		out.println("<h3>당신은 아무것도 좋아하지 않습니다.<h3>");
	}
%>

<h3>ID: <%=id %><br>
비밀번호: <%=pwd %><br>
포인트: <%=pt %></h3>

<h3><%=file %></h3><br>

<%
	if(hobbies != null && hobbies.length>0){
		hobby += "<h3>당신이 좋아하는 것은: ";
		for(String one:hobbies){
			hobby += one + " ";
		}
		hobby += "입니다. </h3>";
		out.println(hobby);
	} else{
		out.println("<h3>당신은 아무것도 좋아하지 않습니다.<h3>");
	}
%>

</body>
</html>