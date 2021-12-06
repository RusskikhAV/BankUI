<html xmlns:th="http://thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/bank/bank_clients.css">
</head>
<body>
<div id="workarea">
    <p id="head-text">Bank "..."</p>
    <div>
        <table class="table">
            <tr>
                <th>ID</th>
                <th>Client</th>
            </tr>
            <tr th:each="client : ${clients}">
                <td th:text="${client.getClientId()}">id</td>
                <td><a th:href="@{/clients/{id}(id=${client.getClientId()})}"
                       th:text="${client.getSurname() + ' ' + client.getName() + ' ' +  client.getSecondName()}">client</a>
                </td>
            </tr>
        </table>
    </div>
</div>

</body>
</html>
