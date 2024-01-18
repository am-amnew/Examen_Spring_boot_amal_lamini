<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Ajouter HabbitHamster</title>
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
            <img src="https://i.pinimg.com/564x/c2/ad/5f/c2ad5fb462f35b0cdb7623c3d059d52b.jpg"
                 alt="Citymap illustration" />
        </picture>
    </figure>
    <div class="headline">
        <h2 class="text-headline">Ajouter Rabbit/Hamster</h2>
        <h3 class="text-subheadline">Opening hearts, one little paw at a time. Add a Rabbit/Hamster for adoption, and let the journey of joy and companionship begin.</h3>
    </div>

    <form action="${pageContext.request.contextPath}/savehabbithamster" method="post">

        <div class="input-container">
            <label for="name" class="text-small-uppercase">Nom </label>
            <br><br>
            <input type="hidden" name="id" value="${habbitHamster.id}" />
            <input type="text" name="name" class="form-control" placeholder="Ajouter le nom " />
        </div>

        <div class="input-container">
            <label for="age" class="text-small-uppercase">Age </label>
            <br><br>
            <input type="text" name="age" class="form-control" placeholder="Ajouter l'age " />
        </div>

        <div class="input-container">
            <label for="gender" class="text-small-uppercase">Genre </label>
            <br><br>
            <input type="text" name="gender" class="form-control" placeholder="Ajouter de Genre" />
        </div>

        <div class="input-container">
            <label for="description" class="text-small-uppercase">Description </label>
            <br><br>
            <input type="text" name="description" class="form-control" placeholder="Ajouter une Description" />
        </div>

        <div class="input-container">
            <label for="images" class="text-small-uppercase">Image </label>
            <br><br>
            <input type="text" name="images" class="form-control" placeholder="Ajouter lien d'une Image" />
        </div>

        <br>

        <button class="text-small-uppercase custom-button" type="submit">Save HabbitHamster</button>

    </form>

</main>

</body>
</html>
