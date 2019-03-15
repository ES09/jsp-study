<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User</title>
</head>
<body>
<form method="get" action="/jsp-study/user/userInfo_ok.jsp">
User Information
<table border="1">
	<tr>
	<th>이름</th>
	<td><input type="text" name="ui_name"></td>
	</tr>
	<tr>
	<th>나이</th>
	<td><input type="number" name="ui_age"></td>
	</tr>
	<tr>
	<th>아이디</th>
	<td><input type="text" name="ui_id"></td>
	</tr>
	<tr>
	<th>기타</th>
	<td><textarea name="ui_etc" cols="25" rows="5"></textarea></td>
	</tr>
</table>
<button>등록</button>
</form>
</body>
</html>