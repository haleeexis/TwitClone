<head>
  <title>${name}'s profile'</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
</head>

<body>
  <nav class="navbar navbar-toggleable-md navbar-light bg-faded">
		<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
		<a class="navbar-brand" href="#">Twitclone</a>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="/twitclone/timeline">Timeline <span class="sr-only">(current)</span></a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/twitclone/search">Search</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="/twitclone/profile/index/${session.user.userId}">Profile</a>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
    	<a class="nav-link" href="/twitclone/auth/logout">Log out</a>
    </ul>

		</div>
	</nav>
    <div class="container">
  <div class="jumbotron">
    <h3>Profile for <strong>${name} </strong></h3>
    <p>
      Bio: ${bio}
    </p>
    <a class="btn btn-lg btn-primary" href="../../components/navbar/" role="button">View navbar docs &raquo;</a>
  </div>
</div>

<div class="container">

  <g:each in="${tweets}" var="post">
    <div class="card text-center">
      <div class="card-header">
        ${post.user.profile.fullName}
      </div>
      <div class="card-block">
        <p class="card-text">${post.content}</p>
        <a href="#" class="btn btn-primary">Go somewhere</a>
      </div>
      <div class="card-footer text-muted">
        ${post.dateCreated}
      </div>
    </div>
  </g:each>

</div>

</body>
</html>
