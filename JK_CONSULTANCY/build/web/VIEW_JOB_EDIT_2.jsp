<%-- 
    Document   : donor3
    Created on : 26 Nov, 2021, 8:17:07 AM
    Author     : manup
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
              <%
            String id1= request.getParameter("id1");
            String b = request.getParameter("id");

            String a = request.getParameter("company");
            String c = request.getParameter("package");
            String d = request.getParameter("location");
            String e = request.getParameter("discription");
            String f = request.getParameter("date");
          
//              out.print(a+b+c+d);
             String driver="com.mysql.jdbc.Driver";
            String ConUrl="jdbc:mysql://localhost:3306/";
            String db="jk_consultancy";
            String userid="root";
            String password="";
           
           PreparedStatement pst=null;
             
                Class.forName(driver);
            
               
           Connection con=DriverManager.getConnection(ConUrl+db,userid,password);
           String sql="Update addjob set id=?,company=?,package=?,location=?,discription=?,date=? where id="+id1;
           pst=con.prepareStatement(sql);
           
           pst.setString(1,b);
            pst.setString(2,a);
           pst.setString(3,c);
           pst.setString(4,d);
           pst.setString(5,e);
           pst.setString(6,f);
         
           
           int z= pst.executeUpdate();
           if(z>0)
           {
             
            out.print("Data update successfully");
             response.sendRedirect("COMPANY_INFO.jsp");
           }
           else
           {
              out.print("Problem in updating record");  
           }
           con.close();
            %>
                            
    </body>
</html>
