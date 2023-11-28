<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="/css/result-light.css">
    <link rel="stylesheet" type="text/css" href="https://bootswatch.com/4/darkly/bootstrap.min.css">
    <script type="text/javascript" src="https://bootswatch.com/_vendor/jquery/dist/jquery.min.js"></script>
    <script type="text/javascript" src="https://bootswatch.com/_vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        .active{
            background-color:#444;
            border-radius: 5px;
        }
        .navbar-brand{
            font-size:x-large
        }
        #viewexp{
          padding: 10px;
        }
    </style>
    <title>View Expired</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <h3 class="navbar-brand">Pharmacy Store</h3>
        <div class="collapse navbar-collapse" id="navbarColor02">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link" href="/home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/add">Add Medicine</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/viewall">View All Medicines</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" href="/viewexp">View Expired Medicines</a>
            </li>
          </ul>
        </div>
      </nav>
      <div class="tab-pane fade show" id="viewexp">
        <h3>
          The Following Medicines Have Expired.
        </h3>
  <br>
        <table class="table table-hover">
          <thead>
            <tr class="table-danger">
              <td>Medicine Name</td>
              <td>Medicine Code</td>
              <td>Medicine Composition</td>
              <td>Manufacturer</td>
              <td>Price Per Unit(&#8377;)</td>
              <td>Quantity</td>
              <td>Date Of Manufacturing</td>
              <td>Date Of Expiry</td>
            </tr>
          </thead>
          <tbody>
            <c:forEach var="medicine" items="${expiredList}">
          
          <tr class="table-secondary">
              <td>${medicine.medicineName}</td>
              <td>${medicine.medicineCode}</td>
              <td>${medicine.medicineComposition}</td>
              <td>${medicine.manufacturer}</td>
              <td>${medicine.pricePerUnit}</td>
              <td>${medicine.quantity}</td>
              <td>${medicine.dateOfManufacturing}</td>
              <td>${medicine.dateOfExpiry}</td>
            </tr>
            
          </c:forEach>
          
          </tbody>
        </table>
      </div>
  
</body>
</html>