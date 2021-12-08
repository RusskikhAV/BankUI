<!DOCTYPE html>
<html xmlns:th="http://thymeleaf.org"
      xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Credit info</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/table_style.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/client_text.css">
</head>
<body>
<div>
    <p id="head-text">Bank "..."</p>
    <div>
        <p>Credit #<a th:text="${credit.getCreditId()}">v</a></p>
        <form th:method="DELETE" th:action="@{/credits/{id}(id=${credit.getCreditId()})}">
            <input type="submit" value="Delete">
        </form>
        <table class="table">
            <tr>
                <th>Interest Rate</th>
                <td th:text="${credit.creditTerm}"></td>
            </tr>
            <tr>
                <th>Credit Term</th>
                <td th:text="${credit.creditTerm}"></td>
            </tr>
            <tr>
                <th>Amount Credit</th>
                <td th:text="${credit.amountCredit}"></td>
            </tr>
            <tr>
                <th>Client Id</th>
                <td th:text="${credit.clientId}"></td>
            </tr>
        </table>
    </div>
    <div>
        <div>
            <div class="svg-wrapper">
                <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                    <rect id="shape" height="40" width="150"/>
                    <div id="text">
                        <a th:href="@{/credits/{id}/edit(id=${credit.getCreditId()})}"><span class="spot"></span>Edit
                            credit</a>
                    </div>
                </svg>
            </div>

            <div class="svg-wrapper">
                <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                    <rect id="shape" height="40" width="150"/>
                    <div id="text">
                        <a href="@{/offer/{id}(id=${credit.getClientId()})}"><span class="spot"></span>Credit
                            Schedule</a>
                    </div>
                </svg>
            </div>
        </div>
        <div class="position">
            <div class="site_button">
                <div class="svg-wrapper">
                    <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
                        <rect id="shape" height="40" width="150"/>
                        <div id="text">
                            <a href="/banks/clients"><span class="spot"></span>Previous</a>
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

</div>

</body>
</html>