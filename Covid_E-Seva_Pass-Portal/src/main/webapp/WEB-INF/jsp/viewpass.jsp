<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Pass</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <style>
   .heading {
	font-size: 18px;
    font-weight: bold;
    margin-bottom: 30px;
    color: #1e1e1e;
    padding-bottom: 10px;
    border-bottom: solid 3px green;
    text-shadow: 0 0 black;
}
   </style>
</head>
<body>
	<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/home">COVID E-PASS PORTAL</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li ><a href="/adminmodule">Home</a></li>
      <li><a href="/admin">LogOut</a></li>
    </ul>
  </div>
</nav>
<div class="container">
<div class="col-sm-12 col-md-12 col-lg-12">
    <div class="card">
    <img src="images/92-928124_see-our-current-openings-people-logo-green-clipart.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Enter Id Of The Citizen To Generate Pass</h5>
        <input type="text" class="form-control" class="card-text" id="pass" placeholder="Id Required" style="width:50%;">
        <button type="button" class="btn btn-primary" onclick="showPass()">Check Availability</button>
      </div>
    </div> 
  </div>
  <div class="col-sm-12 col-md-12 col-lg-12" id="add" style="display:none;">
    <div class="heading">Eligibility Status</div>
    <table class="table table-striped">
  		<thead>
  			<tr>
  			<th scope="row">Name:</th>
  			<td id="name"></td>
  			</tr>
  		</thead>
  		<tbody>	
  			<tr>
  			<th scope="row">Status:</th>
  			<td id="status"></td>
  			</tr>
  		</tbody>
  	</table>
  	<div class="heading">Review</div>
  		<div id="feedback"></div>
  		<button type="button" class="btn btn-primary" onclick="generate()" id="button" style="display:none;">Initiate Pass</button>	
  		<div id="initiate" style="display:none;">
  			<div class="heading">Initiate Status</div>
  			<h5 class="card-title">Pass Initiated Successfully</h5>
  			<a href="epass"><button class="btn btn-primary">View Pass</button></a>
  			<div class="heading">Upload</div>
  			<form method="post" action="uploadFiles" enctype="multipart/form-data">
  			<input type="file" id="myfile" name="myfile"  multiple required>
  			 <button type="submit" class="btn btn-primary">Submit</button>
  			</form>
		</div>
  </div>
  </div>
</body>
<script>
	function showPass()
	{
		var id=document.getElementById("pass").value;
		var link="http://localhost:8080/details/";
	    var y=id;
	    var url=link.concat(y);
		var request=new XMLHttpRequest();
		 request.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			      var details=JSON.parse(this.responseText);
			      console.log(details);
			      renderHTML(details);
			    }
			  };
			  request.open("GET", url, true);
			  request.send();
	}
	function renderHTML(data)
	{
		var name=data.name;
		var status=data.status.status;
		document.getElementById("name").innerHTML=data.name;
		document.getElementById("status").innerHTML=data.status.status;
		if(status === "yes")
			{
				document.getElementById("feedback").innerHTML="<h4>"+name+" is eligible for pass </h4>";
				document.getElementById("button").style.display="block";
			}
		else
			document.getElementById("feedback").innerHTML="<h4>"+name+" is not eligible For pass </h4>";
		document.getElementById("add").style.display="block";
	}
	function generate()
	{
		var id=document.getElementById("pass").value;
		var req="id=";
		req=req.concat(id);
		var request=new XMLHttpRequest();
		 request.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			      var details=(this.responseText);
			      console.log(details);
			      document.getElementById("initiate").style.display="block";
			    }
			  };
			  request.open("POST", 'http://localhost:8080/pass', true);
			  request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			  request.send(req);
	}
</script>
</html>