<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="ISO-8859-1">
    <title>Welcome to CodeJava Home</title>
    <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container text-center">
       
        <h3><a href="/users">List of Users</a></h3>
        <h3><a href="/register">Register</a></h3>
        <h3><a href="/login">Login</a></h3>
       <h3 th:if="${username != null}" th:text="'Welcome, ' + ${username}"></h3>
       
    </div>
             <img src="/sds.jpg" alt="image of butterfly, graphic purpose only" />
     
</body>
</html>