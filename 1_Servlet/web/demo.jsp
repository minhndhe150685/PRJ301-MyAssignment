<%-- 
    Document   : demo
    Created on : Oct 31, 2022, 11:34:22 AM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <h3>Đây là thẻ h3</h3>
        <%
            String message = "hello";
            int a = 10;
            a = a + 10;
            out.println(message + "<br/>");
            out.println(a);
        %>
    </body>
</html>
