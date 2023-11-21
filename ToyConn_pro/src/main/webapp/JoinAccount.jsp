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
	String id = (String) session.getAttribute("id");
	String nickname = (String) session.getAttribute("nickname");
	%>
	<form action="FirstJoinAccount" method="post">
		<ul>
			<li>아이디<input type="text" name="id" value="<%=id%>"
				readonly="readonly"></li>
			<li>닉네임<input type="text" name="nickname" value="<%=nickname%>"
				readonly="readonly"></li>
			<li>주소<input type="text" name="address"></li>
			<li>전화번호<input type="text" name="tel"></li>
			<li><button type="submit">회원가입</button></li>
		</ul>
	</form>

</body>
</html>