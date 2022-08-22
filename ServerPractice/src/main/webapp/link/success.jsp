<%@page import="java.util.ArrayList"%>
<%@page import="member.VO.memberVO"%>
<%@page import="member.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>success Page</title>
<style>
table {
	border : 1px solid;
	border-collapse: collapse;
}

th, td {
text-align : center;
padding : 15px;
	border : 1px solid;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<h1>Join Success</h1>

	<table>
		<tr>
			<th>아이디</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>시간</th>
			<th>삭제</th>
		</tr>
		<%
		MemberDAO dao = new MemberDAO();
		ArrayList<memberVO> list = dao.showMemberList();

		for (memberVO vo : list) {
			String id = vo.getId();
			String pwd = vo.getPwd();
			String name = vo.getName();
			String email = vo.getEmail();
			String date = vo.getDate();
		%>

		<tr>
			<td>
				<%
				out.print(id);
				%>
			</td>
			<td>
				<%
				out.print(pwd);
				%>
			</td>
			<td>
				<%
				out.print(name);
				%>
			</td>
			<td>
				<%
				out.print(email);
				%>
			</td>
			<td>
				<%
				out.print(date);
				%>
			</td>
			<td>
				<form method="post" action="./delete.jsp">
				<input type="hidden" name="userID" value=<%=id%>>
				<input type="submit" value="삭제">
				</form>
			</td>
		</tr>
		<%
		}
		%>

	</table>
	<a href="../link/join.jsp">회원가입 페이지</a>
</body>
</html>