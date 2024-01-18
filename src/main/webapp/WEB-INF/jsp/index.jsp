<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.demo.model.Etudiant" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootswatch/4.5.2/cosmo/bootstrap.min.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Etudiant List</title>
</head>
<body>
    <div class="container">
        <table class="table table-striped">
            <thead class="thead-dark">
                <th scope="row">Etudiant ID</th>
                <th scope="row">Nom</th>
                <th scope="row">Age</th>
                <th scope="row">Edit</th>
                <th scope="row">Delete</th>
            </thead>
            <tbody>
                <% List<Etudiant> listEtudiant = (List<Etudiant>)request.getAttribute("listetudiant");
                for (int c=0; c<listEtudiant.size(); c++){ %>
                    <tr>
                        <td><%= listEtudiant.get(c).getId() %></td>
                        <td><%= listEtudiant.get(c).getNom() %></td>
                        <td><%= listEtudiant.get(c).getAge() %></td>
                        <td><a href="/edit/<%= listEtudiant.get(c).getId() %>">Edit</a></td>
                        <td><a href="#" onclick="confirmDelete('<%= listEtudiant.get(c).getId() %>')">Delete</a></td>
                    </tr>
                <% } %>
            </tbody>
        </table>
        <a class="btn btn-success" href="/new" role="button">Add New Etudiant</a>
    </div>

    <script>
        function confirmDelete(etudiantId) {
            var confirmDelete = confirm("Are you sure you want to delete this student?");
            if (confirmDelete) {
                window.location.href = "/delete/" + etudiantId;
            }
        }
    </script>
</body>
</html>
