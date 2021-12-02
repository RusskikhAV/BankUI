<html xmlns:th="http://thymeleaf.org">
<head>
    <meta charset="utf-8">
    <h2>All Clients</h2>
</head>
<body>

<div th:each="client : ${clients}">
    <a th:href="@{/clients/{id}(id=${client.getId()})}"
       th:text="${client.getName() + ', ' + client.getSurname() + ', '+ client.getSecondName() + ', ' + client.getTelephoneNumber() + ', ' + client.getEMail() + ', ' + client.getPassportNumber()}">client</a>
</div>

<br/>
<hr/>

<a href="/clients/new">Create new clients</a>
<a href="/clients/check">check</a>
</body>
</html>
