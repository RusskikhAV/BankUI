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
            <th>Credit id</th>
            <th>Interest Rate</th>
            <th>Credit Term</th>
        </tr>
        <tr th:each="credit : ${credits}">
            <td th:text="${credit.getCreditId()}">id</td>
            <td th:text="${credit.getInterestRate()}">Interest Rate</td>
            <td th:text="${credit.getCreditTerm()}">Credit Term</td>
        </tr>
    </table>
</div>
</body>
</html>