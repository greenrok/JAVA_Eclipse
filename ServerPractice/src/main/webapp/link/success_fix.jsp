<%@page import="member.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String origin_id = request.getParameter("origin_id");
	String origin_pwd = request.getParameter("origin_pwd");
	String origin_name = request.getParameter("origin_name");
	String origin_email = request.getParameter("origin_email");

	String new_id = request.getParameter("newID");
	String new_pwd = request.getParameter("newPwd");
	String new_name = request.getParameter("newName");
	String new_email = request.getParameter("newEmail");

	String id = null;
	String pwd = null;
	String name = null;
	String email = null;

	if (new_id == "") {
		id = origin_id;
	} else {
		id = new_id;
	}

	if (new_pwd == "") {
		pwd = origin_pwd;
	} else {
		pwd = new_pwd;
	}

	if (new_name == "") {
		name = origin_name;
	} else {
		name = new_name;
	}

	if (new_email == "") {
		email = origin_email;
	} else {
		email = new_email;
	}

	MemberDAO dao = new MemberDAO();
	boolean flag = false;
	
	flag = dao.fixMember(origin_id, id, pwd, name, email);
	
	if (flag == true) {
		response.sendRedirect("./fix.jsp");
	} else {
		response.sendRedirect("./failed.jsp");
	}
	%>
</body>
</html>