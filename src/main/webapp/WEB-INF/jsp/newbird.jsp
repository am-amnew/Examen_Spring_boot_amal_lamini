<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
 
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ajouter Bird</title>
    <link rel="stylesheet" type="text/css" href="/C2.css">
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
            height: 30px; /* Set the width according to your design */
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
    <img src="/log.png" alt="Logo" class="logo">
</div>
<link href='https://fonts.googleapis.com/css?family=Montserrat:700' rel='stylesheet' type='text/css'>

<main>
    <figure>
        <picture>
            <img src="https://i.pinimg.com/564x/9c/42/56/9c42563cd4d86a1aa0600b41070a51cd.jpg"
                 alt="Citymap illustration"/>
        </picture>
    </figure>
    <div class="headline">
        <h2 class="text-headline">Ajouter Bird</h2>
        <h3 class="text-subheadline">Opening wings, one tweet at a time. Add a bird for admiration, and let the journey of birdwatching begin.</h3>
    </div>

    <form action="${pageContext.request.contextPath}/savebird" method="post">

        <span>
            <label for="birdName" class="text-small-uppercase" id="birdNameLabel">Nom </label>
            <br><br>
            <input type="hidden" name="id" value="${bird.id}" />
            <input type="text" name="name" class="form-control" placeholder="Ajouter le nom " />
        </span>

        <span>
            <label for="birdAge" class="text-small-uppercase" id="birdAgeLabel">Age </label>
            <br><br>
            <input type="text" name="age" class="form-control" placeholder="Ajouter l'age " />
        </span>

        <span>
            <label for="birdColor" class="text-small-uppercase" id="birdColorLabel">Couleur </label>
            <br><br>
            <input type="text" name="color" class="form-control" placeholder="Ajouter la couleur" />
        </span>

        <span>
            <label for="birdDescription" class="text-small-uppercase" id="birdDescriptionLabel">Description </label>
            <br><br>
            <input type="text" name="description" class="form-control" placeholder="Ajouter une Description" />
        </span>

        <span>
            <label for="birdImage" class="text-small-uppercase" id="birdImageLabel">Image </label>
            <br><br>
            <input type="text" name="images" class="form-control" placeholder="Ajouter lien d'une Image" />
        </span>

        <br>

        <button class="text-small-uppercase custom-button" type="submit" class="btn btn-info">Save</button>

    </form>

</main>

</body>
</html>
