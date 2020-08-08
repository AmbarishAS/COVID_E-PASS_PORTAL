<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Check Status</title>
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
      <li ><a href="/home">Home</a></li>
      <li ><a href="/download">Download Pass</a></li>
    </ul>
  </div>
  </nav>
  <div class="container">
  <div class="heading">Status Check</div>
<div class="panel panel-default">
    <div class="panel-body">
    <div class="card">
    <img src="images/92-928124_see-our-current-openings-people-logo-green-clipart.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Enter Your Reference Number</h5>
        <input type="text" class="form-control" class="card-text" id="pass" placeholder="Reference Number Required" style="width:30%;">
        <button type="button" class="btn btn-primary" onclick="check()">Check Status</button>
      </div>
    </div> 
    <div id="info" style="display:none;">
    	<h3 id="info1"></h3><br>
    	<h4 id="info2"></h4>
    </div>
  </div>
</div>
</div>
  <script>
	function check()
	{
		var id=document.getElementById("pass").value;
		var req="id=";
		req=req.concat(id);
		var request=new XMLHttpRequest();
		 request.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			      var details=this.responseText;
			      console.log(details);
			      if(details === "ok")
				      {
				       	document.getElementById("info1").innerHTML="You are eligible for Pass."
				       	document.getElementById("info2").innerHTML="Go to Download Section To Avail."   	
				      }
			      else
				      {
			    	  document.getElementById("info1").innerHTML="You are Not eligible for Pass."
				      }
			      document.getElementById("info").style.display="block";
			    }
			  };
			  request.open("POST", 'http://localhost:8080/statuscheck', true);
			  request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			  request.send(req);
	}
  </script>
</body>
</html>