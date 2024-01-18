<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.User" %>
    <meta charset="ISO-8859-1">
    <title>List Users</title>
    <link rel="stylesheet" type="text/css" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <script type="text/javascript" src="/webjars/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container text-center">
   <div>
    <!-- Your user dashboard content -->

    <a href="/logout" class="btn btn-danger">Logout</a>
</div>
    <div>
        <h1>List of Users</h1>
    </div>
     
    <div>
        <table class="table table-striped table-bordered">
            <thead class="thead-dark">
                <tr>
                    <th>User ID</th>
                    <th>E-mail</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                </tr>
            </thead>
            <tbody>
            
              <% List<User> listUsers = (List<User>)request.getAttribute("listusers");
            
                for (int c=0; c<listUsers.size(); c++){ %>
                
                    <td><%= listUsers.get(c).getId() %></td>
                    <td><%= listUsers.get(c).getEmail() %></td>
                    <td><%= listUsers.get(c).getFirstName() %></td>
                    <td><%= listUsers.get(c).getLastName() %></td>
                    
                </tr> <% } %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>