<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Page</title>
</head>
<body>
	<h1>회원 가입창</h1>
	<form method="post" action="../process/process.jsp">
		<table>

			<tr>
				<td>아이디</td>
				<td>
					<input type="text" name="userID">
				</td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td>
					<input type="password" name="pwd">
				</td>
			</tr>
			<tr>
				<td>이름</td>
				<td>
					<input type="text" name="name">
				</td>
			</tr>
			<tr>
				<td>이메일</td>
				<td>
					<input type="text" name="email">
				</td>
			</tr>
			<tr>
				<td>
					<input type="submit" value="가입하기">
				</td>
<!-- 				<td>
					<input type="button" value="다시입력" id="again">
				</td> -->
			</tr>
		</table>
	</form>

</body>
</html>