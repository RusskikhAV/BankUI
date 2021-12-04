<html xmlns:th="http://thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <h2>client</h2>
</head>
<body>
<p th:text="${client.getClientId()}">value</p>
<p th:text="${client.getName()}">value</p>
<p th:text="${client.getSurname()}">value</p>
<p th:text="${client.getSecondName()}">value</p>
<p th:text="${client.getTelephoneNumber()}">value</p>
<p th:text="${client.getEMail()}">value</p>
<p th:text="${client.getPassportNumber()}">value</p>


<a th:href="@{/clients/{id}/edit(id=${client.getClientId()})}">Edit</a>
<br/>
<form th:method="DELETE" th:action ="@{/clients/{id}(id=${client.getClientId()})}">
    <input type="submit" value="Delete">
</form>
</body>
</html>
