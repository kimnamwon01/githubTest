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
		입장할 영화 제목:<input type="text" name="mname"/>
		입장할 인원수:<input type="text" name="cnt"/>
		입장료(1인):<input type="text" name="pay"/>
		<input type="submit" value="buy ticket"/>
	</form>
	<% 
		String mname = request.getParameter("mname");
		String cntStr = request.getParameter("cnt");
		String payStr = request.getParameter("pay");
	%>
	
		<h3>구매한 영화 정보</h3>
	<%
		if(mname!=null && cntStr!=null && payStr!=null){
			int cnt = Integer.parseInt(cntStr);
			int pay = Integer.parseInt(payStr);
	%>	
			<h3>제목:<%=mname %></h3>
			<h3>입장인원:<%=cnt %>명</h3>
			<h3>총비용:<%=cnt*pay %>원</h3>
	<%
		}
	%>	
	
</body>
</html>