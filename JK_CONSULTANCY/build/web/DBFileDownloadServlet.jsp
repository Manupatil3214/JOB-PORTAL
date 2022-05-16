<%-- 
    Document   : DBFileDownloadServlet
    Created on : 20 Dec, 2021, 10:06:25 PM
    Author     : manup
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.*,java.util.*,javax.servlet.*"  %>
         <%@page import="javax.servlet.http.*"  %>
          <%@page import="org.apache.commons.fileupload.*"%>
         <%@page import="org.apache.commons.fileupload.disk.*"%>
            <%@page import="org.apache.commons.fileupload.servlet.*"%>
             <%@page import="org.apache.commons.io.output.*"%>
             
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
       int BUFFER_SIZE = 4096;   
     
    // database connection settings
//     String driver = "com.mysql.jdbc.Driver";
//    String dbURL = "jdbc:mysql://localhost:3306/";
//    String dbUser = "root";
//    String dbPass = "";
//     Class.forName(driver);
           
 String driver = "com.mysql.jdbc.Driver";
            String db = "jk_consultancy";
            String user = "root";
            String pass = "";
            String ConUrl = "jdbc:mysql://localhost:3306/";

            Class.forName(driver);
            Connection con = DriverManager.getConnection(ConUrl + db, user, pass);
            Statement st = con.createStatement();
    
        // get upload id from URL's parameters
        int uploadId = Integer.parseInt(request.getParameter("number"));
         
        Connection conn = null; // connection to the database
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // queries the database
            String sql = "SELECT  * FROM applyforjobaccept where uploadId=?";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setInt(1, uploadId);
 
            ResultSet result = statement.executeQuery();
            if (result.next()) 
            {
                // gets file name and file blob data
                String fileName = result.getString("name");
                Blob blob = result.getBlob("fname");
                OutputStream outStream;
                try (InputStream inputStream = blob.getBinaryStream())
                {
                    int fileLength = inputStream.available();
                    System.out.println("fileLength = " + fileLength);
                    ServletContext context = getServletContext();
                    // sets MIME type for the file download
                    String mimeType = context.getMimeType(fileName);
                    if (mimeType == null) 
                    {
                        mimeType = "application/octet-stream";
                    }   // set content properties and header attributes for the response
                    response.setContentType(mimeType);
                    response.setContentLength(fileLength);
                    String headerKey = "Content-Disposition";
                    String headerValue = String.format("attachment; filename=\"%s\"", fileName);
                    response.setHeader(headerKey, headerValue);
                    // writes the file to the client
                    outStream = response.getOutputStream();
                    byte[] buffer = new byte[BUFFER_SIZE];
                    int bytesRead = -1;
                    while ((bytesRead = inputStream.read(buffer)) != -1)
                    {
                        outStream.write(buffer, 0, bytesRead);
                    }
                }
                outStream.close();             
            } 
           
        } 
       catch(Exception ex)
               {
                   System.out.println(ex);
               } 
    
       %>
    </body>
</html>
