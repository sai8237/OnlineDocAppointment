
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
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
<title>Home Page</title>
  </head>
<style>
   .jumbotron {
    padding:90px 30px 90px 30px;
    margin:0px 0px 50px 0px;
    background: black ;
    color: white;
    text-align: center;
    font-family: "Verdana";
}
input[type=text], input[type=password], input[type=number], input[type=email], select {
  width: 100%;
  padding: 12px 20px;
  margin: 4px 4px;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 50px;
  box-sizing: border-box;
  font-family: "Verdana";
  font-size: 16px;
}
input[type=submit] {
  width: 20%;
  background-color: white;
  color: black;
  padding: 10px 20px;
  margin: 8px 0;
  border: 3px solid #f2b636;
  border-radius: 50px;
  cursor: pointer;
  font-family: "Verdana";
  font-size: 16px;
}
input[type=submit]:hover {
  background-color: #f2b636;
}
#form{
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px 400px;
  font-family: "Verdana";
  font-size: 16px;
}
</style>
 
  <body style="text-align:center !important;">
    
    
  <nav class="navbar navbar-expand-lg navbar navbar-light" style="background-color: white;">
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
        <a class="nav-link" href="/patient/search">PatientHome</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="/patient/viewall">Appointments</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/patient/pay">Payment</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/prescription">Prescriptions</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/logout">Logout</a>
      </li>
    </ul>
  </div>
</nav>

	


 
    
	 <p><header class="jumbotron" >
	 				<h1>Welcome ${patientName}</h1>
                    <h1>Search Doctor</h1>
    </header> </p>
     
       
     <div id = "form">
      <form action="searchdoctor" method="post">
      <label for="specialization">Category:</label>
    <input type="text"  name="specialization" placeholder="Enter Category">

    <label for="reason">Reason:</label>
    <input type="text"  name="reason" placeholder="Enter Reason">
     
      <input type="submit" value="Search" /> <br>
  </form>
  </div>
	

	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
