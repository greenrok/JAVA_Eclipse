<%@page import="member.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fix Member Page</title>
<style>
table {
	border: 1px solid;
	border-collapse: collapse;
}

th, td {
	text-align: center;
	padding: 15px;
	border: 1px solid;
	border-collapse: collapse;
}


</style>
</head>
<body>
<%
	String id = request.getParameter("ID");
	String pwd = request.getParameter("PWD");
	String name = request.getParameter("NAME");
	String email = request.getParameter("EMAIL");
	
%>
<form method="post" action="./success_fix.jsp">
<table>
	<tr>
		<th></th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>이메일</th>
	</tr>
	<tr>
		<td>기존 데이터</td>
		<td><%out.print(id);%></td>
		<td><%out.print(pwd); %></td>
		<td><%out.print(name); %></td>
		<td><%out.print(email); %></td>
	</tr>
	<tr>
	<td>수정할 데이터 선택</td>
		<td><input type="text" name="newID"></td>
		<td><input type="text" name="newPwd"></td>
		<td><input type="text" name="newName"></td>
		<td><input type="text" name="newEmail"></td>
	</tr>
	<tr>
	
	<td colspan="5">
	<input type="hidden" name="origin_id" value=<%=id %>>
	<input type="hidden" name="origin_pwd" value=<%=pwd %>>
	<input type="hidden" name="origin_name" value=<%=name %>>
	<input type="hidden" name="origin_email" value=<%=email %>>
	<input type="submit" value="수정"></td></tr>
</table>
</form>
<a href="../link/success.jsp">돌아가기</a>
<%-- <a href="../link/success.jsp?id=<%=id%>">돌아가기</a> --%>

</body>
</html>