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
             String a=request.getParameter("id");
            String b = request.getParameter("company");
            String c = request.getParameter("package");
            String d = request.getParameter("location");
            String e = request.getParameter("discription");
            String f = request.getParameter("date");
          


            try {
                String driver = "com.mysql.jdbc.Driver";
                String db = "jk_consultancy";
                String user = "root";
                String pass = "";
                String ConUrl = "jdbc:mysql://localhost:3306/";

                Class.forName(driver);
                Connection con = DriverManager.getConnection(ConUrl + db, user, pass);
                Statement st = con.createStatement();
                String sql = "insert into addjob (id,company,package,location,discription,date)value('" + a + "','" + b + "','" + c + "','" + d + "','" + e + "','" + f + "')";

                out.print(sql);
                 int z = st.executeUpdate(sql);
                if (z > 0) {

                    out.print("Data indert successfully");
                    response.sendRedirect("COMPANY_INFO.jsp");
                } else {
                    out.print("Problem in updating record");
                    response.sendRedirect("ADD_JOB.jsp");

                }

//                st.executeUpdate(sql);
//
//               out.print("Employee data insert succesfully");
                con.close();
            } catch (Exception ex) {
                out.print(ex);
            }

        %>
    </body>
</html>
