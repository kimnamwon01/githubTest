<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
<%--
# 요청값을 통한 데이터 전송과, 전송된 데이터를 처리하는 request객체,
이 request 값에 따른 조건문과 반복문 처리..

1. 요청값에 따른 조건문 처리
2. 요청값에 따른 반복문 처리..
3. 요청값에 따른 조건/반복문 처리..


# 요청값에 따른 조건문 처리
1. form에 입력되는 데이터에 따라 여러가지 요청값을 서버에 전달하는 형식을 만들 수 있고,
	그 데이터에 따라서 조건문으로 처리할 수 있다.
2. 전달하는 데이터 type
	1) 일단, 모든 요청데이터는 문자열이다. 데이터를 입력하지 않고 요청하는 경우에 null로
		요청값이 전달된다.
	2) 이렇게 받는 문자열데이터를 숫자, boolean 등 type을 바꾸어서 처리할 때가 있는데,
		그 때, Integer.parseInt(), Double.parseDouble() 등을 활용한다.
	3) 물론 초기화면과 요청되는 데이터를 받는 페이지가 같을 때, 반드시 if(요청값!=null)
		전제 조건으로 하여야지 에러가 발생하지 않는다.
 --%>
</body>
</html>