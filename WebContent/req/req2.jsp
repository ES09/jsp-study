<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%=pageContext.getAttribute("난")%>
<%=request.getAttribute("가나다")%>
<%=session.getAttribute("backend")%>
<%
response.sendRedirect("/jsp-study/req/req3.jsp");
%>