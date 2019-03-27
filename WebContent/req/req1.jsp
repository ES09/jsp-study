<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("난", "누구?");
request.setAttribute("가나다", "ㄱㄴㄷ");
session.setAttribute("backend","뒤끝");
application.setAttribute("abc", "ABC");
RequestDispatcher rd = request.getRequestDispatcher("/req/req2.jsp");
rd.forward(request,response);
%>
