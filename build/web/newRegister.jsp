<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfonts-->
<link href='http://fonts.googleapis.com/css?family=Oxygen:400,300,700' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
    <h1 style="text-align: center; font-size: 35px;color: white;padding-top: 5%;">Welcome new User</h1>
<div class="main">
    <div class="social-icons">
        <div class="col_1_of_f span_1_of_f"><a href="#">
           <ul class='facebook'>
               <i class="fb"> </i>
               <li>Connect with Facebook</li>
               <div class='clear'> </div>
           </ul>
           </a>
        </div>	
        <div class="col_1_of_f span_1_of_f"><a href="#">
           <ul class='twitter'>
             <i class="tw"> </i>
             <li>Connect with Twitter</li>
             <div class='clear'> </div>
           </ul>
           </a>
       </div>
       <div class="clear"> </div>	
    </div>
    <h2>or signup with</h2>
    <form method="post" action="saveNew">
            <div class="lable">
                <div class="col_1_of_2 span_1_of_2">	
                    <input type="text" name="firstName" class="text" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}">
                </div>
                <div class="col_1_of_2 span_1_of_2">
                    <input type="text" name="lastName" class="text" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}">
                </div>
                <div class="clear"> </div>
            </div>
            <div class="lable-2">
                <input type="text" name="email" class="text" required value="your@email.com " onfocus="this.value = '';">
                <input type="password" name="password" class="text" required value="Password " onfocus="this.value = '';">
            </div>
            <h3>By creating an account, you agree to our <span class="term"><a href="#">Terms & Conditions</a></span></h3>
            <div class="submit">
                <input type="submit" onclick="myFunction()" value="Create account" >
            </div>
        </form>
		
</div>
</body>
</html>