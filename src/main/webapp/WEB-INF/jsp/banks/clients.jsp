<html xmlns:th="http://thymeleaf.org">
<head>
    <title>Title</title>
</head>
<body>

<div th:each="client : ${clients}">
    <a th:href="@{/clients/{id}(id=${client.getClientId()})}"
       th:text="${client.getName() + ', ' + client.getSurname() + ', '+ client.getSecondName() + ', ' + client.getTelephoneNumber() + ', ' + client.getEMail() + ', ' + client.getPassportNumber()}">client</a>
</div>

</body>
</html>
