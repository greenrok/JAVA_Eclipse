<%@page import="lesson.gntp.service.LoginCheck"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Data Process</title>
</head>
<body>
	<%
	// scriptlet(데이터 처리)
	// 클라이언트부터 전송된 데이터처리
	String id = request.getParameter("userID");
	String pwd = request.getParameter("pwd");
	// 자체 로직처리
	// 개발자 작성한 클래스 사용하기
	LoginCheck check = new LoginCheck();
	boolean flag = check.isMember(id, pwd);
	String url = "../link/fail.jsp";
	if (flag) {
		url = "../link/success.jsp";
	}
	response.sendRedirect(url);
	%>
</body>
</html>