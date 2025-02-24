<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <meta charset="ISO-8859-1">
    <title>kfc colombo</title>
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
    		<a class="navbar-brand bg-white text-dark rounded px-4" href="Staff">Staff </a>
    		<a class="navbar-brand text-white" href="SearchStaff.jsp">search and update </a>
    		<a class="navbar-brand text-white" href="addStaff.jsp">Add </a>
  		</div>
	</nav>
	
    <br/>
    <br/>
    <div class="form-group px-4 mx-5 mb-4 ">
 	<div class=" p-5 mx-4 bg-light">
    
    <div class="container ">
        <table class="table table-stripped">
            <thead>
            <tr class="table-dark">
                <th>Staff ID</th>
                <th>Name</th>
                <th>Description</th>
                <th>Remove Staff</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="staff" items="${staffList}">
                <tr>
                    <td>${staff.staffId}</td>
                    <td>${staff.name}</td>
                    <td>${staff.description}</td>
                    <td>
                        <form method="post" action="staff">
                            <input type="hidden" name="staffId" value="${staff.staffId}"/>
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
