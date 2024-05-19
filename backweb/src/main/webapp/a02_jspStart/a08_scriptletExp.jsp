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
# 복잡한 요청값과 scriptlet 처리 순서
1. 최종 화면을 html로 만들기..
	1) form
	2) 요청값에 의한 결과 html
2. 요청값을 처리하기(scriptlet <%%>)
3. null check하기(scriptlet <%%>)
4. 숫자형 변환(scriptlet <%%>)
5. 화면(html)을 조건에 따라 불리 처리(html, scriptlet 구분하여 처리)


 --%>
<form>
	시작단수:<input type="number" name="start" value="2"/><br>
	마지막단수:<input type="number" name="end" value="9"/><br>
	<input type="submit" value="submit"/>
</form>
<%
	String startStr = request.getParameter("start");
	String endStr = request.getParameter("end");
	if(startStr!=null && endStr!=null && startStr!="" && endStr!=""){
		int start = Integer.parseInt(startStr);
		int end = Integer.parseInt(endStr);%>
		<table>
		<%
		for(int i=start;i<=end;i++){%>
			<tr><th><%=i %>단</th></tr>	
			<%
			for(int j=1;j<=9;j++){
			%>
			<tr><td><%=i %> * <%=j %> = <%=i*j %></td></tr>
		<%	}
		}	
		%>
		</table>
	<%
	}
%>
</body>
</html>