<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">  
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">  
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="css/custom.css"
        rel="stylesheet">
 <meta name="google-signin-client_id" content="277552239105-8us5nc4aftvf4nt8q4lomqrmr5e8iifh">
 <script src="https://apis.google.com/js/platform.js?onload=init"></script>
</head>
<body>
  	${SPRING_SECURITY_LAST_EXCEPTION.message}
  	<div class="container-fluid">
  		
  	 	<div class="row">  
    		<div class="col-sm-12 col-md-6 col-lg-6 " style="padding-right: 0px;padding-left: 0px;">
    			<div class="image">
    			<img alt="" src="images/eberhard-grossgasteiger-CytHrRFp2wU-unsplash.jpg " width="100%" height="83%" class="overlap">
    			<div class="title">
    				<div class="title1">
    				COVID E-PASS PORTAL
    				</div>
    			</div>
    			</div>
    			
    		</div> 
    		<div class="col-sm-12 col-md-6 col-lg-6 bg">
    			<div class="card" style="margin-top: 16%; margin-left:15%;background-color:white;width:550px;padding-left:18%;padding-top:5%;box-shadow: 0px 0px 15px 5px rgba(0, 0, 0, 0.25);box-sizing:border-box;border-radius:25px;height:470px;">			
  					<div class="card-header" style="padding-left:12%"id="heading"><h3 id="al">Account Login</h3></div>
  					<div class="card-body">
  						<form action="login" method='post' id="form">
    						<div class="form-group">
      							<label for="email" id="name">UserName</label>
      							<input id="name1" type='text' class="form-control" name='username' placeholder="Enter username" value='' style="width:65%;">
    						</div>
    						<div class="form-group">
      							<label for="pwd" id="password">Password:</label>
      							<input id="pass" type='password' class="form-control" name='password' placeholder="Enter password" style="width:65%;">
    						</div>
    						<button id="abc"  name="submit" type="submit" class="btn btn-primary" value="submit" style="margin-left:20%;width:20%" onclick="send()" >Login</button><br>
    						<span style="margin-left: 19%;margin-top: 3%;display:inline-block;">Or Signin using</span>
  						</form>
  					</div>
  					  		<div class="card-footer" style="margin-top:10%;box-sizing:border-box;padding-left:1%">
  					  			<div id="my-signin2"></div>
  					  			<button type="button" class="btn btn-outline-danger" id="admin" onclick="admin()" style="margin-top: 4%;margin-left: 17%;">                           
  					  				Admin Login</button>
  					  			</div>
  					  			
  					  						
				</div>
    		</div>  
  		</div>  
  	</div>
  	<script>
    function onSuccess(googleUser) {
      console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
    }
    function onFailure(error) {
      console.log(error);
    }
    function renderButton() {
      gapi.signin2.render('my-signin2', {
        'scope': 'profile email',
        'width': 240,
        'height': 50,
        'longtitle': true,
        'theme': 'dark',
        'onsuccess': onSuccess,
        'onfailure': onFailure
      });
    }
  </script>
  	<script>
  	var b=1;
  	function onSignIn(googleUser) {
  	  var profile = googleUser.getBasicProfile();
  	//window.location.href = "index";
  	  console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
  	  console.log('Name: ' + profile.getName());
  	  console.log('Image URL: ' + profile.getImageUrl());
  	  console.log('Email: ' + profile.getEmail()); // This is null if the 'email' scope is not present.
  	}
  	
  	  function signOut() {
  	    var auth2 = gapi.auth2.getAuthInstance();
  	    auth2.signOut().then(function () {
  	      console.log('User signed out.');
  	    });
  	  }
  	 
  	  function admin()
  	  {
  	  	  if(b === 1)
  	  	  {
			document.getElementById("heading").innerHTML="<h3>Admin Login</h3>";
			document.getElementById("admin").innerHTML="User Login";
			document.getElementById("name").innerHTML="Admin Username";
			document.getElementById("password").innerHTML="Admin Password";
			b=0;
  	  	  }
  	  	  else
  	  	  {
  	  		document.getElementById("heading").innerHTML="<h3>Account Login</h3>";
			document.getElementById("admin").innerHTML="Admin Login";
			document.getElementById("name").innerHTML="UserName";
			document.getElementById("password").innerHTML="Password";  
			b=1;
  	  	  }  
  	  }
  	  function send()
  	  {
		var name=document.getElementById("name1").value;
		var pass=document.getElementById("pass").value;
		var n="name=";
		n=n.concat(name);
		n=n.concat("&");
		n=n.concat("pass=");
		n=n.concat(pass);
		var request= new XMLHttpRequest();
		 request.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			      console.log(this.responseText);
			    }
			  };
			  request.open("POST", 'http://localhost:8080/set', true);
			  request.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
			  request.send(n);
	
  	  }
  	</script>
  	<script src="https://apis.google.com/js/platform.js?onload=renderButton"></script>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>  
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>  
</body>
</html>