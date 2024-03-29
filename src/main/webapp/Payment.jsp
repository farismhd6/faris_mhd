<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>KFC Colombo</title>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
  <style>
  .custom-box1 {
      background-image: url('img/doctor.jpg'); 
      background-size: cover;
      background-position: center;
      filter: brightness(1);
      border-radius: 5px;
    }
    
    .about-section {
      background-color: #f8f9fa;
      padding: 50px 0;
    }
    .about-heading {
      margin-bottom: 30px;
    }
    .icon {
      font-size: 48px;
      margin-bottom: 15px;
    }
  </style>
  </head>
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container">
    <img class="mx-2" style="border-radius:10%;width: 50px;height: 50px;" alt="Hospitel Logo" src="img/logo1.png">
    <a class="navbar-brand d-none d-lg-block" href="#">International Lab</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item active">
          <a class="nav-link text-dark mx-2 " href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark mx-2" href="#Services">Services</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark mx-2" href="#About">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link text-dark mx-2" href="#Contact">Contact</a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>


<div class="container-fluid">
    <nav class="navbar navbar-expand-lg navbar-light  mt-3 ">
  		<div class="container bg-dark py-1 rounded">
    		<a class="navbar-brand bg-white text-dark rounded px-4" href="Payment">Store </a>
    		<a class="navbar-brand text-white" href="SearchPayment.jsp">search and update </a>
    		<a class="navbar-brand text-white" href="AddPayment.jsp">Add </a>
  		</div>
	</nav>
	
    <br/>
    <br/>
    <div class="form-group px-4 mx-5 mb-4 ">
 	<div class=" p-5 mx-4 bg-light">
    
    <div class="container ">
        <table class="table table-striped">
            <thead>
                <tr class="bg-dark text-white">
                    <th>Payment ID</th>
                    <th>Patient ID</th>
                    <th>Amount [LKR]</th>
                    <th>Payment Date</th>
                    
                    <th>Card Number</th>
                    
                    <th>CVC Number</th>
                    <th>Remove from Store</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="payment" items="${paymentList}">
                    <tr>
                        <td>${payment.idPayment}</td>
                        <td>${payment.patientID}</td>
                        <td>${payment.amount}</td>
                        <td>${payment.paymentDate}</td>
                      
                        <td>${payment.cardNo}</td>
                      
                        <td>${payment.cvcNo}</td>
                        <td>
                            <form method="post" action="paymentController">
                                <input type="hidden" name="paymentId" value="${payment.idPayment}"/>
                                <input type="hidden" name="type" value="delete"/>
                                <button type="submit" class="btn btn-danger">Remove</button>
                            </form>
                           
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
</div>
</div>
<br/>
</body>
</html>
