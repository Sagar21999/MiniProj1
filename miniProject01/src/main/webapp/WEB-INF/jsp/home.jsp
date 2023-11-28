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
        #home{
            height: 520px;
            width: 75%;
            margin: auto;
            padding: 20px;
            background-image: url(https://images.unsplash.com/photo-1584174594005-60a49c828bbc?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzd8fG1lZGljaW5lfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80);
            background-repeat: no-repeat;  
        }
        .navbar{
            margin-bottom: 10px;
        }
    </style>
    <title>Home</title>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <h3 class="navbar-brand">Pharmacy Store</h3>
        <div class="collapse navbar-collapse" id="navbarColor02">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item">
              <a class="nav-link active" href="/home">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="/add">Add Medicine</a>
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
    <div class="tab-pane fade show" id="home">
        <p>This Application allows you to maintain a medicine database.</p>
        <p>You can do the following operations:</p>
        <ul>
          <li>Add Medicine Details.</li>
          <li>View All Medicines Added.</li>
          <li>View List Of Expired Medicines.</li>
        </ul>
      </div>
</body>
</html>