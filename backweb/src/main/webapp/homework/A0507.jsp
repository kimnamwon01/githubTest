<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/backweb/a00_com/a01_common.css" >
<title>Insert title here</title>
<style type="text/css">
img{display:none;}
</style>
</head>
<body>
	<form>
		<h2>1번</h2>
		2024년 5월<br>
		일:<input type="number" name="day"/>
		<h2>2번</h2>
		4+5=<input type="number" name="qt1"/>
		4-5=<input type="number" name="qt2"/>
		4x5=<input type="number" name="qt3"/>
		4%5=<input type="number" name="qt4"/>
		"4"+5=<input type="number" name="qt5"/>
		<h2>3번</h2>
		자연<input type="checkbox" name="image" value="nature">
		도시<input type="checkbox" name="image" value="city">
		사람<input type="checkbox" name="image" value="human">
		<h2>4번</h2>
		색상입력:<input type="text" name="color"/>
		<input type="submit" value="submit"/>
	</form>
	<%
		String dayStr = request.getParameter("day");
		String qt1Str = request.getParameter("qt1");
		String qt2Str = request.getParameter("qt2");
		String qt3Str = request.getParameter("qt3");
		String qt4Str = request.getParameter("qt4");
		String qt5Str = request.getParameter("qt5");
		String[] images = request.getParameterValues("image");
		
	%>
	<%--1번 --%>
	<%
		if(dayStr!=null){
			int day = Integer.parseInt(dayStr);
			if(day %7 == 4 || day%7 == 5){%>
				<h3><%=day %>일은 주말입니다</h3>
			<%
			}else{%>
				<h3><%=day %>일은 평일입니다</h3>
			<%	
			}
		}
	%>
	<%--2번 --%>
	<%
		if(qt1Str!=null&&qt2Str!=null&&qt3Str!=null&&qt4Str!=null&&qt5Str!=null&&
				qt1Str!=""&&qt2Str!=""&&qt3Str!=""&&qt4Str!=""&&qt5Str!=""){
			int qt1 = Integer.parseInt(qt1Str);
			int qt2 = Integer.parseInt(qt2Str);
			int qt3 = Integer.parseInt(qt3Str);
			int qt4 = Integer.parseInt(qt4Str);
			int qt5 = Integer.parseInt(qt5Str);
			if(qt1 == 9){%>
				<h3>1번 문제 정답입니다</h3>
				<%
			}else{%>
				<h3>1번 문제 오답입니다</h3>
			<%}
			if(qt2 == -1){%>
				<h3>2번 문제 정답입니다</h3>
			<%
			}else{%>
				<h3>2번 문제 오답입니다</h3>
			<%}
			if(qt3 == 20){%>
				<h3>3번 문제 정답입니다</h3>
			<%
			}else{%>
				<h3>3번 문제 오답입니다</h3>
			<%}
			if(qt4 == 4){%>
				<h3>4번 문제 정답입니다</h3>
			<%
			}else{%>
				<h3>4번 문제 오답입니다</h3>
			<%}
			if(qt5 == 45){%>
				<h3>4번 문제 정답입니다</h3>
			<%
			}else{%>
				<h3>4번 문제 오답입니다</h3>
			<%}
		}
	%>
	<%--3번 --%>
	<img src="nature1.jpg" class="nature"/>
	<img src="nature2.jpg" class="nature"/>
	<img src="city1.jpg" class="city"/>
	<img src="city2.jpg" class="city"/>
	<img src="human1.jpg" class="human"/>
	<img src="human2.jpg" class="human"/>
	<%
	if(images!=null){%>
		<script type="text/javascript">
			var natureImg = document.querySelectorAll(".nature");
			var cityImg = document.querySelectorAll(".city");
			var humanImg = document.querySelectorAll(".human");
		<%
			for(String img:images){
				if(img.equals("nature")){%>
					natureImg.forEach(function(img){
						img.style.display = "block";
					});<%
				}
				if(img.equals("city")){%>
					cityImg.forEach(function(img){
						img.style.display = "block";
					});<%
				}
				if(img.equals("human")){%>
					humanImg.forEach(function(img){
						img.style.display = "block";
					});<%
				}
			}%>
		</script>
	<%}%>
</body>

</html>