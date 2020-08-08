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
<title>Status</title>
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
        <h5 class="card-title">Enter Id Of The Citizen To Generate Status</h5>
        <input type="text" class="form-control" class="card-text" id="status" placeholder="Id Required" style="width:50%;">
        <button type="button" class="btn btn-primary" onclick="showReports()">View Reports</button>
      </div>
    </div>
  </div>
  <div class="col-sm-12 col-md-12 col-lg-12" id="add" style="display:none">
  <div class="heading">Personal Details</div>
	<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <td id="name"></td>
      <th scope="col">State From</th>
      <td id="statefrom"></td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Mobile Number</th>
      <td id="mobileno"></td>
      <th scope="row">District From</th>
      <td id="districtfrom"></td>
    </tr>
    <tr>
      <th scope="row">Id Type</th>
      <td id="idtype"></td>
      <th scope="row">Address From</th>
      <td id="addressfrom"></td>
    </tr>
    <tr>
      <th scope="row">Id Number</th>
      <td id="idnumber"></td>
      <th scope="row">District To</th>
      <td id="districtto"></td>
    </tr>
    <tr>
      <th scope="row">Category</th>
      <td id="category"></td>
      <th scope="row">Address To</th>
      <td id="addressto"></td>
    </tr>
    <tr>
      <th scope="row">Purpose</th>
      <td id="purpose"></td>
      <th scope="row">PinNo</th>
      <td id="pinno"></td>
    </tr>
    <tr>
      <th scope="row">Vehicle</th>
      <td id="vehicle"></td>
      <th scope="row">Vehicle Number</th>
      <td id="vehiclenumber"></td>
    </tr>
    <tr>
      <th scope="row">Date</th>
      <td id="date"></td>
      <th scope="row">Additional Persons</th>
      <td id="additionalpersons"></td>
    </tr>
  </tbody>
</table>
  <div class="heading">Reports</div>
  	<div id="sf" style="border-bottom: solid 3px red;"></div>
  	<table class="table table-striped">
  		<thead>
  			<tr>
  			<th scope="row">Active:</th>
  			<td id="sactive"></td>
  			</tr>
  		</thead>
  		<tbody>	
  			<tr>
  			<th scope="row">Active Rate:</th>
  			<td id="sactiverate"></td>
  			</tr>
  			<tr>
  			<th scope="row">Confirmed:</th>
  			<td id="sconfirmed"></td>
  			</tr>
  			<tr>
  			<th scope="row">Death Rate:</th>
  			<td id="sdeathrate"></td>
  			</tr>
  			<tr>
  			<th scope="row">Deaths:</th>
  			<td id="sdeaths"></td>
  			</tr>
  			<tr>
  			<th scope="row">Recovered:</th>
  			<td id="srecovered"></td>
  			</tr>
  			<tr>
  			<th scope="row">Recovered Rate:</th>
  			<td id="srecoveredrate"></td>
  			</tr>
  		</tbody>
  	</table>
  	<div id="from" style="border-bottom: solid 3px red;"></div>
	<table class="table table-striped">
  <thead>
    <tr>
      <th scope="row">Active:</th>
      <td id="fromactive"></td>
    </tr>
  </thead>
  <tbody>
  <tr>
	  <th scope="row">Active Rate:</th>
      <td id="factiverate"></td>
    </tr>
    <tr>
	  <th scope="row">Confirmed:</th>
      <td id="fromconfirmed"></td>
    </tr>
    <tr>
   		<th scope="row">Deceased:</th>
      <td id="fromdeceased"></td>
    </tr>
    <tr>
      <th scope="row">Recovered:</th>
      <td id="fromrecovered"></td>
    </tr>
    <tr>
	  <th scope="row">Recovered Rate:</th>
      <td id="frecoveredrate"></td>
    </tr>
  </tbody>
</table>
	<div id="to" style="border-bottom: solid 3px red;"></div>
   <table class="table table-striped">
		<thead>
    <tr>
      <th scope="row">Active:</th>
      <td id="toactive"></td>
    </tr>
  </thead>
  <tbody>
  <tr>
	  <th scope="row">Active Rate:</th>
      <td id="tactiverate"></td>
    </tr>
    <tr>
	  <th scope="row">Confirmed:</th>
      <td id="toconfirmed"></td>
    </tr>
    <tr>
   		<th scope="row">Deceased:</th>
      <td id="todeceased"></td>
    </tr>
    <tr>
      <th scope="row">Recovered:</th>
      <td id="torecovered"></td>
    </tr>
    <tr>
	  <th scope="row">Recovered Rate:</th>
      <td id="trecoveredrate"></td>
    </tr>
  </tbody>
   </table> 
   <div class="heading">Generate Status</div>
   	<div class="card">
    <img src="images/images.png" class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Status</h5>
        <input type="text" class="form-control" class="card-text" id="statusgenerate" placeholder="YES or NO" style="width:50%;">
        <button type="button" class="btn btn-primary" onclick="generateStatus()">Generate</button>
      </div>
    </div>
  </div>
 </div> 
