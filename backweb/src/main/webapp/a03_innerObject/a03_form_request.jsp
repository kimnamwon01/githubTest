<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css">
<title>Insert title here</title>
</head>
<body>
<%--
# form 하위 요소객체 request 요청값 처리 예제
1. 기본 단일 데이터 처리(String str = requst.getParameter("요청키"))
    1) input type="text" 형식으로 요청값을 보내는 형태는 기본적으로 단열 데이터를 처리한다.
    2) input type="radio" name="동일이름"
       input type="radio" name="동일이름"
       이 내용을 name값이 동일한 것 중에 하나만 선택되어지므로 단일값처리한다.
    3) select
         option value="데이터1"
         option value="데이터2"
         option value="데이터3"
       기본옵션은 여러개 중에 단일 선택하므로 단일값 전송
    4) textarea
    	다중행을 단일값으로 전송한다.
    ps) type="file" 내용을 client(브라우저)에서 server(tomcat)으로 stream으로
    	파일을 전송하여 처리한다.
       
2. 다중 데이터 처리(String []arry = request.getParameterValues("다중요청키")) 
    1) input type="" name="요청키"
       input type="" name="요청키"
       input type="" name="요청키"
       위와 같이 type이 radio 이외에는 name값이 동일하며 여러 개인 경우, 다중의 요청키에 해당하는
         값을 배열로 요청값을 받는다.
    2) input type="checkbox" name="요청키"
       input type="checkbox" name="요청키"
       input type="checkbox" name="요청키"
       type="checkbok"인 경우, checked가 된 것만 배열로 요청값을 받을 수 있다.
    3) select multiple
         option value="데이터1"
         option value="데이터2"
         option value="데이터3"
       select의 속성이 multiple인 경우 ctrl로 선택되어진 option값을 배열로 전송받을 수 있다.
   
       --%>
      
       <h2>radio를 통한 단일 선택 form데이터 전송 처리.</h2>
       <form>
       	<input type="radio" name="season" value="봄">봄<br>
       	<input type="radio" name="season" value="여름">여름<br>
       	<input type="radio" name="season" value="가을">가을<br>
       	<input type="radio" name="season" value="겨울">겨울<br>
       	<input type="submit"/>
       </form>
       <h2>radio를 통한 단일 선택 form데이터 전송 처리.</h2>
       <form>
       	<input type="radio" name="lunch" value="제육">제육<br>
       	<input type="radio" name="lunch" value="짜장">짜장<br>
       	<input type="radio" name="lunch" value="햄버거">햄버거<br>
       	<input type="radio" name="lunch" value="돈까스">돈까스<br>
       	<input type="submit"/>
       </form>
       <%
       String season = request.getParameter("season");
       if(season == null)	season ="";
       %>
   		<h2>선택한 계절:<%=season.equals("")?"":season %></h2>
    	<%
    	String lunch = request.getParameter("lunch");
        if(lunch == null)	lunch ="";
        %>
        <h2>선택한 점심:<%=lunch.equals("")?"":lunch %></h2>

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
</body>
</html>