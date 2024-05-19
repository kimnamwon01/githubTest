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
<%--
# 다중행 입력 textarea
1. 요청데이터를 여러 행에 걸쳐서 입력할 때 사용!!
 --%>
 	<h2>일기쓰기</h2>
 	<form>
 		<p>오늘의 일기를 작성해주세요</p>
 		<input type="date" name="date01"/>
 		<textarea name="diaryEntry" rows="10" cols="50"></textarea><br>
 		<input type="submit" value="일기저장"/>
 	</form>
 	<form>
 		이름 : <input type="text" name="name"/> <br>
 		<p>방명록<br>
 		<textarea name="visitMemo" rows="10" cols="50"></textarea><br>
 		<input type="submit" value="작성"/>
 	</form>
 	
 	<%
 	String diaryEntry = request.getParameter("diaryEntry");
 	String date01 = request.getParameter("date01");
 	String name = request.getParameter("name");
 	String visitMemo = request.getParameter("visitMemo");
 	if(diaryEntry!=null){
 	%>
 	<div><h3><%=date01 %>/저장된 일기</h3><%=diaryEntry %></div>
 	<%
 	}
 	%>
 	<%
 	if(visitMemo!=null && name!=null){
 	%>
 	<div><h3><%=name %>/저장된 방명록</h3><%=visitMemo %></div>
 	<%
 	}
 	%>
 	
</body>
<script type="text/javascript">
</script>
</html>