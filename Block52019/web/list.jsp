<%-- 
    Document   : list
    Created on : Nov 5, 2022, 8:56:55 PM
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
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Created Date</th>
                    <th>Skill</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listCharacters}"var="C">
                <tr>
                    <td>${C.cid}</td>
                    <td>${C.name}</td>
                    <td>${C.gender ? "Male":"Female"}</td>
                    <td>${C.createdDate}</td>
                    <td>
                        <c:forEach items="${C.listSkills}" var="S">
                        <div>${S.name}</div>
                        </c:forEach>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
