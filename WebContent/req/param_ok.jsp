<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Map<String,String[]> map = request.getParameterMap();
String[] ids = map.get("id");
String[] names = map.get("name");
String[] dates = map.get("credat");
String[] contents = map.get("content");
String[] trans = map.get("trans");
%>
id : <%out.write(ids[0]);%><br>
name : <%out.write(names[0]);%><br> 
date : <%out.write(dates[0]);%><br>
content : <%out.write(contents[0]);%><br>
trans : <%out.write(trans[0]);%><br>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
</body>
</html>