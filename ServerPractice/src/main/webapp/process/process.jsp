<%@page import="member.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>process</title>
</head>
<body>
<!-- java  -->
<%
	String id = request.getParameter("userID");
	String pwd = request.getParameter("pwd");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	
	MemberDAO dao = new MemberDAO();
	boolean flag = false; 
	
	flag = dao.selectMember(id, pwd, name, email);

	if (flag == true) {
		response.sendRedirect("../link/success.jsp");
	} else {
		response.sendRedirect("../link/failed.jsp");
	}

		
%>
</body>
</html>