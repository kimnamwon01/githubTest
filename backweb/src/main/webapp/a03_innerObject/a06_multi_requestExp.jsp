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
	<form>
	<%
	String [][] fruits = {{"사과", "바나나", "딸기"},{"3000", "4000", "5000"}};
	for(int i=0;i<fruits[0].length;i++){%>
		<%=fruits[0][i]%>(<%=fruits[1][i] %>원) : <input type="text" name="cnt" value="0"/>
	<%	
	}
	%>
	<input type="submit" value="총비용확인"/>
	</form>
	<%
	String[] cnt = request.getParameterValues("cnt");
	int tot=0;
	if(cnt!=null){
		for(int i=0;i<cnt.length;i++){
			int price = Integer.parseInt(fruits[1][i]);
			int counter = Integer.parseInt(cnt[i]);
			tot += price * counter;%>
			<%=fruits[0][i] %>: <%=counter%>개 
			<%=price * counter%>원 <br>
		<%	
		}
		%>
		<br>
		총비용: <%=tot %>원
	<%
	}
	%>
</body>
<script type="text/javascript">
</script>
</html>