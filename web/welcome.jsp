
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>TimeLine</title>
	<meta charset="utf-8">
        <link rel="stylesheet" href="welcomeStyle.css"></link>
        <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
    <%@page import="personal.DB"%>
    <%
        String email = (String) session.getAttribute("email");
        String nickName = email;
        String fullName = (String) session.getAttribute("nickName");
        DB db = new DB();
        int counter = db.countTweet();
        ArrayList tweet = db.getTweet();
    %>
   
   
<div class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-collapse navbar-collapse-1 collapse" aria-expanded="true">
			<ul class="nav navbar-nav">
				<li class="active">
                                    <a href="welcome.jsp"><span class="glyphicon glyphicon-home"></span></a>
				</li>
				<li>
					<a href="welcome.jsp"><span class="glyphicon glyphicon-bell"></span> Notifications</a>
				</li>
				<li>
					<a href="welcome.jsp"><span class="glyphicon glyphicon-envelope"></span> Messages</a>
				</li>
			</ul>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-sm-3">
			<div class="panel panel-default">
				<div class="panel-body">
					<a href="#"><img class="img-responsive" alt="" src="800500.jpg"></a>
					<div class="row">
						<div class="col-xs-3">
							<h5>
								<small>TWEETS</small>
								<a href="#"><%=counter%></a>
							</h5>
						</div>
						<div class="col-xs-4">
							<h5>
								<small>FOLLOWING</small>
								<a href="#">251</a>
							</h5>
						</div>
						<div class="col-xs-5">
							<h5>
								<small>FOLLOWERS</small>
								<a href="#">15345</a>
							</h5>
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-default panel-custom">
				<div class="panel-heading">
					<h3 class="panel-title">
                                            <b><%=fullName%></b>
					</h3>
                                    <br>
				</div>
                            
				<div class="panel-body">
					<ul class="list-unstyled">
						<li><a href="#">#Istanbul</a></li>
						<li><a href="#">#Aydin</a></li>
						<li><a href="#">#University</a></li>
						<li><a href="#">#ComputerEngineer</a></li>
						<li><a href="#">#SoftwareEngineer</a></li>
						<li><a href="#">#ComputerScience</a></li>
						<li><a href="#">#JAVA</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="media">
						<div class="media-body">
							<div class="form-group has-feedback">
								<label class="control-label sr-only" for="inputSuccess5">Hidden label</label>
                                                                
                                                                <form method="post" action="SendTweet" >
                                                                <input type="text" style="height:100px;" size="250" name="tweet" class="form-control" id="search2" aria-describedby="search">
                                                                <br>
                                                                <center><button class="btn btn-primary" type="submit" aria-label="Left Align"> 
                                                                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>        Tweet 
                                                                </button></center>
                                                                </form>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
					
                                    <%
                                        for(int i=0;i<counter;i++)
                                        {
                                                db.startConnection();
                                                String matchEmail = db.matchEmail((String)tweet.get(i));
                                    %>
                                        <div class="media">
						<div class="media-body">
                                                    <h4 class="media-heading"><img src="yumurta.png" height="32" width="46"></img> <b><%=matchEmail%></b></h4>
							<p><%=(String)tweet.get(i)%></p>
						</div>

					</div>  
                                    <%
                                        }
                                    %>

				</div>
			</div>

			<br>
			<br>
			<br>


			
		</div>

		<div class="col-sm-3">
			<div class="panel panel-default panel-custom">
				<div class="panel-heading">
					<h3 class="panel-title">
						Who to follow
						<small><a href="#">Refresh</a> ● <a href="#">View all</a></small>
					</h3>
                                     <br>
				</div>
				<div class="panel-body">
					<div class="media">
						<div class="media-left">
							<img src="yumurta.png" alt="" height="45" width="60" class="media-object img-rounded">
						</div>
						<div class="media-body">
							<h4 class="media-heading">Adem Özyavas</h4>
							<a href="#" class="btn btn-default btn-xs">
								+
								<span class="glyphicon glyphicon-user"></span>
								Follow
							</a>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<img src="tanercevik.jpg" height="60" width="60" alt="" class="media-object img-rounded">
						</div>
						<div class="media-body">
                                                    <h4 class="media-heading">Taner Çevik</h4>
							<a href="#" class="btn btn-default btn-xs">
								+
								<span class="glyphicon glyphicon-user"></span>
								Follow
							</a>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<img src="aligunes.jpg" height="64" width="70" alt="" class="media-object img-rounded">
						</div>
						<div class="media-body">
							<h4 class="media-heading">Ali Güneş</h4>
							<a href="#" class="btn btn-default btn-xs">
								+
								<span class="glyphicon glyphicon-user"></span>
								Follow
							</a>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<a href="www.google.it">
						<span class="glyphicon glyphicon-user"></span>
						Find people you know
					</a>
				</div>
			</div>
			<div class="well well-sm">
				<ul class="list-inline">
					<li>© 2018 TimeLine KAAN OZBUDAK</li>
					<li><a href="https://www.kaanozbudak.com">About</a></li>
					<li><a href="https://www.kaanozbudak.com">Help</a></li>
					<li><a href="https://www.kaanozbudak.com">Terms</a></li>
					<li><a href="https://www.kaanozbudak.com">Privacy</a></li>
					<li><a href="https://www.kaanozbudak.com">Cookies</a></li>
					<li><a href="https://www.kaanozbudak.com">Ads info</a></li>
					<li><a href="https://www.kaanozbudak.com">Brand</a></li>
					<li><a href="https://www.kaanozbudak.com">Blog</a></li>
					<li><a href="https://www.kaanozbudak.com">Status</a></li>
					<li><a href="https://www.kaanozbudak.com">Apps</a></li>
					<li><a href="https://www.kaanozbudak.com">Jobs</a></li>
					<li><a href="https://www.kaanozbudak.com">Advertise</a></li>
					<li><a href="https://www.kaanozbudak.com">Businesses</a></li>
					<li><a href="https://www.kaanozbudak.com">Media</a></li>
					<li><a href="https://www.kaanozbudak.com">Developers</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
</body>
</html>
