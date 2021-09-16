
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
    <link rel="stylesheet"  href="../css/style.css"/>
    <title>Appointment</title>
  </head>
  <body style="text-align:center;">
    
    
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
        <a class="nav-link" href="/admin">AdminHome<span class="sr-only">(current)</span></a>
      </li>
    
       <li class="nav-item">
        <a class="nav-link" href="/admin/doctors">Doctors</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Signin</a>
      </li>
    </ul>
  </div>
</nav>

	
	
	<p><header class="jumbotron">
                    <h1>Welcome Admin</h1>
    </header> </p>
    <p><h1>Registered Appointments </h1></p>
	<table border="2" width="70%" cellpadding="2" align="center">
	<tr><th>BookId</th><th>DoctorName</th><th>PatientName</th><th>Payment</th><th>Status</th><th>DateTime</th><th>Made Payment</th><th>Delete</th></tr>
    <c:forEach var="admin" items="${list}"> 
    <tr>
    <td>${admin.bookId}</td>
    <td>${admin.doctorName}</td>
    <td>${admin.patientName}</td>
    <td>${admin.payment}</td>
    <td>${admin.status}</td>
    <td>${admin.dateTime}</td>
    <td><button class="button button1"><a class ="linkclick" href="/admin/changestatus/${admin.bookId}" >Change Status</a></button></td>
    <td><button class="button button1"><a class ="linkclick" href="/admin/delete/${admin.bookId}" >Delete</a></button></td>
    </tr>
    </c:forEach> 
    </table>


	
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>

