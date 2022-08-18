<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	System.out.println(id+","+pwd);
%>
</body>
</html>