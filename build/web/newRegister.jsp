<%-- 
    Document   : newRegister
    Created on : 27.Mar.2018, 17:45:45
    Author     : Dragon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New Register Page</title>
    <link rel="stylesheet" href="newUser.css">
</head>
<body>
    <h2>Welcome</h2>
    <h2>Join us today !</h2>
<div>
    <%
        String userName,password;
        String message=(String) request.getAttribute("msg");
        if(message==null)
        {
            message="";
        }
        personal.User user = (personal.User) request.getAttribute("user");
        if(user==null)
        {
            userName="";
            password="";
        }
        else
        {
            userName=user.getUserName();
            password=user.getPassword();
        }
    %>
    <p><%=message%></p>
</div>
<form method="post" action="saveNew">
    
    <label for="userName">User Name: </label>
    <input class="box" type="text" name="userName" value="<%=userName%>">
        <br><br>
    <label for="password">Password: </label>
    <input class="box" type="password" name="password" value="<%=password%>"> 
        <br>
    <input type="submit" value="Submit">  
        
</form>
</body>
</html>
