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
		가격:<input type="number" name="price"/>
		<input type="submit" value="전송"/>
	</form>
	<h3>조건문</h3>
	<%
	String priceStr = request.getParameter("price");
	if(priceStr!=null){
		int price = Integer.parseInt(priceStr);
		if(price>=3000){%>
			<h3>3000원 이상!</h3>
		<%
		}else{%>
			<h3>3000원 미만!</h3>
		<%
		}
	}
	%>
	<h3>반복문</h3>
	<% int ranGugu = (int)(Math.random()*8+2); %>
	<table>
	 	<%
	 	for(int i=2;i<=ranGugu;i++){
	 	%>	<tr><th><%=i %>단</th></tr>
	 		<%
	 		for(int j=1;j<=9;j++){%>
				<tr><td><%=i%> x <%=j%> = <%=i*j %></td>
			<%
	 		}
			%>
			</tr>
		<%
	 	}
		%>
	</table>
</body>
</html>