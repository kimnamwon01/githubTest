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
	http://localhost:7080/backweb/a03_innerObject/a08_requestValue.jsp?name=
	홍길동&age=30&pname=사과&price=3000	
	1. 요청값 url에서의 pattern과 그 결과가 화면에서 어떤 코드를 
		처리했을 때 출력이 되는지 확인/토론
	2. url 페이지: a08_requestValue.jsp
		데이터 전송: ?name=홍길동&age=30&pname=사과&price=2000
	==> method get방식으로 페이지와 데이터를 전송하는 것이다.
	 --%>

	<h2>단일 요청값</h2>
	<a href="a08_requestValue.jsp?name=
	마길동&age=30&pname=오렌지&price=1500">페이지와 요청값 전달..</a>
	<h3><%=request.getParameter("name") %></h3>
	<h3><%=request.getParameter("age") %></h3>
	<h3>물건명: <%=request.getParameter("pname") %></h3>
	<h3>가격: <%=request.getParameter("price") %>원</h3>
	<h2>form 단일 요청값</h2>
	<form>
		이름:<input type="text" name="name"/>
		나이:<input type="text" name="age"/>
		물건명:<input type="text" name="pname"/>
		물건가격:<input type="text" name="price"/>
		<input type="submit" value="submit"/>
	</form>
	<%--
	action 속성값이 없으면 현재 페이지에 요청값을 전달. action값이 있으면
	해당 페이지에 요청값을 전달..
	 --%>
	<h2>form 단일 요청값(다른 페이지에 전송)</h2>
	<form action="a09_requestData.jsp">
		이름:<input type="text" name="name"/>
		나이:<input type="text" name="age"/>
		물건명:<input type="text" name="pname"/>
		물건가격:<input type="text" name="price"/>
		<input type="submit" value="submit"/>
	</form>
	
	<%--
	form에 어떤 속성값이 위 요청값을 전달하는 url을 만들어 주는지 확인,
	
	 --%>
	<h2>form 단일 요청값(a10 다른 페이지에 전송)</h2>
	<form action="a10_requestData.jsp">
		회원아이디:<input type="text" name="memberId"/>
		회원명:<input type="text" name="mname"/>
		회원포인트:<input type="text" name="mpoint"/>
		<input type="submit" value="submit"/>
	</form>
	<h2 onclick="sendData()">데이터를 js에 의해 전송</h2>
	회원아이디:<input type="text" id="memberId"/><br>
	회원명:<input type="text" id="mname"/><br>
	회원포인트:<input type="text" id="mpoint"/><br>
	
	
	
</body>
<script type="text/javascript">
function sendData(){
	var memIdVal = document.querySelector("#memberId").value;
	var mname = document.querySelector("#mname").value;
	var mpoint = document.querySelector("#mpoint").value;
	location.href = "a10_requestData.jsp?memberId="+memIdVal+"&mname="+mname+"&mpoint="+mpoint;
}
</script>
</html>