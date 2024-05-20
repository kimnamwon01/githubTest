<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
td:nth-child(5){
	text-align: center;
}
</style>
</head>
<body>
<jsp:include page="top.jsp"/>
<br><br><br>
<h1>회원 목록</h1>
<table border="1">
	<thead>
		<tr>
			<td>이름</td><td>생일</td><td>아이디</td><td>비밀번호</td><td>계정삭제</td>
		</tr>
	</thead>
	<tbody>
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:xe",
			"java",
			"oracle"
		);
		String sql = "SELECT username, userbirth, userid, userpassword FROM users";
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		
		while (rs.next()){
			String name = rs.getString("username");
			String birth = rs.getString("userbirth");
			String id = rs.getString("userid");
			String pwd = rs.getString("userpassword"); %>
		<tr> <td><%=name %></td><td><%=birth %></td><td><%=id %></td>
		<td><%=pwd %></td><td><button>x</button></td> </tr>
		<%
		}
	} catch (Exception e) {
		e. printStackTrace();
	} finally {
		try {
			if (rs != null) rs.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
		} catch (SQLException e) {
            e.printStackTrace();
        }
	}
	%>
	</tbody>	
</table>
</body>
<script type="text/javascript">
</script>
</html>