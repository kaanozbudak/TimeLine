<%-- 
    Document   : newRegister
    Created on : 22.Mar.2018, 21:21:38
    Author     : Dragon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New Register</title>
</head>
<body>
    <h1>Welcome to our application.</h1>
    <p>You can fill the blanks.</p>
    <div class="div">Write an name and password</div>
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
            userName = user.getUserName();
            password = user.getPassword();
        }
    %>
    <p><%=message%></p>
</div>
<form method="post" action="saveNew">
    
    <label for="userName">User Name: </label>
    <input type="text" name="userName" value="<%=userName%>">
        
    <label for="password">Password: </label>
    <input type="password" name="password" value="<%=password%>"> 
        
    <input type="submit" value="submit">  
        
</form>
</body>
</html>
