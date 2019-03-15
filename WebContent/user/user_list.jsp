<%@page import="java.sql.ResultSet"%>
<%@page import="test.jsp.study.db.DBCon"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
이름 : <input type="text" name="ui_name">
<button>검색</button>
</form>
<%
String uiName = request.getParameter("ui_name");
String sql = "select ui_num, ui_name, ui_id, ui_age, ui_etc from user_info ";
if(uiName!=null){
	sql += " where ui_name like '%' || ? || '%' ";
}
PreparedStatement ps = DBCon.getCon().prepareStatement(sql);
if(uiName!=null){
	ps.setString(1, uiName);
}
ResultSet rs = ps.executeQuery();
while(rs.next()){
	out.write(rs.getString("ui_num")+",");
	out.write("<a href=\"/jsp-study/user/user_view.jsp?ui_num=" + rs.getString("ui_num")+ "\">"  + rs.getString("ui_name")+"</a>,");
	out.write(rs.getString("ui_id")+",");
	out.write(rs.getString("ui_age")+",");
	out.write(rs.getString("ui_etc")+"<br>");
}
%>
</body>
</html>