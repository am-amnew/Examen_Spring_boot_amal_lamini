<!-- new.jsp -->
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create New Etudiant</title>
    <!-- Your CSS and JS imports go here -->
</head>
<body>
    <div align="center">
        <h1>Create New Etudiant</h1>
        <div class="col-sm-4">
            <form action="${pageContext.request.contextPath}/save" method="post">
                <div align="left">
                    <tr>
                        <label class="form-label">Nom</label>
                        <td>
                            <input type="hidden" name="id" value="${etudiant.id}" />
                            <input type="text" name="nom" class="form-control" placeholder="Nom" />
                        </td>
                    </tr>
                </div>
                <div align="left">
                    <tr>
                        <label class="form-label">Age</label>
                        <td><input type="text" name="age" class="form-control" placeholder="Age" /></td>
                    </tr>
                </div>
                <br>
                <tr>
                    <td colspan="2"><button type="submit" class="btn btn-info">Save</button> </td>
                </tr>
            </form>
        </div>
    </div>
</body>
</html>
