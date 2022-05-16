<%-- 
    Document   : donar5delete
    Created on : 26 Nov, 2021, 10:42:44 AM
    Author     : manup
--%>

<%@page import="com.mysql.cj.protocol.Resultset"%>
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
            String id = request.getParameter("id");

            String ConUrl = "jdbc:mysql://localhost:3306/";
            String db = "jk_consultancy";
            String user = "root";
            String pass = "";
            String driver = "com.mysql.jdbc.Driver";
            try {
                Class.forName(driver);
                Connection con = DriverManager.getConnection(ConUrl + db, user, pass);
                Statement st = con.createStatement();
                String sql = "delete from addjob where id=" + id;
//            st.executeUpdate(sql);
//       out.print("Delete successfully");

                int z = st.executeUpdate(sql);
                if (z > 0) {

                    out.print("Delete successfully");
                    response.sendRedirect("COMPANY_INFO.jsp");
                } else {
                    out.print("Problem in updating record");

                }
                con.close();
            } catch (Exception ex) {
                System.out.print(ex);
            }
        %>
    </body>
</html>
