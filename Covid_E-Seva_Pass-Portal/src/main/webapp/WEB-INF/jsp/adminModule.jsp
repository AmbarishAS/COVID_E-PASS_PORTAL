<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>AdminModule</title>
<style>
	.card
	{
		box-shadow: 0px 0px 5px 3px rgba(0, 0, 0, 0.25);
		box-sizing:border-box;
		width:280px;
	}
</style>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/index">COVID E-PASS PORTAL</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li ><a href="/">Home</a></li>
    </ul>
  </div>
</nav>

<div class="container">
 	<div class="row" style="margin-left: 20%;margin-top: 10%;">
  <div class="col-sm-6 col-lg-6" style="padding-right: 30px">
    <div class="card">
  <img class="card-img-top" src="images/92-928124_see-our-current-openings-people-logo-green-clipart.png" alt="Card image cap" style="width:280px;height:256px;">
  <div class="card-body">
    <h3 class="card-title">   Citizen Details</h3>
    <a href="/viewdetails" class="btn btn-primary">View</a>
  </div>
</div>
  </div>
  <div class="col-sm-6 col-lg-6">
   <div class="card">
  <img class="card-img-top" src="images/user-settings-icon.png" alt="Card image cap" style="width:280px;height:256px">
  <div class="card-body">
    <h3 class="card-title">  Generate Status</h3>
    <a href="/viewstatus" class="btn btn-primary">Generate</a>
  </div>
</div>
  </div>
</div>
<div class="row" style="margin-left: 20%;margin-top: 5%;">
  <div class="col-sm-6 col-lg-6" style="padding-right: 30px">
    <div class="card">
  <img class="card-img-top" src="images/2279219_original.jpg" alt="Card image cap" style="width:280px;height:256px">
  <div class="card-body">
    <h3 class="card-title"> Generate Pass</h3>
    <a href="/viewpass" class="btn btn-primary">Generate</a>
  </div>
</div>
  </div>
  <div class="col-sm-6 col-lg-6" style="padding-right: 30px">
    <div class="card">
  <img class="card-img-top" src="images/Graphicloads-100-Flat-2-Inside-logout.ico" alt="Card image cap" style="width:280px;height:256px">
  <div class="card-body">
    <h3 class="card-title">Logout</h3>
    <a href="/logout" class="btn btn-primary">Logout</a>
  </div>
</div>
  </div>
  </div>
</div>
</body>
</html>