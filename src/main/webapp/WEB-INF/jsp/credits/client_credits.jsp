<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://thymeleaf.org">
<head>
    <title>Credits client</title>
    <link rel="stylesheet" type="text/css" href="/resources/css/main.css">
    <link rel="stylesheet" type="text/css" href="/resources/css/clients/client_credits_style.css">
</head>
<body>
<div id="workarea">
    <p id="head-text">Bank "..."</p>
    <table class="table">
        <tr>
            <th>Credit id</th>
            <th>Interest Rate</th>
            <th>Amount Credit</th>
            <th>Credit Term</th>
        </tr>
        <tr th:each="credit : ${credits}">
            <td th:text="${credit.getCreditId()}">id</td>
            <td th:text="${credit.getInterestRate()}">Interest Rate</td>
            <td th:text="${credit.getAmountCredit()}">Amount Credit</td>
            <td th:text="${credit.getCreditTerm()}">Credit Term</td>
        </tr>
    </table>
</div>
</body>
</html>