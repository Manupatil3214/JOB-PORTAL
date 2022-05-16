<%-- 
    Document   : fileUpload
    Created on : Oct 25, 2021, 9:59:26 AM
    Author     : IITS
--%>
 <%@page import="java.io.*,java.util.*,javax.servlet.*"  %>
         <%@page import="javax.servlet.http.*"  %>
          <%@page import="org.apache.commons.fileupload.*"%>
         <%@page import="org.apache.commons.fileupload.disk.*"%>
            <%@page import="org.apache.commons.fileupload.servlet.*"%>
             <%@page import="org.apache.commons.io.output.*"%>
             
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%  File file;
          int maxFileSize=1024*1024*1024;
           int maxMemSize=1024*1024*1024;
           String root=getServletContext().getRealPath("myFile");
           String contentType=request.getContentType();
           if((contentType.indexOf("multipart/form-data")>=0))
           {
               try
               {
                   DiskFileItemFactory factory= new  DiskFileItemFactory();
                   factory.setSizeThreshold(maxMemSize);
                   factory.setRepository(new File("c:\\temp"));
                   ServletFileUpload upload = new ServletFileUpload(factory);
                   upload.setSizeMax(maxFileSize);
                   List fileItems = upload.parseRequest(request);
                   Iterator i=fileItems.iterator();
                   while(i.hasNext())
                   {
                       FileItem fi=(FileItem)i.next();
                       String fileName=fi.getName();
                       file=new File(root,fileName);
                       fi.getSize();
                       fi.write(file);
                       out.println("successfully"+file.getAbsolutePath()+"<br>");
                        response.sendRedirect("Show_Company_Details.jsp");
                   }
               }
               catch(Exception ex)
               {
                   System.out.println(ex);
               }
           }
             
       
       
       
       
       
       %>
       
    </body>
</html>
