<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
        .alert{
            padding: 20px;
            margin: 20px;
        }
        .navbar{
            margin-bottom: 10px;
        }
    </style>
    <title>Add Failure</title>
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
    <div class="alert alert-dismissible alert-danger">
        <strong>Medicine Details Could not be saved as it already exists!</strong> .
      </div>
</body>
</html>