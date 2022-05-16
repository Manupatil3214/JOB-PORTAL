<%-- 
    Document   : ApplyForJobExcept
    Created on : 14 Dec, 2021, 9:10:25 PM
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


            try {
                String number = request.getParameter("number");
                String driver = "com.mysql.jdbc.Driver";
                String db = "Jk_Consultancy";
                String user = "root";
                String pass = "";
                String ConUrl = "jdbc:mysql://localhost:3306/";

                Class.forName("com.mysql.jdbc.Driver").newInstance();
                Connection con = DriverManager.getConnection(ConUrl + db, user, pass);
                Statement st = con.createStatement();
                int rows = st.executeUpdate("INSERT INTO applyforjobaccept SELECT  * FROM applyforjob where number=" + number);
                if (rows > 0) {
                    System.out.println("Don't add any row!");
                    response.sendRedirect("Application_Info.jsp");
                } else {
                    System.out.println(rows + " row(s)affected.");

                }

                con.close();

            } catch (Exception ex) {
                out.print(ex);
            }
        %>
    </body>
</html>
