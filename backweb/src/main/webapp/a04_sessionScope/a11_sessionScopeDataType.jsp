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
<%
// 단일 데이터 저장..
session.setAttribute("name", "홍길동");
session.setAttribute("age", 25);
// 배열 데이터 할당.
session.setAttribute("points", new int[]{70, 80, 90});

// 호출 : 해당 데이터 유형으로 가져올 때는 typecasting 하여야 한다.
// 	why? because : 기본 유형이 Object유형이기에 형변환 필요하다.
String name = (String)session.getAttribute("name");
// java Wrapper 클래스로 기본 데이터유형으로 auto Unboxing이 되기에 처리 가능하다.
int age = (Integer)session.getAttribute("age");
// 배열형 데이터 호출하기.
int[] points = (int[])session.getAttribute("points");
%>
<h2>기본 데이터 호출</h2>
<h3><%=name %></h3>
<h3><%=age %></h3>
<h2>배열 호출</h2>
<%
for(int point:points){%>
	<h3><%=point%></h3>
	<%
}
%>
</body>
<script type="text/javascript">
</script>
</html>