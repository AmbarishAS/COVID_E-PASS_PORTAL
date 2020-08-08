<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Pass</title>
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
      <li class="active"><a href="/apply">Apply Pass</a></li>
    </ul>
  </div>
</nav>
<script>
function formvalidate()
{
	var count=0;
	var name=document.forms["RegForm"]["name"]; 
	var mobile=document.forms["RegForm"]["mobileno"];
	var idtype=document.forms["RegForm"]["idtype"];
	var idnumber=document.forms["RegForm"]["idnumber"];
	if(name.value == "")
	{
		var x=document.getElementById("val1");
		x.innerHTML="* Name should not be left blank";
        name.focus(); 
        count++;
	}
	if(mobile.value.length<10||mobile.value=="")
		{
			var x=document.getElementById("val2");
			x.innerHTML="* Phone number should contain 10 digits";
			mobile.focus();
			count++;
		}
	
	
	if(count>0)
		return false;
	else
		return true;
}
function validateNo()
{
	var idtype=document.forms["RegForm"]["idtype"];
	var idnumber=document.forms["RegForm"]["idnumber"];
	var aadharNumber=idnumber.value;
	var panNumber=idnumber.value;
	var drivingNumber=idnumber.value;
	console.log(idtype.value);
	if(idtype.value === "Aadhar")
		{
	console.log(idtype.value);
	const d = [
		  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
		  [1, 2, 3, 4, 0, 6, 7, 8, 9, 5], 
		  [2, 3, 4, 0, 1, 7, 8, 9, 5, 6], 
		  [3, 4, 0, 1, 2, 8, 9, 5, 6, 7], 
		  [4, 0, 1, 2, 3, 9, 5, 6, 7, 8], 
		  [5, 9, 8, 7, 6, 0, 4, 3, 2, 1], 
		  [6, 5, 9, 8, 7, 1, 0, 4, 3, 2], 
		  [7, 6, 5, 9, 8, 2, 1, 0, 4, 3], 
		  [8, 7, 6, 5, 9, 3, 2, 1, 0, 4], 
		  [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
		]

		// permutation table
		const p = [
		  [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], 
		  [1, 5, 7, 6, 2, 8, 3, 0, 9, 4], 
		  [5, 8, 0, 3, 7, 9, 6, 1, 4, 2], 
		  [8, 9, 1, 6, 0, 4, 3, 5, 2, 7], 
		  [9, 4, 5, 3, 1, 2, 6, 8, 7, 0], 
		  [4, 2, 8, 6, 5, 7, 3, 9, 0, 1], 
		  [2, 7, 9, 3, 8, 0, 6, 4, 1, 5], 
		  [7, 0, 4, 6, 9, 1, 3, 2, 5, 8]
		]
	let c = 0
	  let invertedArray = aadharNumber.split('').map(Number).reverse()

	  invertedArray.forEach((val, i) => {
		  c = d[c][p[(i % 8)][val]]
	  })
		if(c!=0)
			{
				document.getElementById("val3").innerHTML="Invalid Aadhar Number";
			}
		else
			document.getElementById("val3").innerHTML="Valid Aadhar Number";
	}
	else if(idtype.value === "Pan")
		{
		var regex = /([A-Z]){5}([0-9]){4}([A-Z]){1}$/;
		if (!(regex.test(panNumber.toUpperCase())))
			{
			document.getElementById("val3").innerHTML="Invalid Pan Number";
			}
		}
	else if(idtype.value === "License")
		{
			
			var regex=/^(([A-Z]{2}[0-9]{2})( )|([A-Z]{2}-[0-9]{2}))((19|20)[0-9][0-9])[0-9]{7}$/;
			if(!(regex.test(drivingNumber)))
				{
				document.getElementById("val3").innerHTML="Invalid Driving license Number";
				}
		}
}
</script>
<div class="container">
	<form name="RegForm" action="save" method='post' onsubmit="return formvalidate()">
	<div class="heading" >Applicant Details</div>
	<div class="row">
<div class="col-sm-12 col-md-6 col-lg-6">
		<div class="form-group">
    		<label for="email">Name:</label>
      		<input  type='text' class="form-control" name='name' placeholder="Enter name" value='' style="width:100%;">
      		<span id="val1" style="color:red;"></span>
    	</div>
</div>
<div class="col-sm-12 col-md-6">
		<div class="form-group">
    		<label for="email">MobileNumber:</label>
      		<input  type='text' class="form-control" name='mobileno' placeholder="Enter MobileNo" value='' style="width:100%;">
      		<span id="val2" style="color:red;"></span>
    	</div>	
</div>
<div class="col-sm-12 col-md-6">
    		<label for="email">IdType:</label>
      		<select id="cars" name="idtype" class="form-control">
      			<option value="select Id">Select type of Id</option>
    			<option value="Aadhar">Aadhar</option>
    			<option value="Pan">Pan</option>
   				 <option value="License">Driving License</option>
   				 <option value="Passport">Passport</option>
  			</select>
    	
</div>
<div class="col-sm-12 col-md-6">
		<div class="form-group">
    		<label for="email">IdNumber:</label>
      		<input  type='text' class="form-control" name='idnumber' placeholder="Enter Number" style="width:100%;" onblur="validateNo()">
      		<span id="val3" style="color:red;"></span>
    	</div>
</div>
	</div>
	<div class="heading">Movement details</div>
	
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12"><h4>TravellingFrom</h4></div><br>
		<div class="col-sm-12 col-md-6 col-lg-6">
			<div class="form-group">
    			<label for="email">StateFrom:</label>
      			<input  type='text' class="form-control" name='statefrom' placeholder="Enter State"  style="width:100%;">
    		</div>
		</div>
		<div class="col-sm-12 col-md-6 col-lg-6">
			<div class="form-group">
    			<label for="email">DistrictFrom:</label>
      			<input  type='text' class="form-control" name='districtfrom' placeholder="Enter District"  style="width:100%;">
      			<span style="color:red;">* District Name should Start with capital letter</span>
    		</div>
		</div>
		<div class="col-sm-12 col-md-6 col-lg-6">
			<div class="form-group">
    			<label for="email">Address From:</label>
      			<input  type='text' class="form-control" name='addressfrom' placeholder="Enter Address"  style="width:100%;">
    		</div>
		</div>
		<div class="col-sm-12 col-md-12 col-lg-12"><h4>TravellingTo</h4></div><br>
		<div class="col-sm-12 col-md-6 col-lg-6">
			<div class="form-group">
    			<label for="email">District:</label>
      			<input  type='text' class="form-control" name='districtto' placeholder="Enter District"  style="width:100%;">
      			<span style="color:red;">* District Name should Start with capital letter</span>
    		</div>
		</div>
		<div class="col-sm-12 col-md-6 col-lg-6">
			<div class="form-group">
    			<label for="email">Address To:</label>
      			<input  type='text' class="form-control" name='addressto' placeholder="Enter Address"  style="width:100%;">
    		</div>
		</div>
		<div class="col-sm-12 col-md-6 col-lg-6">
			<div class="form-group">
    			<label for="email">PIN code:</label>
      			<input  type='text' class="form-control" name='pinno' placeholder="Enter PIN"  style="width:100%;">
    		</div>
		</div>
	</div>
	<div class="heading">Purpose of Visit</div>
	<div class="row">
		<div class="col-sm-12 col-md-6">
    		<label for="Category">Category:</label>
      		<select  name="category" class="form-control">
      			<option value="select type">Select type</option>
    			<option>Government Employee</option>
    			<option>Tourism</option>
   				 <option>Quarantine Exemted Category</option>
   				 <option>Essential Service Provider</option>
  			</select>
		</div>
		<div class="col-sm-12 col-md-6">
			<label>Purpose:</label>
				<input  type='text' class="form-control" name='purpose' placeholder="Enter Purpose"  style="width:100%;">
		</div>
	</div>
	<div class="heading">Documents</div>
	<div class="row">
		<div class="col-sm-12 col-md-6">
			<label for="myfile">"Documentary Address Proof of Place Travelling From"</label><br>
			<input type="file"  name="fromdocument">
		</div>
		<div class="col-sm-12 col-md-6">
			<label for="myfile">"Documentary Address Proof of Place Travelling 	To"</label><br>
			<input type="file"  name="todocument">
		</div>
		<div class="col-sm-12 col-md-6">
			<label for="myfile">"Government Id Proof"</label><br>
			<input type="file"  name='idproof'>
		</div>
	</div>	
	<div class="heading">Other Details</div>
	<div class ="row">
		<div class="col-sm-12 col-md-6">
			<label >Vehicle Type:</label>
			<select  name='vehicle' class="form-control">
      			<option value="select type">Select type</option>
    			<option>Two Wheeler</option>
    			<option>Four Wheeler</option>
   				 <option>Goods Vehicle</option>
   				 <option>Agricultural Vehicle</option>
   				 <option>Construction Vehicle</option>
   				 <option>Public Transport</option>
  			</select>
		</div>
		<div class="col-sm-12 col-md-6">
		<div class="form-group">
    			<label for="number">Vehicle Number:</label>
      			<input  type='text' class="form-control" name='vehicleno'  style="width:100%;">
    	</div>
    	</div>
    	<div class="col-sm-12 col-md-6">
    	<div class="form-group">
    			<label >Entry Date</label>
      			<input  type='date' class="form-control" name='date'  style="width:100%;">
    	</div>
    	</div>
    	<div class="col-sm-12 col-md-6">
    	<div class="form-group">
    			<label>Additional Persons:</label><br>
      			<input  type='text' class="form-control" name='additiona'  style="width:100%;">
    	</div>
    	</div>	
	</div>
	<div class="heading">Declaration</div>
	<div class="row">
		<div class="col-sm-12 col-md-12 col-lg-12">
			<label class="control-label">1.I, do hereby declare that the facts and contents given above are true to the best of my knowledge and belief.</label>
		</div>	
		<div class="col-sm-12 col-md-12 col-lg-12">
			<label class="control-label">2.Have you been diagnosed or tested as Covid positive?</label>
			<input  type="radio">yes
			<input type="radio">no
		</div>
		<div class="col-sm-12 col-md-12 col-lg-12">
			<label class="control-label">3.Are you travelling out of notified COVID-19 containment zone or are you under home/ institutional quarantine?</label>
			<input  type="radio">yes
			<input type="radio">no
		</div>
		<div class="col-sm-12 col-md-12 col-lg-12">
			<label class="control-label">4.I have downloaded and Installed Aarogya Setu App Download Aarogya Setu App</label>
			<input  type="radio">yes
			<input type="radio">no
		</div>	
	</div>
	<button  type="submit" class="btn btn-primary" value="submit">Submit</button>
	</form>
</div>
</body>
</html>