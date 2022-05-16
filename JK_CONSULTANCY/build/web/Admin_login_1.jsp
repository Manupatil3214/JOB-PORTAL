<%-- 
    Document   : Admin_login_1
    Created on : 10 Dec, 2021, 5:02:09 PM
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
      String n=request.getParameter("name");
      String p=request.getParameter("password");
      out.print(n+p);
      if(n.equalsIgnoreCase ("Admin") && p.equals("12345") )
      {
          out.print("user is valid");
          response.sendRedirect("Adminhub.jsp");
      }
      else{
          out.print("user is Invalid");
          response.sendRedirect("Admin_login.jsp");
      }
      
      %>
    </body>
</html>
