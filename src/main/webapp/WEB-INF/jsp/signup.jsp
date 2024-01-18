<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ajouter Bird</title>
    <link rel="stylesheet" type="text/css" href="C2.css">
    <style>
        /* Add your existing CSS styles here */

        /* Style to separate label and input */
        .input-container {
            display: flex;
            flex-direction: column;
            margin-bottom: 10px; /* Adjust as needed */
        }

        .text-small-uppercase {
            margin-bottom: 5px; /* Adjust as needed */
        }

        .text-small-uppercase.custom-button {
            display: block;
            width: 150px; /* Set the width according to your design */
            margin: 0 auto; /* Center the link horizontally */
            height: 50px; /* Set the width according to your design */
            text-align: center; /* Center the text within the link */
            padding: 10px; /* Add padding for better aesthetics */
            text-decoration: none;
            background-color: #4CAF50; /* Add your desired background color */
            color: white; /* Set text color */
            border-radius: 5px; /* Add rounded corners if desired */
        }
    </style>
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
    </style>
</head>
<body>

<div class="logo-container">
    <img src="log.png" alt="Logo" class="logo">
</div>
<link href='https://fonts.googleapis.com/css?family=Montserrat:700' rel='stylesheet' type='text/css'>

<main>
    <figure>
        <picture>
            <img src="https://i.pinimg.com/564x/ae/a6/aa/aea6aa6454b2460f946835afb0fcc402.jpg"
                 alt="Citymap illustration"/>
        </picture>
    </figure>
    <div class="headline">
        <h2 class="text-headline">Register</h2>
        <h3 class="text-subheadline">Open your heart, click to start! Register now to give a fur-ever home and make tails wag with joy. Adopt, don't shop – because every paw deserves a loving hand to hold.</h3>
    </div>
    
            
              <form action="${pageContext.request.contextPath}/processregister" method="post">
         <span>
            <label for="birdName" class="text-small-uppercase" id="birdNameLabel">Email </label>
            <br><br>
                <input type="email" name="email" class="form-control" placeholder="email" />
               </span>

        <span>
            <label for="birdAge" class="text-small-uppercase" id="birdAgeLabel">Password </label>
            <br><br>
                                            <input type="password" name="password" class="form-control" placeholder="password" class="form-control"
                            required minlength="6" maxlength="10" />
                   </span>
<br><br>
        <span>
            <label for="birdAge" class="text-small-uppercase" id="birdAgeLabel">First Name </label>
            <br><br>
                
                    
                                            <input type="text" name="firstName" class="form-control" placeholder="firstName" class="form-control"
                            required minlength="2" maxlength="20"/>
                            
                  </span>

        <span>
            <label for="birdAge" class="text-small-uppercase" id="birdAgeLabel">Last Name</label>
            <br><br>
                
              
                    
                               <input type="text" name="lastName" class="form-control" placeholder="lastName" class="form-control"
                            required minlength="2" maxlength="20"/>
                                 </span>

            <div>
                <button type="submit"class="text-small-uppercase custom-button" >Sign Up</button>
            </div>
        </div>
        </form>
    </div>
</body>
</html>