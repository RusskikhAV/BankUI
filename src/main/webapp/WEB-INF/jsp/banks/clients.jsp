<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://thymeleaf.org">
<head>
    <title>All clients</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/bank/bankClients.css">
</head>
<body>


<div id="workarea">
    <p id="head-text">Bank "..."</p>

    <table class="table">
        <tr>
            <th>Client ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Second Name</th>
            <th>Telephone Number</th>
            <th>E-mail</th>
            <th>Passport Number</th>
        </tr>
        <tr th:each="client : ${clients}">
            <td th:text="${client.getClientId()}">id</td>
            <td th:text="${client.getName()}">name</td>
            <td th:text="${client.getSurname()}">sureName</td>
            <td th:text="${client.secondName}">secondName</td>
            <td th:text="${client.getTelephoneNumber()}">telephoneNumber</td>
            <td th:text="${client.getEMail()}">eMail</td>
            <td th:text="${client.getPassportNumber()}">passportNumber</td>
        </tr>

    </table>

    <div>
        <div th:each="client : ${clients}">
        <a th:href="@{/clients/{id}(id=${client.getClientId()})}"
         th:text="${client.getName() + ', ' + client.getSurname() + ', '+ client.getSecondName() + ', ' + client.getTelephoneNumber() + ', ' + client.getEMail() + ', ' + client.getPassportNumber()}">client</a>
        </div>
    </div>
</div>

</body>
</html>