<script>
function showReports()
{
	var id=document.getElementById("status").value;
	var link="http://localhost:8080/details/";
    var y=id;
    var url=link.concat(y);
	var request=new XMLHttpRequest();
	 request.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      var details=JSON.parse(this.responseText);
		      console.log(details);
		      renderHTML(details);
		      renderHTML3(details);
		    }
		  };
		  request.open("GET", url, true);
		  request.send();
}
function renderHTML(data)
{
	var request=new XMLHttpRequest();
	 request.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      var details=JSON.parse(this.responseText);
		      console.log(details);
		      renderHTML2(details,data);
		    }
		  };
		  request.open("GET", 'https://api.covid19india.org/state_district_wise.json', true);
		  request.send();
}
function renderHTML2(data1,data)
{
	document.getElementById("name").innerHTML=data.name;
	document.getElementById("mobileno").innerHTML=data.mobileno;
	document.getElementById("idtype").innerHTML=data.idtype;
	document.getElementById("idnumber").innerHTML=data.idnumber;
	document.getElementById("statefrom").innerHTML=data.tr.statefrom;
	document.getElementById("districtfrom").innerHTML=data.tr.districtfrom;
	document.getElementById("addressfrom").innerHTML=data.tr.addressfrom;
	document.getElementById("addressto").innerHTML=data.tr.addressto;
	document.getElementById("districtto").innerHTML=data.tr.districtto;
	document.getElementById("pinno").innerHTML=data.tr.pinno;
	document.getElementById("category").innerHTML=data.purposedetails.category;
	document.getElementById("purpose").innerHTML=data.purposedetails.purpose;
	document.getElementById("vehicle").innerHTML=data.other.vehicle;
	document.getElementById("vehiclenumber").innerHTML=data.other.vehicleno;
	document.getElementById("date").innerHTML=data.other.date;
	document.getElementById("additionalpersons").innerHTML=data.other.additionalpersons;
	document.getElementById("add").style.display="block";
	var statefrom=data.tr.statefrom;
	var from=data.tr.districtfrom;
	var to=data.tr.districtto;
	var fconfirm=data1[statefrom].districtData[from].confirmed;
	var factive=data1[statefrom].districtData[from].active;
	var frecovered=data1[statefrom].districtData[from].recovered;
	var tconfirm=data1[statefrom].districtData[to].confirmed;
	var tactive=data1[statefrom].districtData[to].active;
	var trecovered=data1[statefrom].districtData[to].recovered;
	document.getElementById("from").innerHTML="<h4>"+data.tr.districtfrom+"</h4>";
	document.getElementById("fromactive").innerHTML=data1[statefrom].districtData[from].active;
	document.getElementById("factiverate").innerHTML=(factive/fconfirm)*100;
	document.getElementById("fromconfirmed").innerHTML=data1[statefrom].districtData[from].confirmed;
	document.getElementById("fromdeceased").innerHTML=data1[statefrom].districtData[from].deceased;
	document.getElementById("fromrecovered").innerHTML=data1[statefrom].districtData[from].recovered;
	document.getElementById("frecoveredrate").innerHTML=(frecovered/fconfirm)*100;
	document.getElementById("to").innerHTML="<h4>"+data.tr.districtto+"</h4>";
	document.getElementById("toactive").innerHTML=data1[statefrom].districtData[to].active;
	document.getElementById("tactiverate").innerHTML=(tactive/tconfirm)*100;
	document.getElementById("toconfirmed").innerHTML=data1[statefrom].districtData[to].confirmed;
	document.getElementById("todeceased").innerHTML=data1[statefrom].districtData[to].deceased;
	document.getElementById("torecovered").innerHTML=data1[statefrom].districtData[to].recovered;
	document.getElementById("trecoveredrate").innerHTML=(trecovered/tconfirm)*100;
	document.getElementById("add").style.display="block";	
}
function renderHTML3(data)
{
	var request=new XMLHttpRequest();
	 request.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      var details=JSON.parse(this.responseText);
		      console.log(details);
		      renderHTML4(data,details);
		    }
		  };
		  request.open("GET", 'https://api.covid19india.org/data.json', true);
		  request.send();
}
function renderHTML4(data1,data)
{
	var confirm=data.statewise[2].confirmed;
	var death=data.statewise[2].deaths;
	var active=data.statewise[2].active;
	var recovered=data.statewise[2].recovered;
	document.getElementById("sf").innerHTML="<h4>"+data1.tr.statefrom+"</h4>";
	document.getElementById("sactive").innerHTML=data.statewise[2].active;
	document.getElementById("sactiverate").innerHTML=(active/confirm)*100;
	document.getElementById("sconfirmed").innerHTML=data.statewise[2].confirmed;
	document.getElementById("sdeathrate").innerHTML=(death/confirm)*100;
	document.getElementById("sdeaths").innerHTML=data.statewise[2].deaths;
	document.getElementById("srecovered").innerHTML=data.statewise[2].recovered;
	document.getElementById("srecoveredrate").innerHTML=(recovered/confirm)*100;
}
function generateStatus()
{
	var id=document.getElementById("status").value;
	var status=document.getElementById("statusgenerate").value;
	var n="id=";
	n=n.concat(id);
	n=n.concat("&");
	n=n.concat("status=");
	n=n.concat(status);
	var request=new XMLHttpRequest();
	 request.onreadystatechange = function() {
		    if (this.readyState == 4 && this.status == 200) {
		      var details=this.responseText;
		      console.log(details);
		    }
		  };
		  request.open("POST", 'http://localhost:8080/statusupdate', true);
		  request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		  request.send(n);
}
</script>
</body>
</html>