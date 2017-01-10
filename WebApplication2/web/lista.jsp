<%-- 
    Document   : lista
    Created on : 2017-01-08, 12:24:45
    Author     : student
--%>

<%@page import="java.sql.Array"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
        
        <% List list = (List)session.getAttribute("list"); %>
        
        <table>
            <tr>
                <th>ID</th>
                <th>DC</th>
                <th>zip</th>
                <th>name</th>
                <th>address1</th>
                <th>address2</th>
                <th>city</th>
                <th>state</th>
                <th>phone</th>
                <th>fax</th>
                <th>email</th>
                <th>details</th>
                
            </tr>
            <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
            <c:forEach items="${list}" var="element">
                <tr>      
                    <td>${element.customer_id}</td>
                    <td>${element.doscount_code}</td>
                    <td>${element.zip}</td>
                    <td>${element.name}</td>
                    <td>${element.addressline1}</td>
                    <td>${element.addressline2}</td>
                    <td>${element.city}</td>
                    <td>${element.state}</td>
                    <td>${element.phone}</td>
                    <td>${element.fax}</td>
                    <td>${element.email}</td>
                    <td><a href="details.jsp?index=${list.indexOf(element)}">Details</a></td> 
                </tr>
            </c:forEach>
        </table>
            
        
    
</html>
