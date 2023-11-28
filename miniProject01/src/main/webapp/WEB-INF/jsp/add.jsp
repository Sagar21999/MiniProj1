<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    
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
        form{
            width: 65%;
            margin: auto;
            padding-top: 20px;
            padding-bottom: 20px;
        }
        .error{
        color:red;
        }
    </style>
    <title>Add Medicine</title>
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
              <a class="nav-link active" href="/add">Add Medicine</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/viewall">View All Medicines</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/viewexp">View Expired Medicines</a>
            </li>
          </ul>
        </div>
      </nav>
      <div class="tab-pane fade show" id="add">
        
        <form:form method="post" action="/addMedicine" modelAttribute="medicine">
          <fieldset>
            <legend>
              Enter Medicine Details.
            </legend>
            <div class="form-group">
              <label class="col-form-label" for="medicineName">Medicine Name: </label>
              <form:input type="text" path="medicineName" class="form-control" placeholder="Medicine Name" id="medicineName" />
              <form:errors class="error" path="medicineName"/>
            </div>
            <div class="form-group">
              <label class="col-form-label" for="medicineCode">Medicine Code:</label>
              <form:input type="text" path="medicineCode" class="form-control" placeholder="Medicine Code" id="medicineCode" />
              <form:errors class="error" path="medicineCode"/>
            </div>
            <div class="form-group">
              <label for="medicineComposition">Medicine Composition:</label>
              <form:textarea class="form-control" path="medicineComposition" id="medicineComposition" rows="5" placeholder="Medicine Composition"></form:textarea>
              <form:errors class="error" path="medicineComposition"/>
            </div>
            <div class="form-group">
              <label class="col-form-label" for="manufacturer">Manufacturer:</label>
              <form:input type="text" path="manufacturer" class="form-control" placeholder="Manufacturer" id="manufacturer" />
              <form:errors class="error" path="manufacturer"/>
            </div>
            <div class="form-group">
              <label class="col-form-label" for="pricePerUnit">Price Per Unit(&#8377;):</label>
              <form:input type="number" path="pricePerUnit" class="form-control" placeholder="Price Per Unit(&#8377;)" id="pricePerUnit" />
              <form:errors class="error" path="pricePerUnit"/>
            </div>
            <div class="form-group">
              <label class="col-form-label" for="quantity">Quantity:</label>
              <form:input type="number" path="quantity" class="form-control" placeholder="Quantity" id="quantity" />
              <form:errors class="error" path="quantity"/>
            </div>
            <div class="form-group">
              <label class="col-form-label" for="dateOfManufacturing">Date Of Manufacturing:</label>
              <form:input type="date" path="dateOfManufacturing" class="form-control" placeholder="Date Of Manufacturing" id="dateOfManufacturing" />
              <form:errors class="error" path="dateOfManufacturing"/>
            </div>
            <div class="form-group">
              <label class="col-form-label" for="dateOfExpiry">Date Of Expiry:</label>
              <form:input type="date" path="dateOfExpiry" class="form-control" placeholder="Date Of Expiry" id="dateOfExpiry" />
              <form:errors class="error" path="dateOfExpiry"/>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-primary">Reset</button>
          </fieldset>
        </form:form>
      </div>
</body>
</html>