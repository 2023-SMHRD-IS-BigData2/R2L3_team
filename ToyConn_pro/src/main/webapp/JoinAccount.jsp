<%@page import="java.time.LocalTime"%>
<%@page import="java.time.LocalDate"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.hideInfo {
display: none;
}
</style>
</head>
<body>
	<%
	String user_id = (String) session.getAttribute("user_id");
	String nick = (String) session.getAttribute("nick");
	%>
	<form action="FirstJoinAccount" method="post">
		<table>
			<tr class="hideInfo">
				<td>아이디</td>
				<td><input type="text" name="user_id" value=<%= user_id %> readonly="readonly"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type="text" name="nick" value=<%= nick %>></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr class="hideInfo">
				<td>점수</td>
				<td><input type="text" name="score" value=0></td>
			</tr>
			<tr>
				<td colspan="1"><button type="submit">회원가입</button></td>
			</tr>
		</table>
	</form>
</body>
</html>