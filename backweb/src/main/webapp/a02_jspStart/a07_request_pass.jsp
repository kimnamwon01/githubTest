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
		점수를 입력하세요:<input type="number" name="pt"/><br>
		<input type="submit" value="합격 여부 조회"/>
	</form>
	<%
		String ptStr = request.getParameter("pt");
	%>
	<%
		if(ptStr != null){
			int pt = Integer.parseInt(ptStr);
	%>
			<h3>합격 여부</h3>
	<%
			if(pt>=60){
	%>
				<h3>합격입니다.</h3>
	<%			
			}
			else{
	%>
				<h3>불합격입니다 .</h3> 
	<%
			}
		}
	%>
</body>
</html>