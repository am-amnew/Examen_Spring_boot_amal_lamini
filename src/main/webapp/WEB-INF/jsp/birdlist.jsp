<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Bird" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="style.css">
    <title>Liste des oiseaux</title>
    <style>
        .logo-container {
            position: fixed;
            top: 10px; /* Adjust the top position as needed */
            left: 10px; /* Adjust the left position as needed */
            z-index: 1000; /* Ensure the logo appears above other content */
        }

        .logo {
            width: 100px; /* Adjust the width as needed */
            height: auto;
        }

        .text-small-uppercase.custom-button {
            display: block;
            width: 150px; /* Set the width according to your design */
            margin: 0 auto; /* Center the link horizontally */
            height: 30px; /* Set the width according to your design */
            text-align: center; /* Center the text within the link */
            padding: 10px; /* Add padding for better aesthetics */
            text-decoration: none;
            background-color: #4CAF50; /* Add your desired background color */
            color: white; /* Set text color */
            border-radius: 5px; /* Add rounded corners if desired */
        }

        .custom-button {
            background: #f37b56;
            bottom: 2.75rem;
            right: 2.55rem;
            height: 2.75rem;
            padding: 0 3rem;
            position: absolute;
        }

        .custom-button:hover,
        .custom-button:focus {
            background: #f79577;
            outline: none;
        }

        .style3 {
            display: inline-block;
            text-decoration: none;
            font-family: Tahoma, Geneva, sans-serif;
            background-color: #be4848;
            padding: 15px 25px 15px 25px;
            color: #ffffff;
            font-weight: bold;
            font-size: 12px;
        }

        .style3:hover {
            background-color: #4871be;
            transition: all 0.5s linear;
        }
    </style>
       <link rel="stylesheet" href="show2.css" />
	    
	          <nav style="background-color:white;">
                <ul>
                    
                </ul>
        
                <ul>
                    <li>
                        <a style="color:black;font-weight: bold;" href="/catlist" class="link"> Cats</a>
                        
                    </li>
        
                    <li>
                        <a style="color:black;font-weight: bold;" href="/doglist" class="link"> Dogs </a>
                    </li>
        
                    <li>
                        <a style="color:black;font-weight: bold;" href="/habbithamsterlist" class="link"> Rabbits/Hamsters </a>
                    </li>
                    <li>
                        <a  style="color:black;font-weight: bold;" href="/birdlist" class="link"> Birds</a>
                    </li>
                   
          <li>
                        <a style="color:black;font-weight: bold;" href="/adoptions/adoptionlist" class="link"> All the adopted animals  </a>
                    </li>
                   
                    <li>       
            
               </nav>
</head>
<body>
<div class="logo-container">
    <img src="log.png" alt="Logo" class="logo">
</div>
<div class="container">
    <table>
        <thead>
        <th scope="row">Bird ID</th>
        <th scope="row">Name</th>
        <th scope="row">Age</th>
        <th scope="row">Color</th>
                <th scope="row">Species</th>
                                        <th scope="row">Description</th>
        
        <th scope="row">Image</th>
        <th scope="row">Edit</th>
        <th scope="row">Delete</th>
        </thead>
        <tbody>
        <% List<Bird> birdList = (List<Bird>)request.getAttribute("birdList");
        for (int c=0; c<birdList.size(); c++){ %>
        <tr>
            <td><%= birdList.get(c).getId() %></td>
            <td><%= birdList.get(c).getName() %></td>
            <td><%= birdList.get(c).getAge() %></td>
            <td><%= birdList.get(c).getColor() %></td>
                 <td><%= birdList.get(c).getSpecies() %></td>
            <td><%= birdList.get(c).getDescription() %></td>
            <td><img style="max-width: 100px; max-height: 100px;" src="<%= birdList.get(c).getImages() %>" /></td>
            <td><a class="style3" style="background-color:blue;" href="/editbird/<%= birdList.get(c).getId() %>">Edit</a></td>
            <td><a class="style3" style="background-color:red;" href="#" onclick="confirmDelete('<%= birdList.get(c).getId() %>')">Delete</a></td>
        </tr>
        <% } %>
        </tbody>
    </table>
        <a class="text-small-uppercase custom-button" href="/newbird" role="button">Add new one </a>
</div>

<script>
    function confirmDelete(birdId) {
        var confirmDelete = confirm("Are you sure you want to delete this bird?");
        if (confirmDelete) {
            window.location.href = "/deletebird/" + birdId;
        }
    }
</script>
</body>
</html>
