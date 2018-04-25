
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
    <%
        String email = (String) session.getAttribute("email");
    %>
   
<div class="navbar navbar-default navbar-static-top">
	<div class="container">
		<div class="navbar-collapse navbar-collapse-1 collapse" aria-expanded="true">
			<ul class="nav navbar-nav">
				<li class="active">
					<a href="#fake"><span class="glyphicon glyphicon-home"></span> Home</a>
				</li>
				<li>
					<a href="#fake"><span class="glyphicon glyphicon-bell"></span> Notifications</a>
				</li>
				<li>
					<a href="#fake"><span class="glyphicon glyphicon-envelope"></span> Messages</a>
				</li>
			</ul>
			<div class="navbar-form navbar-right">
				<div class="form-group has-feedback">
					<input type="text" class="form-control-nav" id="search" aria-describedby="search1">
					<span class="glyphicon glyphicon-search form-control-feedback" aria-hidden="true"></span>
				</div>

				<button class="btn btn-primary" type="submit" aria-label="Left Align">
					<span class="glyphicon glyphicon-pencil" aria-hidden="true"> </span> Tweet
				</button>
			</div>
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-sm-3">
			<div class="panel panel-default">
				<div class="panel-body">
					<a href="#"><img class="img-responsive" alt="" src="http://placehold.it/800x500"></a>
					<div class="row">
						<div class="col-xs-3">
							<h5>
								<small>TWEETS</small>
								<a href="#">1,545</a>
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
								<a href="#">153</a>
							</h5>
						</div>
					</div>
				</div>
			</div>

			<div class="panel panel-default panel-custom">
				<div class="panel-heading">
					<h3 class="panel-title">
						Trends
						<small><a href="#">ciao</a></small>
					</h3>
				</div>

				<div class="panel-body">
					<ul class="list-unstyled">
						<li><a href="#">#Cras justo odio</a></li>
						<li><a href="#">#Dapibus ac facilisis in</a></li>
						<li><a href="#">#Morbi leo risus</a></li>
						<li><a href="#">#Porta ac consectetur ac</a></li>
						<li><a href="#">#Vestibulum at eros</a></li>
						<li><a href="#">#Vestibulum at eros</a></li>
						<li><a href="#">#Vestibulum at eros</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="media">
						<a class="media-left" href="#fake">
							<img alt="" class="media-object img-rounded" src="http://placehold.it/35x35">
						</a>
						<div class="media-body">
							<div class="form-group has-feedback">
								<label class="control-label sr-only" for="inputSuccess5">Hidden label</label>
								<input type="text" class="form-control" id="search2" aria-describedby="search">
								<span class="glyphicon glyphicon-camera form-control-feedback" aria-hidden="true"></span>
								<span id="search2" class="sr-only">(success)</span>
							</div>
						</div>
					</div>
				</div>
				<div class="panel-body">
					<div class="media">
						<a class="media-left" href="#fake">
							<img alt="" class="media-object img-rounded" src="http://placehold.it/64x64">
						</a>
						<div class="media-body">
							<h4 class="media-heading">Media heading</h4>
							<p>Dolorem aspernatur rerum, iure? Culpa iste aperiam sequi, fuga, quasi rerum, eum, quo natus tenetur officia placeat.</p>
							<ul class="nav nav-pills nav-pills-custom">
								<li><a href="#"><span class="glyphicon glyphicon-share-alt"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-retweet"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-option-horizontal"></span></a></li>
							</ul>
						</div>
					</div>

					<div class="media">
						<a class="media-left" href="#fake">
							<img alt="" class="media-object img-rounded" src="http://placehold.it/64x64">
						</a>
						<div class="media-body">
							<h4 class="media-heading">Media heading</h4>
							<p>Dolorem aspernatur rerum, iure? Culpa iste aperiam sequi, fuga, quasi rerum, eum, quo natus tenetur officia placeat.</p>
							<ul class="nav nav-pills nav-pills-custom">
								<li><a href="#"><span class="glyphicon glyphicon-share-alt"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-retweet"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-option-horizontal"></span></a></li>
							</ul>
						</div>

					</div>
					<div class="media">
						<a class="media-left" href="#fake">
							<img alt="" class="media-object img-rounded" src="http://placehold.it/64x64">
						</a>
						<div class="media-body">
							<h4 class="media-heading">Media heading</h4>
							<p>Dolorem aspernatur rerum, iure? Culpa iste aperiam sequi, fuga, quasi rerum, eum, quo natus tenetur officia placeat.</p>
							<ul class="nav nav-pills nav-pills-custom">
								<li><a href="#"><span class="glyphicon glyphicon-share-alt"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-retweet"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-option-horizontal"></span></a></li>
							</ul>
						</div>

					</div>
					<div class="media">
						<a class="media-left" href="#fake">
							<img alt="" class="media-object img-rounded" src="http://placehold.it/64x64">
						</a>
						<div class="media-body">
							<h4 class="media-heading">Media heading</h4>
							<p>Dolorem aspernatur rerum, iure? Culpa iste aperiam sequi, fuga, quasi rerum, eum, quo natus tenetur officia placeat.</p>
							<ul class="nav nav-pills nav-pills-custom">
								<li><a href="#"><span class="glyphicon glyphicon-share-alt"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-retweet"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-option-horizontal"></span></a></li>
							</ul>
						</div>

					</div>
					<div class="media">
						<a class="media-left" href="#fake">
							<img alt="" class="media-object img-rounded" src="http://placehold.it/64x64">
						</a>
						<div class="media-body">
							<h4 class="media-heading">Media heading</h4>
							<p>Dolorem aspernatur rerum, iure? Culpa iste aperiam sequi, fuga, quasi rerum, eum, quo natus tenetur officia placeat.</p>
							<ul class="nav nav-pills nav-pills-custom">
								<li><a href="#"><span class="glyphicon glyphicon-share-alt"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-retweet"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
								<li><a href="#"><span class="glyphicon glyphicon-option-horizontal"></span></a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>

			<br>
			<br>
			<br>


			<div class="panel panel-default">
				<div class="panel-heading">Prova</div>
				<div class="panel-body">
					<ul class="nav nav-pills">
						<li role="presentation" class="active"><a href="#">Home</a></li>
						<li role="presentation"><a href="#">Profile</a></li>
						<li role="presentation"><a href="#">Messages</a></li>
					</ul>
				</div>
			</div>
		</div>

		<div class="col-sm-3">
			<div class="panel panel-default panel-custom">
				<div class="panel-heading">
					<h3 class="panel-title">
						Who to follow
						<small><a href="#">Refresh</a> ● <a href="#">View all</a></small>
					</h3>
				</div>
				<div class="panel-body">
					<div class="media">
						<div class="media-left">
							<img src="http://placehold.it/32x32" alt="" class="media-object img-rounded">
						</div>
						<div class="media-body">
							<h4 class="media-heading">Nome e cognome</h4>
							<a href="#" class="btn btn-default btn-xs">
								+
								<span class="glyphicon glyphicon-user"></span>
								Follow
							</a>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<img src="http://placehold.it/32x32" alt="" class="media-object img-rounded">
						</div>
						<div class="media-body">
							<h4 class="media-heading">Nome e cognome</h4>
							<a href="#" class="btn btn-default btn-xs">
								+
								<span class="glyphicon glyphicon-user"></span>
								Follow
							</a>
						</div>
					</div>
					<div class="media">
						<div class="media-left">
							<img src="http://placehold.it/32x32" alt="" class="media-object img-rounded">
						</div>
						<div class="media-body">
							<h4 class="media-heading">Nome e cognome</h4>
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
					<li>© 2018 TimeLine</li>
					<li><a href="https://www.kaanozbudak.com">About</a></li>
					<li><a href="#">Help</a></li>
					<li><a href="#">Terms</a></li>
					<li><a href="#">Privacy</a></li>
					<li><a href="#">Cookies</a></li>
					<li><a href="#">Ads info</a></li>
					<li><a href="#">Brand</a></li>
					<li><a href="#">Blog</a></li>
					<li><a href="#">Status</a></li>
					<li><a href="#">Apps</a></li>
					<li><a href="#">Jobs</a></li>
					<li><a href="#">Advertise</a></li>
					<li><a href="#">Businesses</a></li>
					<li><a href="#">Media</a></li>
					<li><a href="#">Developers</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
</body>
</html>
