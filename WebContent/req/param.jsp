<%@page import="java.util.Arrays"%>
<%@page import="java.util.Map"%>
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
Map<String,String[]> map = request.getParameterMap();
String[] ids = map.get("id");
String id = request.getParameter("id");
String[] names = map.get("name");
String name = request.getParameter("name");
String[] dates = map.get("credat");
String date = request.getParameter("credat");
String[] contents = map.get("content");
String content = request.getParameter("content");
if(ids!=null){
	out.write(ids[0]);
	out.write(id);
	out.write(names[0]);
	out.write(name);
	out.write(dates[0]);
	out.write(date);
	out.write(contents[0]);
	out.write(content);
} else{
	out.write("hello");
}
%>
<form method="get" action="/jsp-study/req/param_ok.jsp">
	<input type="text" name="id" value="rksk"><br>
	<input type="text" name="name" value="가나다"><br>
	<input type="date" name="credat" value="2019-03-14"><br>
	<select name="trans">
		<option value="m">남자</option>
		<option value="w">여자</option>
	</select>
	<textarea name="content" cols="20" rows="20"></textarea>
	<button>전송</button>
</form>
</body>
</html>