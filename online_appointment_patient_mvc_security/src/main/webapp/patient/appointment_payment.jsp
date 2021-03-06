<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align:center;">

    

<h1>Appointment List</h1>
	<table border="2" width="70%" cellpadding="2" align="center">
	<tr><th>BookId</th><th>DoctorName</th><th>PatientName</th><th>Payment</th><th>Status</th><th>DateTime</th></tr>
    <c:forEach var="appointment" items="${appoList}"> 
    <tr>
    <td>${appointment.bookId}</td>
    <td>${appointment.doctorName}</td>
    <td>${appointment.patientName}</td>
    <td>${appointment.payment}</td>
    <td>${appointment.status}</td>
    <td>${appointment.dateTime}</td>
    <td><a href="/payment/${appointment.bookId}/conf">Payment</a></td>
   
    </tr>
    </c:forEach>
    </table>
    <br/>
	<a href="/logout">Log out</a>
</body>
</html>