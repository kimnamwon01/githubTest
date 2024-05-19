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
		출력할 단 수:<input type="number" name="dan"/>
		<input type="submit" value="계산"/>
	</form>
	<%
		String danStr = request.getParameter("dan");
	%>
	<%
		if(danStr!=null){
			int dan = Integer.parseInt(danStr);
			for(int i=1;i<=9;i++){%>
				<%=dan %> x <%=i %> = <%=dan*i %>
				<br>
				<%
			}
		}
	%>
	<form>
		물건명:<input type="text" name="pname"/>
		가격:<input type="number" name="pprice"/>
		개수:<input type="number" name="pcnt"/>
		<input type="submit" value="출력"/>
	</form>
	<%
		String pname = request.getParameter("pname");
		String ppriceStr = request.getParameter("pprice");
		String pcntStr = request.getParameter("pcnt");
	%>
	<%
		if(pname!=null && ppriceStr!=null && pcntStr!=null){
			int pprice = Integer.parseInt(ppriceStr);
			int pcnt = Integer.parseInt(pcntStr);%>
			<h1>물건명:<%=pname%></h1>
			<h2>가격:<%=pprice%>원</h2>
			<h3>개수:<%=pcnt%>개</h3>
			<h3>총가격:<%=pprice * pcnt %>원</h3>
		<table>
		<tr>
			<th>물건명</th>
			<th>가격</th>
			<th>개수</th>
			<th>총가격</th>
		</tr>
		<tr>
			<td><%=pname%></td>
			<td><%=pprice%></td>
			<td><%=pcnt%></td>
			<td><%=pprice * pcnt %></td>
		</tr>
	</table>
			<%
		}
	%>
</body>
</html>