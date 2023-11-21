<%@page import="model.AccountList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		AccountList userInfo = (AccountList) session.getAttribute("userInfo");
		String nickname = userInfo.getNickname();
	%>
	<h3>삭제할려는 아이디는 <%= nickname %>입니다. </h3>
	<h3>정말로 회원탈퇴를 하시겠습니까?</h3>
	<table>
		<tr>
			<td><a href="RemoveAccount"><button>예 계정을 삭제합니다.</button></a></td>
			<td><a href="Main.jsp"><button>아니요 삭제하지 않습니다.</button></a></td>
		</tr>
	</table>
</body>
</html>