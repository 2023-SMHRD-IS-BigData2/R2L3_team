<%@page import="model.AccountList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
#bAddress {
display: none;
}
#bTel {
display: none;
}
</style>
</head>
<body>
	<%
		AccountList userInfo = (AccountList) session.getAttribute("userInfo");
	%>
	<form action="ChangeAccount" method="post">
		<table>
			<tr>
				<td>아이디(고유번호)</td>
				<td><input type="text" name="id" value="<%= userInfo.getId() %>"
					readonly="readonly"></td>
			</tr>
			<tr>
				<td>닉네임</td>
				<td><input type="text" name="nickname"
					value="<%= userInfo.getNickname() %>" readonly="readonly"></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><input type="text" id="address" name="address"></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" id="tel" name="tel"></td>
			</tr>
		</table>
	</form>
	<table>
		<tr>
			<td><button onclick="duplicateCheck()">회원정보 변경</button></td>
		</tr>
		<tr>
			<td id="bAddress"><%= userInfo.getAddress() %></td>
		</tr>
		<tr>
			<td id="bTel"><%= userInfo.getTel() %></td>
		</tr>
	</table>
	<script type="text/javascript">
		let bAddress = document.querySelector("#bAddress").textContent;
		let bTel = document.querySelector("#bTel").textContent;
		
		function duplicateCheck() {
			
			
			let address = document.querySelector("#address").value;
			let tel = document.querySelector("#tel").value;
			
			if ((address.length > 0) && address != bAddress) {
				if ((tel.length > 0) && tel != bTel) {
					document.querySelector("form").submit();
				} else {
					window.alert("전화번호가 없거나 이전과 일치합니다!");
				}
			} else {
				window.alert("주소가 없거나 이전과 일치합니다!");
			}
		}
		
	</script>
</body>
</html>