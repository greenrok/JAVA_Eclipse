<%@page import="member.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete Member</title>
</head>
<body>
<%
	String id = request.getParameter("ID");
	System.out.println(id);

	MemberDAO dao = new MemberDAO();
	boolean flag = false;
	flag = dao.deleteMember(id);
	
	if (flag == true) {
		response.sendRedirect("../link/success.jsp");
	} else {
		response.sendRedirect("../link/failed.jsp");
	}

		
%>

</body>
</html>