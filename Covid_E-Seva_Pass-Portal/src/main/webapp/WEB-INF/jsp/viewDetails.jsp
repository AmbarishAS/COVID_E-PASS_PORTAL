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
  <link href="css/home.css"
        rel="stylesheet">
<title>Details</title>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/index">COVID E-PASS PORTAL</a>
    </div>
    <ul class="nav navbar-nav navbar-right">
      <li ><a href="/adminmodule">Home</a></li>
      <li><a href="/viewstatus">Generate Status</a></li>
    </ul>
  </div>
</nav>
<div class="container">
	<div class="col-sm-12 col-md-12 col-lg-12">
    <div class="card">
    <img src="images/92-928124_see-our-current-openings-people-logo-green-clipart.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">View All Status</h5>
        <button type="button" class="btn btn-primary" onclick="showDetails()">View</button>
      </div>
    </div>
  </div>
  <div class="col-sm-12 col-md-12 col-lg-12" id="add" style="display:none">
  <div class="heading">Status Dashboard</div>
  	<table class="table table-striped">
  	<tbody id="table">
  		<tr>
  		<th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Status</th>
      </tr>
  	</tbody>
  	</table>
  </div>
  
</div>

<script>
	function showDetails()
	{
		var request=new XMLHttpRequest();
		 request.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			      var details=JSON.parse(this.responseText);
			      console.log(details);
			      renderHTML(details);
			    }
			  };
			  request.open("GET", 'http://localhost:8080/alldetails', true);
			  request.send();
	}
	function renderHTML(data)
	{
		var table=document.getElementById("table");
		for(var i=0;i<data.length;i++)
			{
			 var tr=document.createElement("tr");
			 var th=document.createElement("td");
			 var id=data[i].id;
			 var new1 = document.createTextNode(id); 
			 th.appendChild(new1);
			 tr.appendChild(th);
			 var th1=document.createElement("td");
			 var name=data[i].name;
			 var new2 = document.createTextNode(name); 
			 th1.appendChild(new2);
			 tr.appendChild(th1);
			 var th2=document.createElement("td");
			 var status=data[i].status.status;
			 var new3 = document.createTextNode(status); 
			 th2.appendChild(new3);
			 tr.appendChild(th2);
			 table.appendChild(tr);
			}
		document.getElementById("add").style.display="block";
	}
	
</script>
</body>
</html>