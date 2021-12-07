<!DOCTYPE html>
<html xmlns:th="http://thymeleaf.org">
<head>
    <title>Credits</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/bank/bank_credits.css">
</head>
<body>
<div id="workarea">
    <p id="head-text">Bank "..."</p>
    <div>
        <table class="table">
            <tr>
                <th>Credit Id</th>
                <th>Interest rate</th>
                <th>Credit Period</th>
                <th>Amount Credit</th>
                <th>Client Id</th>
                <th>Edit ref</th>
            </tr>
            <tr th:each="credit : ${credits}">
                <td th:text="${credit.getCreditId()}">credit id</td>
                <td th:text="${credit.getInterestRate()}">Interest rate</td>
                <td th:text="${credit.getCreditTerm()}">Credit Period</td>
                <td th:text="${credit.getAmountCredit()}">Amount Credit</td>
                <td th:text="${credit.getClientId()}">Client Id</td>
                <td><a th:href="@{/credits/{id}/edit(id=${credit.getClientId()})}">edit</a></td>
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
