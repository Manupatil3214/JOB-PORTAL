<%-- 
    Document   : Registration
    Created on : 4 Dec, 2021, 5:33:44 PM
    Author     : manup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import=" java.util.*,java.sql.*" %>
<%@page import="java.sql.DriverManager" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String a=request.getParameter("name");
           String b=request.getParameter("username");
            String c=request.getParameter("email");
             String d=request.getParameter("number");
              String e=request.getParameter("password");
             String f=request.getParameter("conform");
              String h=request.getParameter("gender");
              
              
             try{
   String driver="com.mysql.jdbc.Driver";
   String db="jk_consultancy";
    String user="root";
    String pass="";
    String ConUrl="jdbc:mysql://localhost:3306/";
    
    Class.forName(driver);
    Connection con = DriverManager.getConnection(ConUrl+db, user, pass);
    Statement st = con.createStatement();
    String sql = "insert into registration(name,username,email,number,password,conform,gender)value('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+h+"')";
    
    out.print(sql);
      
    int z=st.executeUpdate(sql);
           if(z>0)
           {
             
            out.print("Data indert successfully");
            response.sendRedirect("Singup.jsp");
           }
           else
           {
              out.print("Problem in updating record");
              response.sendRedirect("Resistration.jsp");
              
           }
//     st.executeUpdate(sql);
   
//    out.print(" data insert succesfully");
    con.close();
    
    
   
}
catch(Exception ex)
{
   out.print(ex);
}
             
        %>
    </body>
</html>
