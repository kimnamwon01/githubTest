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
		행:<input type="number" name="row"/>
		열:<input type="number" name="col"/>
		<input type="submit" value="테이블 만들기"/>
	</form>
	<%
	String colStr = request.getParameter("col");
	String rowStr = request.getParameter("row");
	if(colStr!=null && rowStr!=null){
		int col = Integer.parseInt(colStr);
		int row = Integer.parseInt(rowStr);
	%>	<table>
		<%
		for(int i=0;i<row;i++){
			%>
			<tr>
			<%
			for(int j=0;j<col;j++){
			%>
				<td><%=row %>행 <%=col %>열</td>
			<%
			}
			%>
			</tr>
			<%
		}
	}
	%>	</table>
</body>
</html>