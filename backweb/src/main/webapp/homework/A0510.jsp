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
<%-- 1. 사용자 성별 입력 처리하기  --%>
	<form>
		<p>성별 입력</p>
		<select name="gender">
			<option value="women">여자</option>
			<option value="men">남자</option>
		</select>
		<input type="submit" value="입력완료"/>
	</form>
	<%
	String gender = request.getParameter("gender");
	if(gender != null){%>
		<h3>입력 나이: <%=gender %></h3>
	<%
	}
	%>
<%-- 2. 좋아하는 음료 선택하기 --%>
	<form>
		<p>좋아하는 음료 선택하기</p>
		콜라<input type="radio" name="drink" value="콜라"/>
		사이다<input type="radio" name="drink" value="사이다"/>
		물<input type="radio" name="drink" value="물"/>
		<input type="submit" value="입력완료"/>
	</form>
	<%
	String drink = request.getParameter("drink");
	if(drink != null){%>
	<h3>선호 음료: <%=drink %></h3>
	<%
	}
	%>
<%-- 3. 피드백 메시지 제출 --%>
	<form>
		<p>피드백 작성</p>
		<textarea name="feedback" rows="10" cols="50"></textarea><br>
		<input type="submit" value="입력완료"/>
	</form>
	<%
	String feedback = request.getParameter("feedback");
	if(feedback != null){%>
	<h3>피드백 내용: <%=feedback %></h3>
	<%
	}
	%>
</body>
<script type="text/javascript">
</script>
</html>