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
		구매할물건:<input type="text" name="pname"/>
		개수:<input type="text" name="pcnt"/>
		<input type="submit" value="구매"/>
	</form>
	<%
		String pname = request.getParameter("pname");
		String pcnt = request.getParameter("pcnt");
		if(pname!=null && pname!=""){ // 초기 요청값이 없을 때와 요청값이 있을 때를 구분하기 위한 처리..
	%>
			<h3>물건명:<%=pname %></h3>
	<%
		}
	%>
	<%
		if(pcnt!=null && pcnt!=""){
	%>
			<h3>개수:<%=pcnt %></h3>
	<%
		}
	%>
</body>
</html>