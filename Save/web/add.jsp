<%-- 
    Document   : add
    Created on : Nov 5, 2022, 9:30:29 PM
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="add" method="POST">
             <table>
                
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id" value=""/></td>
                </tr>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name" value=""/></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><input type="radio" name="gender" value="1" checked="checked"/>Male
                        <input type="radio" name="gender" value="0" />Female
                        
                    </td>
                </tr>
                <tr>
                    <td>Skill</td>
                    <td></td>
                </tr>
                <c:forEach items="${listSkills}" var="S">
                <tr>
                    <td><input type="Checkbox" name="skill" value="${S.sid}"/>${S.name}</td>
                    <td></td>
                </tr>
                </c:forEach>
                <tr>
                    <td><input type="submit" value="save"/></td>
                    <td></td>
                </tr>
        </table>
        </form>
    </body>
</html>
