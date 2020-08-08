<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Review</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="css/home.css"
        rel="stylesheet">
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/home">COVID E-PASS PORTAL</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="/home">Home</a></li>
    </ul>
  </div>
</nav>
<div class="container">
	<h2 class="heading">Basic Info</h2>
  <div class="panel panel-default">
    <div class="panel-body">
    	<h3> Hi,${form.name}</h3><br>
    	<h4>Your Form has been Submitted Successfully.</h4><br>
    	<h4>Your Reference Number is ${form.passno}.</h4><br>
    	<h4 style="color:red;">*Use this Number to see your status and to download Pass.</h4>
    </div>
  </div>
</div>
</body>
</html>