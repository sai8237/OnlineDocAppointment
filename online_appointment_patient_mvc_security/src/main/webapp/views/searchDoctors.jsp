
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
    
  <!--   <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
      rel="stylesheet"
    />
    Google Fonts
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
      rel="stylesheet"
    />
    MDB
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.css"
      rel="stylesheet"
    /> -->
<title>Search Doctor</title>
  </head>
   <style>
  .jumbotron {
    padding:75px 30px 75px 30px;
    margin:0px 0px 50px 0px;
    background: black ;
    color: white;
    text-align: center;
}

table {
  border-collapse: collapse;
  width: 95%;
  margin-bottom: 10%;
}

th, td {
  padding: 0px;
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
  color: black !important;
}

.button {
  background-color: #4CAF50; /* Green */
  border: none;
  padding: 9px 17px;
  text-align: center;
  text-decoration: none;
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

.button1:hover {
  background-color: #f2b636;
  color: white;
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
        <a class="nav-link" href="/patient/search">SearchDoctor</a>
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



                            
	 <p><header class="jumbotron">
                    <p><h1>Hi ${patientName}</h1></p>
                    <h1>Doctors List</h1>
    </header> </p>
	      
	       <!-- <div class="form-outline datetimepicker" data-mdb-inline="true" >
	       			  <input type="text" class="form-control" id="datetimepickerInline" />
	       			  <label for="datetimepickerInline" class="form-label">
	       			    Select Date and Time</label
	       			  >
	       			</div> -->
	<table border="2" width="70%" cellpadding="2" align="center">
	          
	<tr><th>DoctorName</th><th>Category</th><th>Mobile Number</th><th>Fees</th><th>E-mail</th><th>Book</th></tr>
    <c:forEach var="doctor" items="${doctorList}"> 
    
    <tr> 
    <td>${doctor.name}</td>
    <td>${doctor.category}</td>
    <td>${doctor.mobile}</td>
    <td>${doctor.fee}</td>
    <td>${doctor.email}</td>
     <td> <button class="button button1"><a href="booking/${doctor.name}" >Book</a></button></td>
    </tr>
    </c:forEach>
    </table>
	
	
	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    
   <script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.3.0/mdb.min.js"
></script>
  </body>
</html>
