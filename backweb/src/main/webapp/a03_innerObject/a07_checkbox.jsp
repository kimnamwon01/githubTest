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
	<h2>관심사 선택</h2>
	<form>
		<input type="checkbox" name="interest" value="음악">음악<br>
		<input type="checkbox" name="interest" value="운동">운동<br>
		<input type="checkbox" name="interest" value="여행">여행<br>
		<input type="checkbox" name="interest" value="기타">기타<br>
		<input type="submit" value="선택"><br>
	</form>
	<%
	String[] interests = request.getParameterValues("interest");
	
	if(interests!=null){
		for(String interest:interests){
			%>
			<h3><%=interest %></h3>
			<%
		}
	}
	%>
	<h2>팀프로젝트 역할 선택</h2>
	<form>
		<input type="checkbox" name="role" value="개발자">개발자<br>
		<input type="checkbox" name="role" value="화면디자이너">화면디자이너<br>
		<input type="checkbox" name="role" value="화면단설계">화면단설계<br>
		<input type="checkbox" name="role" value="프로젝트 매니저">프로젝트 매니저<br>
		<input type="checkbox" name="role" value="DB설계자">DB설계자<br>
		<input type="submit" value="선택"><br>
	</form>
	<%
	String[] roles = request.getParameterValues("role");
	
	if(roles!=null){
		for(String role:roles){
			%>
			<h3><%=role %></h3>
			<%
		}
	}
	%>
	<h2>콤보박스 다중 요청값 처리..</h2>
	<h3>국가선택</h3>
	<form>
		<label for="countries">국가선택:</label>
		<select name="countries" multiple="multiple" id="contries" size="3">
			<option value="USA">미국</option>
			<option value="UK">영국</option>
			<option value="France">프랑스</option>
			<option value="Germany">독일</option>
			<option value="KOR">한국</option>
		</select>
		<input type="submit" value="국가선택"/>
	</form>
	<%
	String countries[] = request.getParameterValues("countries");
	if(countries!=null){
		for(String country:countries){
		%>
			<h3><%=country %></h3>
		<%	
		}
		
	}
	%>
</body>
<script type="text/javascript">
</script>
</html>