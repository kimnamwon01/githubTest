<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<jsp:include page="top.jsp"/>
<br><br><br>
<%
String userEmail = "user-email";
String userName = "user-name";
String rsvInfo = "reservation-info";
String cpnInfo = "coupon-info";
for(int i=0;i<10;i++){%>
	<%=userEmail%>  <%=userName %>
	<%=rsvInfo %>  <%=cpnInfo %>  <button>x</button><br>
<%
}
%>

</body>
<script type="text/javascript">
</script>
</html>