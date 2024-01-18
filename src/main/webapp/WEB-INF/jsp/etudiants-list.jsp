<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title>Etudiants List</title>
</head>
<body>
    <h2>Etudiants List</h2>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Age</th>
            </tr>
        </thead>
        <tbody>
            <tr th:each="etudiant : ${etudiants}">
                <td th:text="${etudiant.id}"></td>
                <td th:text="${etudiant.nom}"></td>
                <td th:text="${etudiant.age}"></td>
            </tr>
        </tbody>
    </table>
</body>
</html>
