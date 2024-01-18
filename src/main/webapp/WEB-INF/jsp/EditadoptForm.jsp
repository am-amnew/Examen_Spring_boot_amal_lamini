<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Adoption</title>
    <!-- Add your stylesheets or any other necessary resources here -->
</head>
<body>
    <h2>Edit Adoption</h2>
    <form action="/adoptions/updateadoption" method="post">
        <!-- Include fields for adopterName and reasonForAdoption -->
        <input type="hidden" name="id" value="${adoption.id}" />
        <input type="text" name="adopterName" value="${adoption.adopterName}" required />
        <input type="text" name="reasonForAdoption" value="${adoption.reasonForAdoption}" required />
        <button type="submit">Save Changes</button>
    </form>
    <a href="/adoptions/adoptionlist">Back to Adoption List</a>
</body>
</html>
