<html xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://thymeleaf.org">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
<div>

</div>
<div>
    <form th:method="POST" th:action="@{offer}" th:object="${credit}">
        <table>
            <tr>
                <th>1</th>
                <th>1</th>
                <th>1</th>
                <th>1</th>
                <th>1</th>
                <th>1</th>
                <th>1</th>
            </tr>
            <tr th:each="offer : ${offers}">
                <td th:text="${offer.getIdChek()}">id</td>
                <td th:text="${offer.getDate()}">date</td>
                <td th:text="${offer.getPayment()}">pay</td>
                <td th:text="${offer.getPercent()}">perc</td>
                <td th:text="${offer.getBodyCredit()}">body</td>
                <td th:text="${offer.getBalance()}">balance</td>
                <td th:text="${offer.getClientId()}">clientId</td>
                <td></td>
            </tr>
        </table>
        <input type="submit" value="try">
    </form>
</div>
>
</body>
</html>
