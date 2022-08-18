<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.Random" %>
<!-- page 환경정보 설정 // 언어 : 자바, 내용 : html, 인코딩 : UTF-8-->    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Page</title>

<style>
	span {
		color: blue;
		font-size: 40px;
	}
</style>
</head>
<body>
<h1>Welcome!</h1>
<h2>
<%
	// 이 코드를 실행하면 console 창에만 시간이 나타나고 web browser에는 나타나지 않는다.
	Date date = new Date();
	String now = date.toLocaleString();
	// System.out.println(now);	// console에 출력
	// 그래서 java를 브라우저로 연결하기 위해 stream을 연다
	out.println(now);			// 브라우저에 출력
	out.print("<br>");
	
	// 해당 페이지를 요청할 때 마다 격언을 매번 다르게 보여주는 코드 작성
	ArrayList<String> quote = new ArrayList<>();
	String[] quote1 = {
			"소년이여 꿈을 가져라.",
			"해뜨기 전이 가장 어둡다.",
			"공부만 하고 놀지 않으면 바보가 된다",
			"피할 수 없다면 즐겨라.",
			"내일은 내일의 태양이 뜬다."
	};
	
	Random rd = new Random();
	// out.print(quote1[rd.nextInt(5)]);
	
	
%>
</h2>
<!-- 아래 코드는 출력 전용 코드 / 출력결과의 css는 style 태그로 -->
<span><%=quote1[rd.nextInt(5)] %></span>
</body>
</html>