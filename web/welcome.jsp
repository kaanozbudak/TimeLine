
<%@page import="personal.RandomPhoto"%>
<%@page import="personal.Tweet"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java"%>
<!DOCTYPE html>
<html>
<head>
    <title>TimeLine</title>
	<meta charset="utf-8">     
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <link rel="stylesheet" href="welcomeStyle.css"></link>
        <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
    <%@page import="personal.DB"%>
    <%
        String email = (String) session.getAttribute("email");
        DB db = new DB();
        Tweet tw = db.tweet();
        ArrayList list = tw.getTweet();
        RandomPhoto rp = new RandomPhoto();
        String path = (String) session.getAttribute("path");
    %>
   
   
<div class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-collapse navbar-collapse-1 collapse" aria-expanded="true">
			<ul class="nav navbar-nav">
				<li class="active">
                                    <a href="welcome.jsp"><span class="glyphicon glyphicon-home"></span>  Home</a>
				</li>
				<li>
                                    <a href="welcome.jsp"><span class="glyphicon glyphicon-bell"></span> Notifications</a>
				</li>
				<li>
                                    <a href="welcome.jsp"><span class="glyphicon glyphicon-envelope"></span> Message</a>
				</li>
                            &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp;
                                         &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp;
                                <li>
                                    <a href="index.jsp"><span class="glyphicon glyphicon-home"> Log Out</span></a>
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
					<a href="#"><img class="img-responsive" alt="" src="images/img<%=path%>.jpg"></a>
					<div class="row">
						<div class="col-xs-3">
							<h5>
								<small>TWEETS</small>
                                                                <a href="welcome.jsp"><%=tw.getCount()%></a>
							</h5>
						</div>
						<div class="col-xs-4">
							<h5>
								<small>FOLLOWING</small>
								<a href="welcome.jsp">251</a>
							</h5>
						</div>
						<div class="col-xs-5">
							<h5>
								<small>FOLLOWERS</small>
								<a href="welcome.jsp">15345</a>
							</h5>
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-default panel-custom">
				<div class="panel-heading">
					<h3 class="panel-title">
                                            <b><%=email%></b>
					</h3>
                                    <br>
				</div>
                            
				<div class="panel-body">
					<ul class="list-unstyled">
						<li><a href="welcome.jsp">#Istanbul</a></li>
						<li><a href="welcome.jsp">#Aydin</a></li>
						<li><a href="welcome.jsp">#University</a></li>
						<li><a href="welcome.jsp">#ComputerEngineer</a></li>
						<li><a href="welcome.jsp">#SoftwareEngineer</a></li>
						<li><a href="welcome.jsp">#ComputerScience</a></li>
						<li><a href="welcome.jsp">#JAVA</a></li>
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
                                                                <input type="text" style="height:100px;" size="250" name="tweet" class="form-control" id="search2" aria-describedby="search" required>
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
                                        for(int i=0;i<tw.getCount();i++)
                                        {   
                                            String matchEmail =  db.matchEmail((String)list.get(i));
                                    %>
                                        <div class="media">
						<div class="media-body">
                                                    <h4 class="media-heading"><img src="images/img<%=path%>.jpg" height="64" width="46"></img><b>&thinsp;<%=matchEmail%></b></h4>
                                                    <h4><p>&thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; &thinsp; <%= (String)list.get(i)%></p></h4>
                                                           
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
							<a href="welcome.jsp" class="btn btn-default btn-xs">
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
							<a href="welcome.jsp" class="btn btn-default btn-xs">
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
							<a href="welcome.jsp" class="btn btn-default btn-xs">
								+
								<span class="glyphicon glyphicon-user"></span>
								Follow
							</a>
						</div>
					</div>
				</div>
				<div class="panel-footer">
					<a href="welcome.jsp">
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
