<%@page import="lesson.gntp.util.DateTimeService" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Page</title>
</head>
<body>
	<!-- id, password 값을 입력 받는 form문 작성 -->
	<form method="post" action="process.jsp">
		ID : <input type="text" name="userID" value="아이디"><br>
		PWD : <input type="password" name="pwd" value="비밀번호"><br>
		<input type="submit" value="확인"><br>
	</form>
	<div>
		<%
			DateTimeService ds = new DateTimeService();
			out.print(ds.getDateTime());
		%>
	</div>
</body>
</html>