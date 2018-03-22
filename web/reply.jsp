<%-- 
    Document   : reply
    Created on : 22.Mar.2018, 22:25:00
    Author     : Dragon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Saved</title>
</head>
<body>
    <h1> Welcome to Our App </h1>
    <%@ page import="personal.User" %>
    <%@ page import="data.UserIO" %>

    <%
      User user = (User) request.getAttribute("user");
    %>

    <p> Welcome <%= user.getUserName()%> tou our application.
    Your password is ********** </p>
</body>
</html>
