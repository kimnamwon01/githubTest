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
	<%-- 1 --%>
	<form>
		<input type="text" name="userInput"/>
		<input type="text" name="userInput"/>
		<input type="text" name="userInput"/>
		<input type="submit" value="Input"/>
	</form>
	<%
		String[] userInput = request.getParameterValues("userInput");
		if(userInput!=null){
			for(String input:userInput){
				%>
					<%=input.toUpperCase() %>
				<%
			}
		}
		
	%>
	<%-- 2 --%>
	<form>
		<input type="checkbox" name="hobby" value="독서"/>독서<br>
		<input type="checkbox" name="hobby" value="영화감상"/>영화감상<br>
		<input type="checkbox" name="hobby" value="등산"/>등산<br>
		<input type="checkbox" name="hobby" value="요리"/>요리<br>
		<input type="submit" value="submit"/><br>
	</form>
	<%
		String hobbyOut ="";
		String[] hobby = request.getParameterValues("hobby");
		if(hobby!=null){
			for(int i=0;i<hobby.length;i++){
				hobbyOut += hobby[i];
				if(i<hobby.length-1)	hobbyOut += ", ";
			}%>
			<h3><%=hobbyOut %></h3>
			<%
		}
		
	%>
	<%-- 3 --%>
	<form>
		<select name="subject" multiple="multiple">
			<option value="수학">
			<option value="과학">
			<option value="역사">
			<option value="예술">
		</select>
		<input type="submit" value="submit"/>
	</form>
	<%
		String[] subject = request.getParameterValues("subject");
		if(subject!=null){
			for(int i=0;i<subject.length;i++){
				%>
				<%=subject[i] %>
				<%
			}
		}
	%>
	<%-- 4 --%>
	<form>
		<input type="text" name="name"/>
		<input type="text" name="email"/>
		<input type="checkbox" name="service" value="푸시알림"/>
		<input type="checkbox" name="service" value="이벤트알림"/>
		<input type="checkbox" name="service" value="자동로그인"/>
		<input type="submit" value="submit"/>
	</form>
	<%
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		
		String[] services = request.getParameterValues("service");
		if(name!=null){
			%>
			<h3><%=name %></h3>
			<%
		}
		if(email!=null){
			%>
			<h3><%=email %></h3>
			<%
		}
		if(services!=null){
			for(int i=0;i<services.length;i++){%>
				<h3><%=services[i]%></h3>
				<%
			}
		}
	%>
	<%-- 5 --%>
	<form>
		<input type="text" name="userName"/>
		<input type="checkbox" name="tech" value="파이썬"/>
		<input type="checkbox" name="tech" value="자바"/>
		<input type="checkbox" name="tech" value="C"/>
		<select name="certificate" multiple="multiple">
			<option value="정보처리기술사">
			<option value="정보처리기능사">
			<option value="정보처리산업기사">
			<option value="정보처리기사">
		</select>
		<input type="submit" value="submit"/>
	</form>
	<%
		String userName = request.getParameter("userName");
		String[] certificates = request.getParameterValues("certificate");
		String[] techs = request.getParameterValues("tech");
		if(userName!=null){
			%>
			<h3><%=userName %></h3>
			<%
		}
		if(techs!=null){
			for(int i=0;i<techs.length;i++){%>
				<h3><%=techs[i]%></h3>
				<%
			}
		}
		if(certificates!=null){
			for(int i=0;i<certificates.length;i++){%>
				<h3><%=certificates[i]%></h3>
				<%
			}
		}
	%>
	
</body>
<script type="text/javascript">
</script>
</html>