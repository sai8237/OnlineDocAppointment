<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Booking</title>
</head>
<style>
   .jumbotron {
    padding:90px 30px 90px 30px;
    margin:0px 0px 50px 0px;
    background: black ;
    color: white;
    font-family: "Verdana";
}
input[type=text], input[type=password], input[type=number], input[type=email], select {
  width: 30%;
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
  width: 8%;
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
label{
  font-size: 24px;
}
#form{
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px 400px;
  font-family: "Verdana";
  font-size: 16px;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  padding: 9px 24px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 8px 6px;
  transition-duration: 0.4s;
  cursor: pointer;
  border-radius:40px
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
a {
  text-decoration: none !important;
  color: black !important;
}
</style>
<body style="text-align:center;">


 <p><header class="jumbotron">
                    <p><h1>Hi ${patientName}</h1></p>
                    <h1>Please Enter Date To Confirm Appointment</h1>
    </header> </p>
<form  action="http://localhost:8083/patient/confirmbooking" method="post">
		<label for="doctorName"></label><br>
		<input type="hidden" name="doctorName"  value="${doctorName}" /> <br>
		
		<label for="dateTime">Enter Date :</label><br>
		  <input type="text" name="dateTime" /> <br>
		<input type="submit" value="Book" /> <br>
	
</form>

				   
<button class="button button1"><a href="/logout">Log out</a></button>

</body>
</html>