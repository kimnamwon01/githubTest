<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="backweb.vo.*"   
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.js" type="text/javascript"></script>
<script type="text/javascript">
   $(document).ready(function(){
      $("h2").text("시작");
      
   })
</script>
</head>
<body>
<%--
# 페이지 모튤화 및 요청 흐름 처리
1. 화면을 구성할 때는 여러가지 설정이 필요한 경우도 있고, 공통으로 처리하는 페이지가
    필요할 떄도 많다. 공통 처리 내용에 대하여 따로 JSP를 선언하고 활용한다면
    보다 효과적으로 코드의 변경/수정/추가 처리가 가능한다.
    ex) 공통되는 화면처리, 공통되는 session처리, 공통되는 css/js/java 변수 처리
2. 페이지 모듈화의 종류
    1) 클라이언트단 프로그램
        igrame : javascript/html로 화면으로 link로 호출 하요 처리할 수 있다.
    2) 서버단 프로그램
       - <jsp:include page="페이지명"/>
           이렇게 처리하는 것은 포함된 페이지가 jsp에서 class로 따로 만들어져서 호출하는
           형식이다. 그래서 데이터를 넘겨줄 때는 jsp vs jsp로 넘겨주는 형식인
           rquest.getParameter()나 session을 활용하여야 한다.          
       - <%@ include file="페이지명"/>
          이 방식을 해당 페이지명에 있는 코드와 함께 전체적으로 class를 만드는 방식이다.
          결국은 하나의 class로 만들어지기에 해당 페이지에서 선언한 변수나 코드는
          선언 순서에 따라 같은 페이지에서 호출하는 것과 동일하게 적용된다.
--%>
   <h2></h2>

   
</body>
</html>