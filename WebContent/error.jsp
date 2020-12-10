<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<script src="https://unpkg.com/feather-icons"></script>

<title>Error page</title>
</head>
<body>

<div class = "container">
	<div class = "row border">
		<div class = "col-md-12">
			<div style = "text-align:center" class = "mt-5">
				<h1>Oops! :(</h1>
				<h5>Something went wrong</h5>
				<h5>please try again</h5> 
			</div>
			<div style = "text-align:center" class = "mt-3">
				<button id = "backToLogin" onClick= "location.href='login.jsp'" class = "btn btn-primary btn-lg mr-1">
					<span data-feather ="home" class = "mr-1"></span>Take me home
				</button>
			</div>
		</div>
	</div>
</div>


<script>feather.replace()</script>
</body>
</html>