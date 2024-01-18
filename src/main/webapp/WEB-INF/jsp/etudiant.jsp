<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Etudiant Page</title>
</head>
<body>
    <h2>Add Etudiant</h2>
    <form th:action="@{/etudiants/add}" th:object="${etudiant}" method="post">
        <label for="nom">Nom:</label>
        <input type="text" id="nom" th:field="*{nom}" required>
        <span th:if="${fields.hasErrors('nom')}" th:errors="*{nom}"></span>
        
        <label for="age">Age:</label>
        <input type="number" id="age" th:field="*{age}" required>
        <span th:if="${fields.hasErrors('age')}" th:errors="*{age}"></span>
        
        <button type="submit">Add Etudiant</button>
    </form>
</body>
</html>
