<%@page import="lesson.gntp.util.ConnectionManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	// Test
	Connection conn = ConnectionManager.getConnection();
	if (conn != null) {
		System.out.println("success");
		conn.close();
	} else {
		System.out.println("failed");
	}
	
	
%>


</body>
</html>