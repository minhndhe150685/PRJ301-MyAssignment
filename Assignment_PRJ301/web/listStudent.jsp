<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        Campus:
            <select name="Campus">
                    <option value="FU-HL">FU-HL</option>
                    <option value="FU-HCM">FU-HCM</option>
                    <option value="FU-ĐN">FU-ĐN</option>
            </select><br>
        
        
        <table>
            
                    <div class="table1"></div>
                        
                    
                <table class="table">
                    <thead>
                        <tr>

                            <th rowspan="2">
                                <span class="auto-style1">Year</span>
                                <select name="year-select">
                                    <option value="2019">2019</option>
                                    <option value="2020">2020</option>
                                    <option value="2021">2021</option>
                                    <option selected="selected" value="2022">2022</option>
                                    <option value="2023">2023</option>

                                </select>
                                <br>
                                Week
                                <select name="week-select" >
                                    <option value="22">30/05 To 05/06</option>
                                    <option value="23">06/06 To 12/06</option>
                                    <option selected="selected" value="24">13/06 To 19/06</option>
                                    <option value="25">20/06 To 26/06</option>
                                    <option value="26">27/06 To 03/07</option>
                                    <option value="27">04/07 To 10/07</option>
                                    <option value="28">11/07 To 17/07</option>
                                </select>
                            </th>

                            <th align="center">Mon</th>
                            <th align="center">Tue</th>
                            <th align="center">Wed</th>
                            <th align="center">Thu</th>
                            <th align="center">Fri</th>
                            <th align="center">Sat</th>
                            <th align="center">Sun</th>
                        </tr>
                        
                    </thead>
                    
                    <tbody>
                       
                        <tr>
                            <td>Slot 1 </td>
                             <c:forEach items="${listSess}" var="LS">
            <c:if test="${LS.lecturer.name=='Sonnt5'}">
                                
                            <c:if test="${LS.slot.id==1}">
                            
                               
                            <c:if test="${LS.date=='2022-10-10'}">
                               <td> <a href="">${LS.group.name}</a><br><a class="label label-warning" <br> at ${LS.room.name} <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br><!-- comment --></td>
                                 </c:if>  
                                       
                                    
                           
                           
                            <c:if test="${LS.date=='2022-10-11'}">
                                <td><a href="">${LS.group.name}</a><br><a class="label label-warning" <br> at ${LS.room.name} <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br><!-- comment --></td>
                                 </c:if> 
                                        
                                <c:if test="${LS.date!='2022-10-11'}">
                                <td>-</td>
                                 </c:if>             
                                        
                                    
                           
                            
                            <c:if test="${LS.date=='2022-10-12'}">
                                <td><a href="">${LS.group.name}</a><br><a class="label label-warning" <br> at ${LS.room.name} <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br><!-- comment --></td>
                                 </c:if>
                                   
                            
                            
                            <c:if test="${LS.date=='2022-10-14'}">
                               <td> <a href="">${LS.group.name}</a><br><a class="label label-warning" <br> at ${LS.room.name} <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br><!-- comment --></td>
                                </c:if>
                                    
                            
                            
                            <c:if test="${LS.date=='2022-10-17'}">
                                <td><a href="">${LS.group.name}</a><br><a class="label label-warning" <br> at ${LS.room.name} <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br><!-- comment --></td>
                                 </c:if>
                            
                            
                            <c:if test="${LS.date=='2022-10-19'}">
                                <td><a href="">${LS.group.name}</a><br><a class="label label-warning" <br> at ${LS.room.name} <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br><!-- comment --></td>
                                 </c:if>
                            
                                        
                            </c:if>
                        </c:if> 
                    </c:forEach>
                        </tr>
                         
                        <tr>
                            <td>Slot 2 </td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td><a href="">JPD133-</a><br><a class="label label-warning" <br> at BE-215 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td>-</td>
                            <td>-</td>
                            <td><a href="">PRJ301-</a><br><a class="label label-warning" <br> at DE-C204 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                        </tr>
                        <tr>
                            <td>Slot 3 </td>
                            <td><a href="">PRJ301-</a><br><a class="label label-warning" <br> at DE-C204 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td><a href="">JPD133-</a><br><a class="label label-warning" <br> at BE-215 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td><a href="">PRJ301-</a><br><a class="label label-warning" <br> at DE-C204 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td><a href="">JPD133-</a><br><a class="label label-warning" <br> at BE-215 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td><a href="">SWT301-</a><br><a class="label label-warning" <br> at DE-C204 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td>-</td>
                            <td><a href="">PRJ301-</a><br><a class="label label-warning" <br> at DE-C204 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                        </tr>
                        <tr>
                            
                            <td>Slot 4 </td>
                            <td>-</td>
                            <td><a href="">SWR301-</a><br><a class="label label-warning" <br> at DE-C306 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td>-</td>
                            <td><a href="">SWR301-</a><br><a class="label label-warning" <br> at DE-C306 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Slot 5 </td>
                            <td>-</td>
                            <td><a href="">SWR301-</a><br><a class="label label-warning" <br> at DE-C306 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td>-</td>
                            <td><a href="">SWT301-</a><br><a class="label label-warning" <br> at DE-C306 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Slot 6 </td>
                            <td>-</td>
                            <td><a href="">SWT301-</a><br><a class="label label-warning" <br> at DE-C306 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td>-</td>
                            <td><a href="">SWT301-</a><br><a class="label label-warning" <br> at DE-C306 <a> </a><br>(<font color="Red">not yet</font>)<br>(10:50-12:20 )</span><br></td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Slot 7 </td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Slot 8 </td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                            <td>-</td>
                        </tr>
                       
                    </tbody>
                 
                </table>
           
        
    </body>
</html>
