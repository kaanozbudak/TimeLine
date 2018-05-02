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
   <link rel="stylesheet" href="mainStyle.css">
</head>
<body>
    <h1 style="font-size: 75px"> Welcome </h1>
    <%@ page import="personal.User" %>

    <%
      User user = (User) request.getAttribute("user");
    %>
    <p style="font-size: 55px"> Successful !</p>
    <p style="font-size: 45px"> Welcome (<%= user.getFirstName()%><%=user.getLastName()%>)//(<%=user.getEmail()%>) to our application.
    Your password is ********** </p>
    <a class="loginLink11" href="index.jsp" style="color: white">Sign up now !</a>
</body>
</html>
