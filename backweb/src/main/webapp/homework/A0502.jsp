<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action = "A0502_2.jsp">
		이름:<input type="text" name="name"/><br>
		이메일:<input type="email" name="email"/><br>
		나이:<input type="text" name="age"/><br>
		<input type = "submit" value="전송"/>
	</form>
	<form action = "A0502_2.jsp">
		당신은 여름을 좋아합니까?<input type="checkbox" name="like" value="Summer"/><br>
		당신은 산책을 좋아합니까?<input type="checkbox" name="like" value="Hiking"/><br>
		당신은 등산을 좋아합니까?<input type="checkbox" name="like" value="Walking"/><br>
		<input type = "submit" value="전송"/>
	</form>
	<form action = "A0502_2.jsp">
		ID:<input type="text" name="id"/><br>
		비밀번호:<input type="password" name="pwd"/><br>
		포인트:<input type="text" name="pt"/><br>
		<input type = "submit" value="전송"/>
	</form>
	<form action = "A0502_2.jsp">
		업로드할 파일 선택<input type="file" name="file"><br>
		<input type = "submit" value="파일업로드"/>
	</form>
	<form action = "A0502_2.jsp">
		당신은 영화 감상을 좋아합니까?<input type="checkbox" name="hobby" value="영화 감상"/><br>
		당신은 독서를 좋아합니까?<input type="checkbox" name="hobby" value="독서"/><br>
		당신은 운동을 좋아합니까?<input type="checkbox" name="hobby" value="운동"/><br>
		<input type = "submit" value="전송"/>
	</form>
</body>
</html>