<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://thymeleaf.org">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div>
    <div>
        <table>
            <tr>
                <th>id</th>
                <th>Date</th>
                <th>Payment</th>
                <th>Percent</th>
                <th>Body Credit</th>
                <th>Balance</th>
                <th>Client Id</th>
            </tr>
            <tr th:each="offer : ${offers}">
                <td th:text="${offer.getIdChek()}">id</td>
                <td th:text="${offer.getDate()}">date</td>
                <td th:text="${offer.getPayment()}">pay</td>
                <td th:text="${offer.getPercent()}">perc</td>
                <td th:text="${offer.getBodyCredit()}">body</td>
                <td th:text="${offer.getBalance()}">balance</td>
                <td th:text="${offer.getClientId()}">clientId</td>
            </tr>
        </table>
    </div>
    <div class="svg-wrapper">
        <svg height="40" width="150" xmlns="http://www.w3.org/2000/svg">
            <rect id="shape" height="40" width="150"/>
            <div id="text">
                <a th:href=""><span class="spot"></span>Graph</a>
            </div>
        </svg>
    </div>
</div>

</body>
</html>
