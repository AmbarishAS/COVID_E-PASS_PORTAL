<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
    
<head>
	<title>OTP Authentication</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/otp.css">
</head>

<body>
	<div class="container h-100">
		<div class="d-flex justify-content-center h-100">
			<div class="user_card">
				<div class="d-flex justify-content-center">
					<div class="brand_logo_container">
						<img src="images/613-6130097_call-icon-rectangle-otp-verification-vector-hd-png.png" class="brand_logo" alt="Logo">
					</div>
				</div>
				<div class="d-flex justify-content-center form_container">
					<form action="" method="post">
						<div class="input-group mb-3">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" name="mobileno" id="mobileno" class="form-control input_user" value="" placeholder="Enter MobileNumber" onblur="sendOTP()">
						</div>
						<div class="input-group mb-2">
							<div class="input-group-append">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="text" name="otp" id="otp" class="form-control input_pass" value="" placeholder="Enter Your OTP">
						</div>
						<div class="form-group">
							
						</div>
							<div class="d-flex justify-content-center mt-3 login_container">
				 	<button type="button" name="button" class="btn login_btn" onclick="verifyOTP()">Verify</button>
				   </div>
				   <div id="wrong" style="color:white;"></div>
					</form>
				</div>
		
				<div class="mt-4">
				
				</div>
			</div>
		</div>
	</div>
	<script>
		function sendOTP()
		{
			var mobileno=document.getElementById("mobileno").value;
			var url="http://localhost:8080/number/";
			url=url.concat(mobileno);
			var request= new XMLHttpRequest();
			 request.onreadystatechange = function() {
				    if (this.readyState == 4 && this.status == 200) {
				      console.log(this.responseText);
				    }
				  };
				  request.open("GET", url, true);
				  request.send();
		}
		function verifyOTP()
		{
			var otp=document.getElementById("otp").value;
			var mobileno=document.getElementById("mobileno").value;
			var url="http://localhost:8080/verify/";
			url=url.concat(mobileno);
			var s="otp=";
			s=s.concat(otp);
			var request= new XMLHttpRequest();
			 request.onreadystatechange = function() {
				    if (this.readyState == 4 && this.status == 200) {
					    var x=this.responseText;
				      console.log(x);
				      renderHTML(x);
				    }
				  };
				  request.open("POST", url, true);
				  request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
				  request.send(s);	
		}
		function renderHTML(x)
		{
			x=x.toString();
			if(x==="OTP verified Sucessfully")
		      {
	    	  window.location.href="http://localhost:8080/home";
		      }
	      else if(x==="OTP Expired")
		      {
		      	document.getElementById("wrong").innerHTML="*Your OTP is Expired.";
		      }
	      else if(x==="MobileNumber Not Found")
		      {
		      	document.getElementById("wrong").innerHTML="*Enter Mobile Number.";
		      }
		}
	</script>
</body>
</html>
    