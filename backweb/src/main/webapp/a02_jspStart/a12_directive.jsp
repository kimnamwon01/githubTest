<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "backweb.vo.Student"
    import = "backweb.vo.Person"
    import = "backweb.vo.Product"
    import = "java.util.List"
    import = "java.util.ArrayList"
    %>
    
<%
	List<Person> plist = new ArrayList<Person>();
	List<Product> proList = new ArrayList<Product>();
	plist.add(new Person("마길동", 25, "서울"));
	plist.add(new Person("오길동", 27, "수원"));
	plist.add(new Person("신길동", 28, "대전"));
	proList.add(new Product("청소기", 500000, 3));
	proList.add(new Product("자전거", 300000, 20));
	proList.add(new Product("색연필", 5000, 300));
	for(Person p:plist){
		System.out.print(p.getName()+"\t");
		System.out.print(p.getAge()+"\t");
		System.out.print(p.getLocate()+"\t");
		System.out.println();
	}
	
	Student st = new Student(1, "홍길동", 70, 80, 90);
	Person ps = new Person("김길동", 20, "수원");
	
	
%>
<%--
	<body>
		<h2>번호:<%=st.getNo()%></h2>
		<h2>이름:<%=st.getName()%></h2>
		<h2>국어:<%=st.getKor()%></h2>
		<h2>영어:<%=st.getEng()%></h2>
		<h2>수학:<%=st.getMath()%></h2>
	</body>
 --%>
<%--
# directive(디렉티브)
1. jsp 페이지에 상단에 설정 정보를 지정하는 부분
2. 디렉티브 구문
	<% 디렉티브 속성=속성값, ... %>
3. 디렉티브의 종류
	1) page : jsp페이지에 대한 정보를 지정, 문서의 타입, 출력 형식, 버퍼의 
		크기, 에러페이지 등 대부분 페이지에 대한 정보 지정
		주요 속성
			contentType : jsp가 생성할 문서의 타입을 지정
			import : jsp 페이지에서 사용할 자바 클래스를 지정
			session : jsp 페이지가 세션을 사용할 지 여부 지정
			info : jsp페이지에 대한 설명을 입력
			errorPage : 에러가 발생할 때, 보여 줄 페이지 지정
			isErrorPage : 해당 페이지가 에러를 처리할 때 출력할 페이지인지 여부를 지정
	2) taglib : 사용할 태그 라이브러리를 지정
			보통 jsp에서 jstl을 설정한다.
			request.getParameter("요청키") ==> ${param.요청키}
			<%
			for(Person p : plist){
			%>
				<%=p.getName()%>
			<%
			}
			%>
			==>
			<c:forEach var="p" items="${plist}">
				${p.name}
			</c:>
	3) include : 다른 문서를 포함 할 때, 설정.
		css/js 외부 페이지 호출, 화면 구현 자체를 외부 jsp 페이지 호출 하여 처리할 때 사용..
		주의) iframe(front단), jsp include(back단) 호출하여 처리됨..
	
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
	<h2>번호:<%=st.getNo()%></h2>
	<h2>이름:<%=st.getName()%></h2>
	<h2>국어:<%=st.getKor()%></h2>
	<h2>영어:<%=st.getEng()%></h2>
	<h2>수학:<%=st.getMath()%></h2><br>
	
	<h2>이름:<%=ps.getName()%></h2>
	<h2>나이:<%=ps.getAge()%></h2>
	<h2>거주지:<%=ps.getLocate()%></h2><br>
	
	<h2>Person 객체들</h2>
	<table>
		<tr><th>이름</th><th>나이</th><th>사는 곳</th></tr>
		<%
			for(Person p:plist){%>
				<tr>
					<td><%=p.getName() %></td>
					<td><%=p.getAge() %></td>
					<td><%=p.getLocate() %></td>
				</tr>
		<%
			}
		%>
	</table><br>
	<h2>Product 객체들</h2>
	<table>
		<tr><th>물건명</th><th>가격</th><th>개수</th></tr>
		<%
			for(Product p:proList){%>
				<tr>
				<td><%=p.getPname()%></td>
				<td><%=p.getPprice()%></td>
				<td><%=p.getPcnt()%></td>
				</tr>
		<%
			}
		%>
	</table>
</body>
</html>