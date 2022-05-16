<%-- 
    Document   : singup2
    Created on : 5 Dec, 2021, 7:20:13 PM
    Author     : manup
--%>

<%@ page import ="java.sql.*" %>
<%
    String driver="com.mysql.jdbc.Driver";
   String db="jk_consultancy";
    String user="root";
    String pass="";
    String ConUrl="jdbc:mysql://localhost:3306/";
   
   
    Class.forName(driver);
    Connection con = DriverManager.getConnection(ConUrl+db, user, pass);
    Statement st = con.createStatement();
    String userid = request.getParameter("username");    
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver");
   
         
   
    ResultSet rs;
    rs = st.executeQuery("select * from registration where username='" + userid + "' and password='" + pwd + "'");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("success.jsp");
    } else {
//        out.println("Invalid password <a href='registration.jsp'>try again</a>");
 out.println("Invalid password");
response.sendRedirect("Singup.jsp");
//request.setAttribute("alertMsg","Invalid password");
    }
%>