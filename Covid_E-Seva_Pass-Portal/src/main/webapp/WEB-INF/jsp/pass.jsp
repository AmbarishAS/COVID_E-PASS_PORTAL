<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" style="margin-left:18%;">
<head>
<title>E-PASS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
@media print {
  * {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}


label
{
	font-size: 15px;
    font-weight: bold;
    text-shadow: 0 0 black;
    padding-bottom: 10px;
}
/* Style the header */
header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
  height:290px;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 20%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  background-color: #f1f1f1;
  height: 300px;
  width:680px;
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
  nav, article {
    width: 100%;
    height: auto;
  }
}
  
}
* {
  box-sizing: border-box;
}

body {
  font-family: Arial, Helvetica, sans-serif;
}


label
{
	font-size: 15px;
    font-weight: bold;
    text-shadow: 0 0 black;
    padding-bottom: 10px;
}
/* Style the header */
header {
  background-color: #666;
  padding: 30px;
  text-align: center;
  font-size: 35px;
  color: white;
  height:290px;
}

/* Create two columns/boxes that floats next to each other */
nav {
  float: left;
  width: 20%;
  height: 300px; /* only for demonstration, should be removed */
  background: #ccc;
  padding: 20px;
}

/* Style the list inside the menu */
nav ul {
  list-style-type: none;
  padding: 0;
}

article {
  float: left;
  padding: 20px;
  background-color: #f1f1f1;
  height: 300px;
  width:680px;
}

/* Clear floats after the columns */
section:after {
  content: "";
  display: table;
  clear: both;
}

/* Style the footer */
footer {
  background-color: #777;
  padding: 10px;
  text-align: center;
  color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */

}
</style>
</head>

<body>
<div class="container">
<header style="width:928px">
<img class="card-img-top" src="images/75501808.png" alt="Card image cap" style="width:300px;height:256px">
</header>

<section>
  <nav>
  </nav>
  
  <article>
  		<form class="form-horizontal">
  <div class="form-group">
    <label class="control-label col-sm-2">Name :</label> ${form.name}
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Mobile Number :</label> ${form.mobileno} 
    <div class="form-group">
    <label class="control-label col-sm-2">Pass Number :</label> ${form.passno}
   </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Proof :</label> ${form.idtype}
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Proof Number :</label>${form.idnumber}
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">From :</label> ${form.tr.districtfrom}
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Address :</label>${form.tr.addressto}
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">To :</label>${form.tr.districtto}
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Address :</label>${form.tr.addressto}
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Reason For Travel :</label>${form.purposedetails.purpose }
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Total Travellers :</label> ${form.other.additionalpersons}
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Date :</label>${form.other.date}
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Validity :</label>2 days from specified date
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Vehicle Number :</label>${form.other.vehicleno}
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2">Vehicle Type :</label>${form.other.vehicle}
  </div>
</form>
  		
  </article>
</section>

<footer style="width:925px;">
  <button class="btn btn-primary" onclick="download()" id="download" style="display:block;">Download</button>
</footer>
</div>
<script>
	function download()
	{
		document.getElementById("download").style.display="none";
		window.print();
	}
</script>
</body>
</html>
    