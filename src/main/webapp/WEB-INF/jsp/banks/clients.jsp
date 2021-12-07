<html xmlns:th="http://thymeleaf.org">
<head>
    <title>Clients</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
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

    <div class="position">
        <div class="site_button">
            <div class="svg-wrapper">
                <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                    <rect id="shape" height="40" width="150"/>
                    <div id="text">
                        <a href="/banks"><span class="spot"></span>Previous</a>
                    </div>
                </svg>
            </div>

            <div class="svg-wrapper">
                <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                    <rect id="shape" height="40" width="150"/>
                    <div id="text">
                        <a href="/"><span class="spot"></span>Home</a>
                    </div>
                </svg>
            </div>
        </div>
    </div>
</div>

</body>
</html>
