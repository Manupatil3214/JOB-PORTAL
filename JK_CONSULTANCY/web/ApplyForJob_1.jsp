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
          
            String b=request.getParameter("email");
             String c=request.getParameter("number");
              String d=request.getParameter("qulification");
             String e=request.getParameter("course");
             
               String h=request.getParameter("experience");
                String j=request.getParameter("location");
               String i=request.getParameter("fname");
              
             try{
   String driver="com.mysql.jdbc.Driver";
   String db="jk_consultancy";
    String user="root";
    String pass="";
    String ConUrl="jdbc:mysql://localhost:3306/";
    
    Class.forName(driver);
    Connection con = DriverManager.getConnection(ConUrl+db, user, pass);
    Statement st = con.createStatement();
    String sql = "insert into applyforjob(name,email,number,qulification,course,experience,location,fname)value('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+h+"','"+j+"','"+i+"')";
    
    out.print(sql);
      
    int z=st.executeUpdate(sql);
           if(z>0)
           {
             
            out.print("Data indert successfully");
            response.sendRedirect("Show_Company_Details.jsp");
           }
           else
           {
              out.print("Problem in updating record");
              response.sendRedirect("ApplyForJob.html");
              
           }
//    st.executeUpdate(sql);
//   
//   out.print(" data insert succesfully");
    con.close();
    
    
   
}
catch(Exception ex)
{
   out.print(ex);
}
             
        %>
    
    </body>
  
</html>
