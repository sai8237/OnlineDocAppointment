
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
   
    
	<title>Welcome Admin</title>
  </head>
<style>
body{
background: white!important;
}
.bg-primary{
	background:#009688 !important
}
.banner{
	width:100%;
	height:93vh;
	background:linear-gradient(rgba(0,0,0,.5),rgba(0,0,0,.5)),url(../img/Doctors-banner.jpg);
	background-size:cover;
	color:white;
}
.my-card{
	padding:20px;
	background:#FFFFFF;
}

#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 600px;
  height: 360px;
  border: 1px solid #9C9C9C;
  background-color: white;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
}

#register .container #register-row #register-column #register-box {
  margin-top: 10px;
  max-width: 600px;
  height: 780px;
  border: 1px solid #9C9C9C;
  background-color: white;
}
#register .container #register-row #register-column #register-box #register-form {
  padding: 30px;
}
#register .container #register-row #register-column #register-box #register-form #login-link {
  margin-top: -85px;
}

.jumbotron {
    padding:90px 30px 90px 30px;
    margin:0px 0px 50px 0px;
    background: black ;
    color: white;
    text-align: center;
}

table {
  border-collapse: collapse;
  width: 95%;
}

th, td {
  padding: 2px;
  font-family: "Verdana";
}

tr:nth-child(even){background-color: #f2f2f2;
font-family: "Verdana";
}

th {
  background-color: black;
  color: white;
  padding: 4px;
  font-family: "Verdana";
}
h1{
  font-family: "Verdana";
}
a {
  text-decoration: none !important;
  color: white !important;
}

.button {
  background-color: #4CAF50; /* Green */
  border: none;
  padding: 9px 17px;
  text-align: center;
  text-decoration: none;
  color: black;
  display: inline-block;
  font-size: 14px;
  margin: 8px 6px;
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius:40px
}

.btnhome{
  background-color: #f2b636;
  color: white;
}
.button1 {
  background-color: white; 
  color: black; 
  border: 3px solid #f2b636;
}

.btn {
  color:white;
}

.button1:hover {
  background-color: #f2b636;
  color: white;
}
</style>
<body style="text-align:center;">

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="#">
         <img src="../img/logo.jpg" width="40" height="40" align-middle>
        <span class="text-uppercase font-weight-bold">Online Doctor Appointment</span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="navbarNav">
          <ul class="navbar-nav ml-auto text-uppercase">
          
            <li class="nav-item active">
              <a class="nav-link" href="/">AdminHome<span class="sr-only">(current)</span></a>
            </li>
          
             <li class="nav-item">
              <a class="nav-link" href="/signin">SignIn</a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="#">Register</a>
            </li>
         
            
          </ul>
        </div>
      </nav>
    

	<section class="banner d-flex justify-content-center">
        <div class="text-center mt-4">
        <h1 class="font-weight-bold">Welcome to Online Doctor Appointment</h1>
        <p class="col-md-6 offset-md-3">Medigrity Innovations has launched a healthcare information and online appointments site for patients in India that connects with its physician community.It also contains a range of health information, contact lists of hospitals and clinics, pathological laboratories, diagnostic services and wellness centres, as well as online discussion forums</p>
        <button class="btn btn-warning btn-lg">Get Started</button>
        </div>
    </section>
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
      </body>
</html>
       
       
       