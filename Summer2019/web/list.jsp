<%-- 
    Document   : list
    Created on : Nov 5, 2022, 6:06:34 PM
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
        <form action="list">
            Department: <select name="did" onchange="this.form.submit()">
                <option value="-1">--------------</option>
            <c:forEach items="${listDepartments}" var="D">
                <option value="${D.did}" ${D.did == did ?"selected":""}>${D.dname}</option>
            </c:forEach>
        </select>
        </form>
        Employees:<br/>
        <table border="1">
            <thead>
                <tr>
                    <th>Name</th>
                    <th>Born</th>
                    <th>Gender</th>
                    <th>Department</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listEmployee}"var="E">
                <tr>
                    <td>${E.ename}</td>
                    <td>${E.edob}</td>
                    <td><img src="images/${E.egender?"1":"0"}.PNG" alt=""/></td>
                    <td>${E.departmemt.dname}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        
    </body>
</html>
