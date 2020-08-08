<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Download Pass</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/home">COVID E-PASS PORTAL</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li ><a href="/home">Home</a></li>
    </ul>
  </div>
</nav>
<div class="container">
<div class="col-sm-12 col-md-12 col-lg-12">
    <div class="card">
    <img src="images/92-928124_see-our-current-openings-people-logo-green-clipart.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Enter Your Reference Number</h5>
        <form method="get" action="downloadFile">
        <input type="text" class="form-control" class="card-text" id="pass" placeholder="Reference Number Required" style="width:30%;" name="fileId">
        <button type="Submit" class="btn btn-primary">Download Pass</button>
        </form>
      </div>
    </div> 
  </div>
</div>
</body>
</html>