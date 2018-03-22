<%-- 
    Document   : form
    Created on : 22.Mar.2018, 22:58:11
    Author     : Dragon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
</head>
<body>
    <h1> Join Our App  </h1>
  <%@ page import="personal.User" %>

  <%
    User user = (User) request.getAttribute("user");
    String message = (String) request.getAttribute("msg");
    if (user == null) {
      user = new User("","");
    }
    if (message == null) {
      message = "";
    }
  %>
  <p> <%= message %> </p>
  <form method="post" action="saveNew">
    <label for ="iduserName"> User Name: </label>
    <input type="text" id="iduserName" name="userName" value= <%= user.getUserName()%>>
    <label for ="idpassword"> Password </label>
    <input type="password" id="idpassword" name="password" value=<%= user.getPassword()%>>
    <input type="submit" value="submit">
  </form>
</body>
</html>
