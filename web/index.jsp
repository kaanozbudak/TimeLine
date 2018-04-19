<%-- 
    Document   : index
    Created on : 22.Mar.2018, 17:09:20
    Author     : Dragon
--%>

<%@page import="java.io.FileInputStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<title>TimeLine</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="mainStyle.css">
</head>
<body>
	<section id="leftOne">
		<div class="leftContainer">
			<div class="center">
				<img src="logo.png" class="img1">
				<h1>Welcome</h1>
				<h1></h1>
				<h3>New to TimeLine ?</h3>
				<br><br>
				<a class="loginLink1"href="newRegister.jsp" style="color: #1da1f2">Sign up now !</a>
			</div>
			<br><br><br><br><br><br><br><br><br><br><br><br>
			<div class="footer1">
                                    <p class="kucuk">&nbsp;Tüm hakları saklıdır.</p>	
			</div>
		</div>
	</section>
	<section id="rightOne">
		<div class="rightContainer">
			<div class="center2">
				<h1>Join TimeLine</h1>
			
				<form method="post" action="Login">
				<label for="email">E Mail: &nbsp;:&nbsp; </label>
				<input class="input" type="text" name="email" required>

				<p></p>

				<label for="password">Password&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</label>
					
				<input class="input" type="password" name="password" required>
                                    <br><br>
                                <input style="color:blue" type="submit" value="Login now !">  
				</form>
			</div>
			<br><br><br><br><br><br><br><br><br><br><br><br>
			
			<div class="footer2">
					<p class="yazi">&copy 2018 Kaan Özbudak&nbsp;</p>
			</div>
		</div>
	</section>

</body>
</html>
