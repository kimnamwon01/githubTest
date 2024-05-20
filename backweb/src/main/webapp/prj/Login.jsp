<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#login{
		text-align: center;
	}
	#loginForm{
		width:30%; height:50%;
		position: absolute;
		left: 35%;
		text-align: left;
	}
	#loginForm input[type=text]{
		width: 93%;
		height: 20%;
		background: lightgray;
		border: none;
		padding: 12px;
	}
	#loginForm input[type=submit]{
		background-color: lightblue;
		color: white;
		border: none;
		width: 100%;
		resize: vertical;
		padding: 12px;
	}
	#loginForm input[type=submit]:hover{
		cursor: pointer;
	}
	#loginForm button{
		background-color: white;
		border: none;
		width: 100%;
	}
	#loginForm button:hover{
		cursor: pointer;
	}
</style>
</head>
<body>
<jsp:include page="top.jsp"/>
<div id="login">
<div id="loginForm">
	<h3>로그인</h3>
	<form>
		<h4>이메일</h4>
		<input type="text" name="email"/>
		<h4>비밀번호</h4>
		<input type="text" name="pwd"/><br><br><br>
		<input type="submit" value="로그인"/>
	</form>
	<br><br><br><br>
	<button onclick="location.href='SignUp.jsp'">회원가입</button>
	<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		conn = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe",
                "java",
                "oracle"
		);
		
		String sql = "SELECT userid, userpassword, username FROM users WHERE userid=?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, email);
		rs = pstmt.executeQuery();
		
		
		
		if(email!=null&&pwd!=null){
			if(email.isEmpty()||pwd.isEmpty()){%>
			<script>alert("모든 입력 칸을 채워주세요");</script>
			<%} else if(email.equals("himan")&&pwd.equals("7777")){%>
			<script>window.location.href = "Manager.jsp"</script>
			<%	session.setAttribute("email", "himan"); 
			} else if(rs.next()){
				String sPwd = rs.getString("userpassword");
				String username = rs.getString("username");
				if(pwd.equals(sPwd)){
				session.setAttribute("username", username);%>
				<script>window.location.href = "Main.jsp";</script>
				<%}else{%>
				<script>alert("아이디/비밀번호가 존재하지 않습니다.")</script>
			<%}
			} else { %>
				<script>alert("아이디/비밀번호가 존재하지 않습니다.")</script>
			<% }
		}
	} catch (Exception e) {
		e.printStackTrace();
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
</div>
</div>
</body>
<script type="text/javascript">
</script>
</html>