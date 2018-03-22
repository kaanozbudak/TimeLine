<%-- 
    Document   : index
    Created on : 22.Mar.2018, 17:09:20
    Author     : Dragon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<title>TimeLine</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="style.css">
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
				<a class="loginLink1"href="newRegister.html" style="color: #1da1f2">Sign up now !</a>
			</div>
			<br><br><br><br><br><br><br><br><br><br><br><br>
			<div class="footer-1">
					<p class="kucuk">&nbsp;Tüm hakları saklıdır.</p>	
			</div>
		</div>
	</section>
	<section id="rightOne">
		<div class="rightContainer">
			<div class="center2">
				<h1>Join TimeLine</h1>
			
				<form method="post" action="AddToUser">
		
				<label for="userName">User Name  &nbsp;:&nbsp; </label>
				<input class="input" type="text" name="userName" required>
					
				<p></p>

				<label for="password">Password&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;</label>
					
				<input class="input" type="password" name="password" required>
				</form>
				<br><br>
				<a class="loginLink2" href="login.html" style="color:#fff">Login now !</a>
			</div>
			<br><br><br><br><br><br><br><br><br><br><br><br>
			
			<div class="footer-2">
					<p class="yazi">&copy 2018 Kaan Özbudak&nbsp;</p>
			</div>
		</div>
	</section>

</body>
</html>