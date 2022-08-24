<%@page import="gntp.lesson.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="gntp.lesson.dao.MemberDAO"%>
<%@page import="gntp.lesson.util.ConnectionManager"%>
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
<%-- <%
	// Test
	Connection conn = ConnectionManager.getConnection();
	if (conn != null) {
		System.out.println("success");
		conn.close();
	} else {
		System.out.println("failed");
	}
%> --%>
<%!
	public void jspInit() {
		System.out.println("jsp Init");
	}

	public void jspDestroy() {
		System.out.println("jsp Destroy");
	}
%>
<%
	//logic process
	System.out.println("logic");
	MemberDAO dao = new MemberDAO();
	ArrayList<MemberVO> list = dao.selectAll();
	request.setAttribute("list", list);
	/* for (MemberVO member : list) {
		System.out.println(member.toString());
	} */
	
%>
<jsp:forward page="../member/list.jsp"></jsp:forward>

</body>
</html>