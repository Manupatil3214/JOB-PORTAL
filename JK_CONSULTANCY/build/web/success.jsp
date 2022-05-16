<%-- 
    Document   : success
    Created on : 5 Dec, 2021, 6:38:10 PM
    Author     : manup
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="Resistration.jsp">Please Login</a>
<%} else {
%>
<%=session.getAttribute("userid")%>
<% response.sendRedirect("EntryPage.html"); %>
<!--<a href='logout.jsp'>Log out</a>-->
<%
    }
%>
</body>
</html>
