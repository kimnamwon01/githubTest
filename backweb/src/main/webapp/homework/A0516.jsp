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
<%--jsp 문제 --%>
<%-- 1 --%>
<%--inputName.jsp --%>
<form>
	이름:<input type="text" name="name"/>
	<input type="submit" value="submit"/>
</form>
<%
String name = request.getParameter("name");
if(name!=null){
	session.setAttribute("A0516_name", name);
}
%>
<%-- greetUser.jsp --%>
<h3><%=session.getAttribute("A0516_name") %>님 환영합니다.</h3>

<%-- 2 --%>
<%
 Integer visitCounts = (Integer) session.getAttribute("A0516_count");
 if(visitCounts == null){
    visitCounts = 0;
 }
 visitCounts++;
 session.setAttribute("A0516_count", visitCounts);
 %>
 
<%-- visitCount.jsp --%>
<h2>방문자수: <%=session.getAttribute("A0516_count") %></h2>
<%-- 3 --%>
<%-- selectLanguage.jsp --%>
<form>
	<select name="lang">
		<option value="English">영어</option>
		<option value="Chinese">중국어</option>
		<option value="Korean">한국어</option>
	</select>
	<input type="submit" value="submit"/>
</form>
<%
String lang = request.getParameter("lang");
session.setAttribute("A0516_lang", lang);
%>
<%-- displayMessage.jsp --%>
<%

String userLang = (String)session.getAttribute("A0516_lang");
if(userLang!=null){
	if(userLang.equals("English")){%>
		Hello
	<%}else if(userLang.equals("Chinese")){%>
		Ni hao
	<%}else {%>
		안녕하세요
	<%}
}
%>
</body>
<script type="text/javascript">
</script>
</html>