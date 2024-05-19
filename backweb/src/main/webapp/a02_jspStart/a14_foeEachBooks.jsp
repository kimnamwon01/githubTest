<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "backweb.vo.Book"
    import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
</head>
<body>
<%
	ArrayList<Book> books = new ArrayList<Book>();
	books.add(new Book("어린왕자","생텍쥐페리","동아일보",31000));
	books.add(new Book("어린왕자2","생텍쥐페리2","동아일보2",32000));
	books.add(new Book("어린왕자3","생텍쥐페리3","동아일보3",33000));
%>
	<table>
		<tr><th>도서명</th><th>저자</th><th>출판사</th><th>가격</th></tr>
		<%
		for(Book book:books){%>
			<tr><td><%=book.getName() %></td><td><%=book.getWriter() %></td>
			<td><%=book.getComp() %></td><td><%=book.getPay() %></td></tr>
		<%}
		%>
	</table>
</body>
</html>