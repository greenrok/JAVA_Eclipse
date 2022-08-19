<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Process</title>
</head>
<body>
	<h1>Process</h1>
	<%
	String id = request.getParameter("userID");
	String pwd = request.getParameter("pwd");
	// String a = request.getParameter("a");
	// System.out.println(id+","+pwd+","+a);
	if (id.equals("admin") && pwd.equals("1234")) {
		// response.sendRedirect("success.jsp");
	%>
	<!-- 아래는 액션태그 java 태그 밖에서 사용해야한다 -->
	<jsp:forward page="success.jsp"></jsp:forward>
	<%
	} else {
	// response.sendRedirect("fail.jsp");
	%>
	<jsp:forward page="fail.jsp"></jsp:forward>
	<%
	}
	%>
</body>
</html>