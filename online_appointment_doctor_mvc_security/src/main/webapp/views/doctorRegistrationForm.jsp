
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<title>Insert title here</title>
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
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 50px;
  box-sizing: border-box;
  font-family: "Verdana";
  font-size: 16px;
}
input[type=submit] {
  width: 30%;
  background-color: white;
  color: black;
  padding: 14px 20px;
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
        <a class="nav-link" href="/">DoctorHome <span class="sr-only">(current)</span></a>
      </li>
    
      <li class="nav-item">
        <a class="nav-link" href="register">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="signin">Signin</a>
      </li>
    </ul>
  </div>
</nav>
    <p><header class="jumbotron" >
                    <h1>Doctor Registration Portal</h1>
    </header> </p>
     
       
     <div id = "form">
      <form action="processregister" method="post">
      <label for="username">Username</label>
    <input type="text"  name="name" placeholder="Enter Name">

    <label for="password">Password</label>
    <input type="password"  name="password" placeholder="Enter Password">
     
     <label for="email">Email</label>
    <input type="email"  name="email" placeholder="Enter E-mail">

    <label for="category" placeholder="Select Speciality">Category</label>
    <select id="category" name="category">
      <option value="physician">Physician</option>
      <option value="cardiologist">Cardiologist</option>
      <option value="neurologist">Neurologist</option>
      <option value="pathologist">Pathologist</option>
    </select>
    
    <label for="gender" placeholder="Select Gender">Gender</label>
    <select id="cars" name="cars" >
      <option value="male">Male</option>
      <option value="female">Female</option>
    </select>
    
    <label for="mobile">Mobile Number</label>
    <input type="number"  name="mobile" placeholder="Enter Mobile Number">
    
    <label for="fees">Fees</label>
    <input type="number"  name="fee" placeholder="Enter Fees">
      
      <input type="submit" value="Register" /> <br>
  </form>
  </div>
  
  
  
</body>
</html>
