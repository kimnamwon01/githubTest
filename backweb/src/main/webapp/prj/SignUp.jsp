<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
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
		left: 36%;
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
<%request.setCharacterEncoding("utf-8"); %>
<jsp:include page="top.jsp"/>
<div id="login">
	<div id="loginForm">
		<h3>회원가입</h3>
		<form>
			<h4>이름</h4>
			<input type="text" name="name"/>
			<h4>생년월일</h4>
			<input type="text" name="birth" value="2000-12-31"/>
			<h4>이메일</h4>
			<input type="text" name="email"/>
			<h4>비밀번호</h4>
			<input type="text" name="pwd"/>
			<h4>비밀번호 확인</h4>
			<input type="text" name="pwdck"/><br><br><br>
			<input type="submit" value="회원가입"/>
		</form>
		<br><br><br><br>
		<button onclick="location.href='Login.jsp'">로그인 페이지로</button>
	</div>
</div>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	try { 
		String name = request.getParameter("name");
		String birth = request.getParameter("birth");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String pwdck = request.getParameter("pwdck");
		if(name!=null&&birth!=null&&email!=null&&pwd!=null&&pwdck!=null){
			if(name==""||birth==""||email==""||pwd==""||pwdck==""){%>
				<script>alert("모든 입력사항에 입력하시기 바랍니다.");</script>
			<%}else if(!pwd.equals(pwdck)){%>
			<script>alert("비밀번호가 일치하지 않습니다.");</script>
			<%}else{
					Class.forName("oracle.jdbc.OracleDriver");
					conn = DriverManager.getConnection(
							"jdbc:oracle:thin:@localhost:1521:xe",
							"java",
							"oracle"
							);
					String sql = "" + 
						"INSERT INTO users (userid, username, userbirth, userpassword) "
								+ "VALUES (?, ?, ?, ?)";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, email);
					pstmt.setString(2, name);
					pstmt.setString(3, birth);
					pstmt.setString(4, pwd);
					int affectedRows = pstmt.executeUpdate();
					if (affectedRows > 0){%>
						<script>alert("회원가입이 완료되었습니다.");</script>
					<%}
					if (pstmt != null)	pstmt.close();
					if (conn != null) conn.close();
					if (affectedRows > 0)%>
					
					<script>window.location.href="Login.jsp"</script>
					<%
				} 
			}
		} catch (SQLException e) {
			if (e.getErrorCode() == 1) { %>
				<script>alert("이미 존재하는 이메일입니다.");</script>
			<% } else {
				e.printStackTrace();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
%>
</body>
<script type="text/javascript">
</script>
</html>